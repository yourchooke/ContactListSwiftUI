//
//  ContactDelails.swift
//  ContactListSwiftUI
//
//  Created by Olga Yurchuk on 19.11.2022.
//

import SwiftUI

struct ContactDetails: View {
    let person: Person
    
    var body: some View {
        List {
            Image(systemName: "face.smiling")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.cyan)
            HStack{
                Image(systemName: "phone")
                Text("\(person.phone)")
            }
            HStack{
                Image(systemName: "envelope")
                Text("\(person.email)")
            }
            .navigationTitle("\(person.name) \(person.surname)")
        }
    }
}

struct ContactDelails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(person: Person.getContacts().last  ?? Person(name: "Валера", surname: "Иванов", phone: "12345678", email: "a@m.ru"))
    }
}
