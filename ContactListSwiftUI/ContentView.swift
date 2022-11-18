//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Olga Yurchuk on 17.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactList()
                .tabItem {
                    Label("Contacts", systemImage: "person.3")
                }
            DetailedContactsList()
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
