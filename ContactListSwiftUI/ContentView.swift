//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Olga Yurchuk on 17.11.2022.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getContacts()
    
    var body: some View {
        TabView {
            ContactList(contacts: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person.3")
                }
            DetailedContactsList(contacts: contacts)
                .tabItem {
                    Label("DetailedList", systemImage: "person.crop.rectangle.stack")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
