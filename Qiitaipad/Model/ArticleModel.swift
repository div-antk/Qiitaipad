//
//  ArticleModel.swift
//  Qiitaipad
//
//  Created by Takuya Ando on 2021/02/14.
//

import Foundation
import Alamofire
import Combine

struct ArticleModel: Codable {
    let title: String
    let created_at: String
    let url: String
}
