//
//  DetailsView.swift
//  ContactListSwiftUI
//
//  Created by Дэвид Бердников on 15.06.2021.
//

import SwiftUI

struct DetailsView: View {
    
    let person: Person
    
    var body: some View {
        List {
            Image(systemName: "person")
                .resizable()
                .frame(width: 150, height: 150)
            HStack {
                Image(systemName: "mail")
                Text("\(person.email)")
            }
            HStack {
                Image(systemName: "person")
                Text("\(person.phone)")
            }
        }
        .navigationBarTitle("\(person.fullName)")
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person.getContact(idx: 0))
    }
}
