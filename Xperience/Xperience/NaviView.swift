//
//  NaviView.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 04.12.24.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let name:String
    let age: Int
    
    static let all = [
        Person(name: "Edu", age: 46),
        Person(name: "Stefan", age: 43)
    ]
    
}

struct NaviView: View {
    var body: some View {
        NavigationStack {
            List(Person.all) { person in
                NavigationLink(person.name) {
                    PersonView(person: person)
                }
                .navigationTitle("Persons")
                
            }
        }
    }
    
}


struct PersonView: View {
    let person: Person
    
    private var friends: [Person] {
        Person.all.filter {$0 != person }
    }
    
    var body: some View {
        Text(person.name)
        Text(person.age, format: .number)
        
        List {
            Section("Friends") {
                ForEach(friends) { person in
                    NavigationLink(person.name) {
                        PersonView(person: person)
                    }
                }
            }
        }
    }
}




#Preview {
    NaviView()
}



