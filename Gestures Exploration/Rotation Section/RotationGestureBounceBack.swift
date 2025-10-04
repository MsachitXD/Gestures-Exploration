//
//  RotationGestureBounceBack.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 04/10/25.
//

import SwiftUI

struct RotationGestureBounceBack: View {
    
    @State private var rotation: Double = 0.0
    
    var body: some View {
        NavigationStack {
            NiceTextView(
                text: "Hello World!",
                bgColor: .black,
                fgColor: .orange,
                radius: 10)
            .rotationEffect(Angle(degrees: rotation))
            .gesture(
                RotationGesture()
                    .onChanged{ value in
                        rotation = value.degrees
                    }
                    .onEnded{ _ in
                        withAnimation(.spring()){
                            rotation = 0
                        }
                    }
            )
            .navigationTitle("Rotation and Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    RotationGestureBounceBack()
}
