//
//  ContentView.swift
//  TodoList_v2
//
//  Created by Jack Lee on 23/03/2025.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        List {
            ListRowView(title: "First Title")
        }
        .navigationTitle("Todo List 📝")
        
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}


