//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Дэвид Бердников on 15.06.2021.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactList(persons: contacts)
                    .tabItem {
                        Image(systemName: "person")
                        Text("Contacts")
                    }
                Numbers()
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .navigationBarTitle("Contacts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
