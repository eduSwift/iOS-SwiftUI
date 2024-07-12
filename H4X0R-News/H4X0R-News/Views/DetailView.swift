//
//  DetailView.swift
//  H4X0R-News
//
//  Created by Eduardo Rodrigues on 11.07.24.
//

import SwiftUI


struct DetailView: View {
    
    let url:String?
    
    
    var body: some View {
        WebView(urlString: url)
    }
}




#Preview {
    DetailView(url: "https://www.google.com")
}



