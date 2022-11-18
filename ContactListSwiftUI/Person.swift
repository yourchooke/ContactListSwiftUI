//
//  Contact.swift
//  ContactListSwiftUI
//
//  Created by Olga Yurchuk on 17.11.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    static func getContacts() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let maxIndex = min(names.count, surnames.count, phones.count, emails.count)
        
        for index in 0..<maxIndex {
            persons.append(Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]))
        }
        
        return persons
    }
}
