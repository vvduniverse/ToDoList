//
//  ListView.swift
//  ToDoList
//
//  Created by Vahtee Boo on 06.02.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first lohness creature",
        "This is the second!",
        "Third!"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) {
                item in ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("TodoList 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


