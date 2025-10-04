//
//  NiceTextView.swift
//  Gestures Exploration
//
//  Created by Sachit Mittal on 03/10/25.
//

import SwiftUI

struct NiceTextView: View {
    
    let text: String
    let bgColor: Color
    let fgColor: Color
    let radius: CGFloat
    
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(fgColor)
            .padding()
            .background(bgColor)
//            .cornerRadius(radius)
            .clipShape(.rect(cornerRadius: radius))
    }
}

#Preview {
    NiceTextView(text: "Hello World", bgColor: .black, fgColor: .orange, radius: 10)
}
