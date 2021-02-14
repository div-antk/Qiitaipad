//
//  ViewController.swift
//  Qiitaipad
//
//  Created by Takuya Ando on 2021/02/13.
//

import UIKit
import Alamofire
import RxCocoa
import RxSwift

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    
    // 記事を入れる配列
//    var articles = [ArticleModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GetArticlesModel.getArticles()
    }

    // セルの数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    // セルの構築
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 遷移
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for indexPath)
//        let article = articles[indexPath.row]
        
        // タイトルをセルに反映
        
    }
}

