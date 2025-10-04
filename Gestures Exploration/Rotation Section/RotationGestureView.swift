//
//  RotationGestureView.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 04/10/25.
//

import SwiftUI

struct RotationGestureView: View {
    
    @State private var rotation: Double = 0.0
    @State private var currentRotation: Double = 0.0
    
    var totalRotation: Double {
        currentRotation + rotation
    }
    
    var body: some View {
        NavigationStack {
            NiceTextView(
                text: "Hello World!",
                bgColor: .black,
                fgColor: .orange,
                radius: 10)
            .rotationEffect(Angle(degrees: totalRotation))
            .gesture(
                RotationGesture()
                    .onChanged{ value in
                        currentRotation = value.degrees
                    }
                    .onEnded{ _ in
                        withAnimation(.spring()){
                            rotation += currentRotation
                            
                            // Reset currentRotation
                            currentRotation = 0
                        }
                    }
            )
            .onTapGesture {
                withAnimation(.spring()){
                    rotation = 0
                    currentRotation = 0
                }
            }
            .navigationTitle("Rotation and Stay Still")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    RotationGestureView()
}
