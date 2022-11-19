//
//  DetailedContactsList.swift
//  ContactListSwiftUI
//
//  Created by Olga Yurchuk on 17.11.2022.
//

import SwiftUI

struct DetailedContactsList: View {
    let contacts: [Person]
    var body: some View {
        List(contacts, id: \.phone) { contact in
            Section(header: Text("\(contact.name) \(contact.surname)")) {
                HStack{
                    Image(systemName: "face.smiling")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.cyan)
                    VStack{
                        HStack{
                            Image(systemName: "phone")
                            Text("\(contact.phone)")
                        }
                        HStack{
                            Image(systemName: "envelope")
                            Text("\(contact.email)")
                        }
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct DetailedContactsList_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactsList(contacts: Person.getContacts())
    }
}
