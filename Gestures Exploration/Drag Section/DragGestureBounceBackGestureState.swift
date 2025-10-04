//
//  DragGestureBounceBackGestureState.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 04/10/25.
//

import SwiftUI

struct DragGestureBounceBackGestureState: View {
    @GestureState private var offset: CGSize = .zero
    var body: some View {
        NavigationStack {
            VStack {
                
                Squares()
                
                Spacer()
                NiceTextView(
                    text: "Hello World",
                    bgColor: .black.opacity(0.7),
                    fgColor: .orange.opacity(0.85),
                    radius: 10)
                .offset(offset)
                .animation(.spring(), value: offset)
                .gesture(
                    DragGesture()
                        .updating($offset, body: { value, State, transaction in
                            State = value.translation
                        })
                )
                Spacer()
            }
            .navigationTitle("Drag and Bounce Back with Gesture State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DragGestureBounceBackGestureState()
}
