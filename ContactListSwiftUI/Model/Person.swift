//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Дэвид Бердников on 15.06.2021.
//

import Foundation


struct Person: Hashable {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}


extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(person)
        }
        return persons
    }
    
    static func getContact(idx: Int) -> Person {
        let person = Person(name: "Example", surname: "Person", email: "", phone: "")
        return person
    }
}
    


