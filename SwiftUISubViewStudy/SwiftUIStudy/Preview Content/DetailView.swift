//
//  DetailView.swift
//  SwiftUIStudy
//
//  Created by 최준혁 on 2023/07/11.
//

import SwiftUI

struct DetailView: View {
    var item: String
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 100, height: 100)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
        }
        .navigationTitle(item+" Detail")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: "Test")
    }
}
