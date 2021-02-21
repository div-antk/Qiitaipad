//
//  ArticleViewModel.swift
//  Qiitaipad
//
//  Created by Takuya Ando on 2021/02/15.
//

import Combine
import UIKit
import Alamofire

class ArticleViewModel: ObservableObject {
    
    // Input
    @Published var keyword: String = ""
    
    
    func encode(keyword: String) -> Any {
        
        let encoded = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        return encoded!
    }
}
