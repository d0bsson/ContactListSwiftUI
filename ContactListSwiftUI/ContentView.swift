//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Дэвид Бердников on 15.06.2021.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactList(persons: persons)
                    .tabItem {
                        Image(systemName: "book")
                        Text("Contacts")
                    }
                Numbers(persons: persons)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
