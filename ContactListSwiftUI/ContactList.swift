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
        VStack {
            ForEach(contacts, id: \.phone) { contact in
                PersonRow(person: contact)
            }
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}