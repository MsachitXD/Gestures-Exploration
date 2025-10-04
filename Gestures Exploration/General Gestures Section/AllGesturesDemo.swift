//
//  AllGesturesDemo.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 04/10/25.
//

import SwiftUI

struct AllGesturesDemo: View {
    @State private var offset: CGSize = .zero
    @State private var rotation = 0.0
    @State private var scale = 1.0
    
    var body: some View {
        NavigationStack {
            NiceTextView(
                text: "Hello, World!",
                bgColor: .black,
                fgColor: .orange,
                radius: 10)
            .offset(offset)
            .rotationEffect(Angle(degrees: rotation))
            .scaleEffect(scale)
            .gesture(
                SimultaneousGesture(SimultaneousGesture(
                    DragGesture()
                        .onChanged { value in
                            offset = value.translation
                        }
                        .onEnded { _ in
                            withAnimation(.spring()) {
                                offset = .zero
                            }
                        }
                    ,
                    MagnificationGesture()
                        .onChanged { value in
                            scale = value
                        }
                        .onEnded { _ in
                            withAnimation(.spring()) {
                                scale = 1.0
                            }
                        }
                ), RotationGesture()
                    .onChanged { value in
                        rotation = value.degrees
                    }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            rotation = 0.0
                        }
                    }
                )
                                    
            )
            
            .navigationTitle("Rotate, Drag, Magnify")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AllGesturesDemo()
}
