//
//  MagnificationBounceBackViewGestureState.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 04/10/25.
//

import SwiftUI

struct MagnificationBounceBackViewGestureState: View {
    @GestureState private var ScaleFactor: CGFloat = 1.0
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                NiceTextView(
                    text: "Hello World!",
                    bgColor: .black,
                    fgColor: .orange,
                    radius: 10)
                .scaleEffect(ScaleFactor)
                .animation(.spring(), value: ScaleFactor)
                .gesture(
                    MagnificationGesture()
                        .updating($ScaleFactor, body: { value, State, transaction in
                            State = value.magnitude
                        })
                )
                
                Spacer()
            }
            .navigationTitle("Magnify and Bounce Back with Gesture State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MagnificationBounceBackViewGestureState()
}
