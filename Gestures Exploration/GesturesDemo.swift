//
//  ContentView.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 01/10/25.
//

import SwiftUI

struct GesturesDemo: View {
    var body: some View {
        NavigationStack {
            Form{
                MagnificationSectionView()
                DragSectionView()
                RotationSectionView()
                GeneralGesturesSectionView()
            }
            .navigationTitle("Gestures")
        }
    }
}

#Preview {
    GesturesDemo()
}
