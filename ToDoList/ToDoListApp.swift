//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Vahtee Boo on 06.02.2022.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
