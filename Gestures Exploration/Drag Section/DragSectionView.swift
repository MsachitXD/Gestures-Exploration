//
//  DragSectionView.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 03/10/25.
//

import SwiftUI

struct DragSectionView: View {
    
    @State private var scaleFactor: CGFloat = 1.0
    @State private var offset: CGSize = .zero
    
    var body: some View {
        Section(content:{
            NavigationLink(#"Drag Gesture "Go Back""# , destination: {
                DragGestureBounceBack()
            })
            
            NavigationLink(#"Drag Gesture "Go Back"GS"# , destination: {
                DragGestureBounceBackGestureState()
            })
            
            NavigationLink(#"Drag Gesture "Stay Still""# , destination: {
                DragGestureView()
            })
            
            NavigationLink(destination: {
                DragGestureStoreState(endoffset: $offset)
            }, label: {
                VStack(alignment: .leading){
                   Text("Drag Gesture")
                    Text("Store state")
                        .fontWeight(.thin)
                }
            })
        }, header: {
            Text("Drag Gesture Demo")
        })
    }
}


#Preview {
    DragSectionView()
}
