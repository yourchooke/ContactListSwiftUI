//
//  PersonRow.swift
//  ContactListSwiftUI
//
//  Created by Olga Yurchuk on 18.11.2022.
//

import SwiftUI

struct PersonRow: View {
    let person: Person
    
    var body: some View {
        
        HStack {
            Text("\(person.name) \(person.surname)")
                .font(.title2)
        }
        .padding()
        
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person.getContacts().last  ?? Person(name: "Валера", surname: "Иванов", phone: "12345678", email: "a@m.ru"))
    }
}
