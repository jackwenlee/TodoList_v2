//
//  TodoList_v2App.swift
//  TodoList_v2
//
//  Created by Jack Lee on 23/03/2025.
//

import SwiftUI

@main
struct TodoList_v2App: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
