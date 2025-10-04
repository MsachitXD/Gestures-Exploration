//
//  RotationSectionView.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 04/10/25.
//

import SwiftUI

struct RotationSectionView: View {
    
    @State private var rotation : Double = 0.0
    
    var body: some View {
        Section(content:{
            NavigationLink(#"Rotation Gesture "Go Back""# , destination: {
                RotationGestureBounceBack()
            })
            
            NavigationLink(#"Rotation Gesture "Go Back"GS"# , destination: {
                RotationGestureBounceBackGestureState()
            })
            
            NavigationLink(#"Rotation Gesture "Stay Still""# , destination: {
                RotationGestureView()
            })
            
            NavigationLink(destination: {
                RotationGestureStoreState(rotation: $rotation)
            }, label: {
                VStack(alignment: .leading){
                   Text("Rotation Gesture")
                    Text("Store state")
                        .fontWeight(.thin)
                }
            })
        }, header: {
            Text("Rotation Gesture Demo")
        })
    }
}


#Preview {
    RotationSectionView()
}
