//
//  MagnificationView.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 03/10/25.
//

import SwiftUI

struct MagnificationView: View {
    @State private var ScaleFactor: CGFloat = 1.0
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
            .navigationTitle("Magnify and Stay Still")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MagnificationView()
}
