//
//  ItemListModel.swift
//  ToDoList
//
//  Created by Vahtee Boo on 06.02.2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
