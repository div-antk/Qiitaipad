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

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    
    // 記事を入れる配列
    var articles = [ArticleModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

