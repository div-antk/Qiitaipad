//
//  MainView.swift
//  Qiitaipad
//
//  Created by Takuya Ando on 2021/02/17.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var vm:ArticleViewModel = ArticleViewModel()
    
    @State var articles: [String] = ["🤔", "😨", "😉", "🤔", "😨", "😉"]
    @State var keyword = ""
    
    var body: some View {
        
        VStack(spacing: 0) {
            ZStack {
                Color.green
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 0) {
                    
                    HStack {
                        Spacer().frame(width:200)
                        TextField("検索", text: $vm.keyword)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 400, height:120)
                    }
                    VStack {
                        List {
                            ForEach(articles, id: \.self) {
                                article in
                                HStack {
                                    Text(article)
                                        .padding(.all)
                                    Spacer()
                                }
                            }
                            .frame(height: 80)
                            .listRowBackground(Color.white)
                        }
                    }
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
