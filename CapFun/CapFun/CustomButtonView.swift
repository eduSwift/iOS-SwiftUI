//
//  CustomButtonView.swift
//  CapFun
//
//  Created by Eduardo Rodrigues on 19.09.24.
//

import SwiftUI

struct CustomButtonView: View {
    
    var title: String
    var color: Color
    
    var body: some View {
        Text(title)
            .font(.body)
            .bold()
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(color)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
    }
}

#Preview {
    CustomButtonView(title: "Tap Me", color: .yellow)
}
