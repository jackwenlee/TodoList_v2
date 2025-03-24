//
//  ContentView.swift
//  TodoList_v2
//
//  Created by Jack Lee on 23/03/2025.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title", isCompleted: false),
        ItemModel(title: "This is the second title", isCompleted: true),
        ItemModel(title: "This is the third title", isCompleted: false)
    ]
    
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
        
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}


