//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by Olga Yurchuk on 17.11.2022.
//

import SwiftUI

struct ContactList: View {
    
    let contacts = Person.getContacts()
    var body: some View {
        NavigationView {
            List(contacts, id: \.phone) { contact in
                NavigationLink(destination: ContactDetails(person: contact)) {
                    PersonRow(person: contact)
                }                
            }
            .listStyle(.plain)
            .navigationTitle("Contact list")
        }
            
        
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
