//
//  TapGestureView.swift
//  GestureStudy
//
//  Created by 최준혁 on 2023/07/12.
//

import SwiftUI

struct TapGestureView: View {
    @State var count = 0
    var body: some View {
        Text("Tap Me : \(count)")
            .font(.largeTitle)
            .foregroundColor(.blue)
            .frame(maxWidth: .infinity)
            .padding()
            .onTapGesture {
                count += 1
            }
//            .gesture(
//                TapGesture()
//                    .onEnded {
//                        count += 1
//                    }
//            )
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
