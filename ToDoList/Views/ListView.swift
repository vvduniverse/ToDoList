//
//  ListView.swift
//  ToDoList
//
//  Created by Vahtee Boo on 06.02.2022.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel

    var body: some View {
        List {
            ForEach(listViewModel.items) {
                item in ListRowView(item: item)
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
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
        .environmentObject(ListViewModel())
    }
}


