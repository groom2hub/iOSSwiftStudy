//
//  AnimationView.swift
//  GestureStudy
//
//  Created by 최준혁 on 2023/07/12.
//

import SwiftUI

struct AnimationView: View {
    @State var spinning = false
    @State var angle: Angle
    var body: some View {
        VStack {
            Image(systemName: "arrow.clockwise.circle")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.purple)
                .rotationEffect(.degrees(spinning ? 360 : 0))
                .animation(
                    .linear(duration: 1.0)
                    .repeatForever(autoreverses: false),
                    value: spinning ? 360 : 0
                )
            Toggle(isOn: $spinning) {
                Text("Spins")
                    .font(.title)
            }
            .frame(width: 200)
        }
        .onAppear() {
            angle = .degrees(360)
        }
        .navigationTitle("Animation")
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnimationView()
        }
    }
}
