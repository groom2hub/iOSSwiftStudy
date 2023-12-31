//
//  ShapeView.swift
//  GestureStudy
//
//  Created by 최준혁 on 2023/07/12.
//

import SwiftUI

struct ShapeGestureView: View {
    var body: some View {
        VStack {
            Color.red
                .frame(width: 200, height: 50)
            Rectangle()
                .stroke(lineWidth: 20)
                .fill(
                    LinearGradient (colors: [.red, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(height: 50)
                .cornerRadius(5)
                .padding()
            RoundedRectangle(cornerRadius: 50)
                .stroke(lineWidth: 10)
                .frame(height: 50)
                .padding()
            Capsule()
                .stroke(lineWidth: 20)
                .fill(
                    RadialGradient(
                        colors: [.yellow, .red],
                        center: .center,
                        startRadius: 0,
                        endRadius: 200
                    )
                )
                .frame(height: 30)
            .padding()
            Circle()
                .frame(width: 100, height: 50)
            Ellipse()
                .frame(width: 100, height: 50)
            GeometryReader { gr in
                Path { g in
                    let rect = CGRect(origin: .zero, size: gr.size)
                    g.move(to: CGPoint(x: rect.size.width/2, y: 0))
                    g.addQuadCurve(
                        to: CGPoint(x: rect.width/2, y: rect.height),
                        control: CGPoint(x: rect.width, y: rect.height)
                    )
                    g.addQuadCurve(
                        to: CGPoint(x: rect.size.width/2, y: 0),
                        control: CGPoint(x: 0, y: rect.height)
                    )
                }
                .fill(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [Color.white, Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom
                    )
                )
            }
            .frame(width: 80, height: 100)
                       Path { g in
                           g.move(to: CGPoint(x: 50, y: 50))
                           g.addLine(to: CGPoint(x: 100, y: 200))
                           g.addLine(to: CGPoint(x: 200, y: 100))
                           g.addLine(to: CGPoint(x: 150, y: 50))
                       }
                       .stroke(style: StrokeStyle(
                           lineWidth: 30,
                           lineCap: .butt,
                           lineJoin: .bevel
                       ))
            
        }
        .navigationTitle("Shapes")
    }
}

struct ShapeGestureView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeGestureView()
    }
}
