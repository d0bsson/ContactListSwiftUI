//
//  Numbers.swift
//  ContactListSwiftUI
//
//  Created by Дэвид Бердников on 15.06.2021.
//

import SwiftUI

struct Numbers: View {
    let persons: [Person]
    
    var body: some View {
        List {
            ForEach(persons, id: \.name) { person in
                Section(header: Text(person.fullName)) {
                    Text("\(person.phone)")
                    Text("\(person.email)")
                }
            }
        }
    }
}




struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(persons: Person.getContactList())
    }
}
