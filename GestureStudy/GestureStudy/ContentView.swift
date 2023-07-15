//
//  ContentView.swift
//  GestureStudy
//
//  Created by 최준혁 on 2023/07/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    TapGestureView()
                } label: {
                    Text("Tap")
                }
                NavigationLink {
                    DragGestureView()
                } label: {
                    Text("Drag")
                }
                NavigationLink {
                    RotationGestureView()
                } label: {
                    Text("Rotation")
                }
                NavigationLink {
                    ScaleGestureView()
                } label: {
                    Text("Scale")
                }
                NavigationLink {
                    ShapeGestureView()
                } label: {
                    Text("Shape")
                }
                NavigationLink {
                    AnimationView()
                } label: {
                    Text("Animation")
                }
            }
            .navigationTitle("Gestures Test")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
