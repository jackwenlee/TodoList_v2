//
//  ContentView.swift
//  TodoList_v2
//
//  Created by Jack Lee on 23/03/2025.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first item!",
        "This is the second item!",
        "This is the third item!",
    ]
    
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: Text("Destination"))
        )
        
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}


