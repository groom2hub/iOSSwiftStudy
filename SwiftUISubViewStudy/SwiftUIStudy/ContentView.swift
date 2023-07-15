//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by 최준혁 on 2023/07/11.
//

import SwiftUI

struct ContentView: View {
    var names = ["hello", "world", "hello1", "world1", "hello2", "world2", "hello3", "world3", "hello4", "world4", "hello5", "world5", "hello6", "world6", "hello7", "world7"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(names, id: \.self){ row in
                    NavigationLink {
                        DetailView(item: row)
                    } label: {
                        HStack {
                            Image(systemName:
                                    "pencil.tip.crop.circle.badge.forward")
                            Text(row)
                        }
                    }
                }.navigationTitle("Worlds")
            }
            .background(
                LinearGradient(colors: [.white, .cyan, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
