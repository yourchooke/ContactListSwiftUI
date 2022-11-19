//
//  DataManager.swift
//  ContactListSwiftUI
//
//  Created by Olga Yurchuk on 17.11.2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names = ["Valera", "Sergey", "Johny", "Alexander", "Leonid",
                 "Alexey", "Gregory", "Henry"
    ]
    
    let surnames = ["Ivanov", "Suvorov", "Pyatnov", "Johns", "Valunov",
                    "Basik", "Volkov", "Putnov"
    ]
    
    let phones = ["1234567890", "1234567891", "1234567892", "1234567893",
                        "1234567894", "1234567895", "1234567896", "1234567897"
    ]
    
    let emails = ["1a@shmail.ru", "2b@shmail.ru", "3c@shmail.ru",
                  "4d@shmail.ru", "5e@shmail.ru", "6f@shmail.ru",
                  "7g@shmail.ru", "8h@shmail.ru"
    ]
    
    private init(){}
}
