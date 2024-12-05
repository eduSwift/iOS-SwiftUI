//
//  ContactView.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 05.12.24.
//

import SwiftUI

struct Contact: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var phoneNumber: String
}

let contacts = [
    Contact(name: "Beate Beispiel", phoneNumber: "+49 123 456789"),
    Contact(name: "Max Mustermann", phoneNumber: "+49 987 654321"),
    Contact(name: "Sebastian Sommer", phoneNumber: "+49 888 999000"),
    Contact(name: "Laura Lang", phoneNumber: "+49 222 333444"),
    Contact(name: "Michael Meier", phoneNumber: "+49 555 666777")
]

struct ContentView: View {
    
    // Pfad erstellen
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) { // anpassen
            List {
                Section("Kontakte"){
                    ForEach(contacts){ contact in
                        HStack{
                            VStack(alignment: .leading){
                                Text(contact.name)
                                Text(contact.phoneNumber)
                            }
                            Spacer()
                            Button(action: {
                                // navigieren
                                path.append(contact)
                            }, label: {
                                Image(systemName: "person")
                                    .padding()
                                    .background(.blue)
                                    .clipShape(.circle)
                                    .foregroundStyle(.white)
                            })
                        }
                    }
                }
            }
            .navigationDestination(for: Contact.self){ contact in
                ContactView(contact: contact)
            }
        }
    }
}

struct ContactView: View {
    let contact: Contact
    
    var body: some View {
        ZStack{
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .opacity(0.1)
            VStack{
                Text(contact.name)
                Text(contact.phoneNumber)
            }
            .font(.largeTitle)
        }
    }
}

#Preview{
    ContentView()
}
