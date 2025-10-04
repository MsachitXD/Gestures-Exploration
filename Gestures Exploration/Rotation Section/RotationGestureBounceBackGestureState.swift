//
//  RotationGestureBounceBackGestureState.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 04/10/25.
//

import SwiftUI

struct RotationGestureBounceBackGestureState: View {
    
    @GestureState private var rotation: Double = 0.0
    
    var body: some View {
        NavigationStack {
            NiceTextView(
                text: "Hello World!",
                bgColor: .black,
                fgColor: .orange,
                radius: 10)
            .rotationEffect(Angle(degrees: rotation))
            .animation(.spring(), value: rotation)
            .gesture(
                RotationGesture()
                    .updating($rotation, body: { value, State, transaction in
                        State = value.degrees
                    })
            )
            .navigationTitle("Rotation and Bounce Back with Gesture State")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    RotationGestureBounceBackGestureState()
}
