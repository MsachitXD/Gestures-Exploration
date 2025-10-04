//
//  GeneralGesturesView.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 04/10/25.
//

import SwiftUI

struct GeneralGesturesSectionView: View {
        
    var body: some View {
        Section(content:{
            NavigationLink(#"General Gesture"# , destination: {
                GesturesDemo()
            })
        }, header: {
            Text("General Gesture Demo")
        })
    }
}


#Preview {
    GeneralGesturesSectionView()
}
