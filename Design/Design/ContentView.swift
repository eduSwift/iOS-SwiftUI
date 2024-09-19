//
//  ContentView.swift
//  Design
//
//  Created by Eduardo Rodrigues on 13.09.24.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    
    var body: some View {
        
       Text("People: \(count)")
            .font(.largeTitle)
        HStack {
            Button("Add") {
                count +=  1
                print(count)
                
            }
            .padding()
            Button("Remove") {
                count -= 1
                print(count)
            }
        }
    }
}
                           
#Preview {
    ContentView()
}

    
    

    
  
    
    
    /*
     Spacer()
     ZStack {
     
     HStack {
     Spacer()
     ZStack {
     Text("🚗")
     .font(.largeTitle)
     Text("Sold Out")
     .foregroundStyle(.red)
     .rotationEffect(.degrees(-15))
     }
     Spacer()
     Text("🚙")
     .font(.largeTitle)
     Spacer()
     Text("🚕")
     .font(.largeTitle)
     Spacer()
     }
     }
     }
     }
     }
     }
     */
