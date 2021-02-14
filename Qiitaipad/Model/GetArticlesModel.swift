//
//  GetArticlesModel.swift
//  Qiitaipad
//
//  Created by Takuya Ando on 2021/02/14.
//

import Foundation
import Alamofire

final class GetArticlesModel {
    
    var articles = [ArticleModel]()
    
    func getArticles(keyword: String)  {
        
        let keywordEncode = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        let url = "https://qiita.com/api/v2/items?query=\(keywordEncode!)+tag:Swift"
        
        AF.request(url,
                   method: .get,
                   parameters: nil,
                   encoding: JSONEncoding.default,
                   headers: nil)
            .responseJSON { (response) in
                
                let decoder: JSONDecoder = JSONDecoder()
                do {
                    let articles: [ArticleModel] = try
                        decoder.decode([ArticleModel].self, from: response.data!)
                    self.articles = articles
//                    self.
                    
                } catch {
                    print("error")
                }
            }
    }
}
