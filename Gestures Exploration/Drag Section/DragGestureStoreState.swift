//
//  DragGestureStoreState.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 04/10/25.
//

import SwiftUI

struct DragGestureStoreState: View {
    @State private var currentoffset: CGSize = .zero
    @Binding var endoffset: CGSize
    
    var offset: CGSize {
        CGSize(
            width: currentoffset.width + endoffset.width,
            height: currentoffset.height + endoffset.height)
    }

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
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            withAnimation(.spring()){
                                currentoffset = value.translation
                            }
                        }
                        .onEnded{ _ in
                            withAnimation(.spring()){
                                endoffset = CGSize(
                                    width: currentoffset.width + endoffset.width,
                                    height: currentoffset.height + endoffset.height)
                                
                                //Reset currentOffset
                                currentoffset = .zero
                            }
                        }
                )
                .onTapGesture {
                    withAnimation(.spring()) {
                        endoffset = .zero
                        currentoffset = .zero
                    }
                }
                Spacer()
            }
            .navigationTitle("Drag and Store State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    DragGestureStoreState(endoffset: .constant(.zero))
}
