//
//  MagnificationStoreStateView.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 03/10/25.
//

import SwiftUI

struct MagnificationStoreStateView: View {
    @Binding var ScaleFactor: CGFloat
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
                .gesture(
                    MagnificationGesture()
                        .onChanged{ value in
                            withAnimation(.spring()){
                                ScaleFactor = value
                            }
                        }
                )
                Spacer()
            }
            .navigationTitle("Magnify and Store State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    MagnificationStoreStateView(ScaleFactor: .constant(1.0))
}
