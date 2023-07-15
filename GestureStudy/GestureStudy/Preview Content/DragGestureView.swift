//
//  DragGestureView.swift
//  GestureStudy
//
//  Created by 최준혁 on 2023/07/12.
//

import SwiftUI

func + (a: CGSize, b: CGSize) -> CGSize {
    return CGSize(width: a.width + b.width, height: a.height + b.height)
}

struct DragGestureView: View {
    @State var globePosition = CGSize.zero
    @State var globeFinal = CGSize.zero
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .scaleEffect(3.0)
                .offset(globeFinal + globePosition)
                .foregroundColor(.blue)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            globePosition = value.translation
                            print("Dragging")
                        }
                        .onEnded { value in
                            globeFinal = globeFinal + globePosition
                            globePosition = .zero
                        }
                )
        }
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DragGestureView()
        }
    }
}
