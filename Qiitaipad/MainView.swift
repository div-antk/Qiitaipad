//
//  MainView.swift
//  Qiitaipad
//
//  Created by Takuya Ando on 2021/02/17.
//

import SwiftUI

struct MainView: View {
    
    @State var articles: [String] = ["🤔", "😨", "😉", "🤔", "😨", "😉"]
    @State var SearchText = ""
    
    var body: some View {
        
        VStack {
            ZStack(alignment: .trailing) {
            Color.green
                .frame(height: 80)
            TextField("検索", text: $SearchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 400)
            }
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

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
