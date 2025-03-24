//
//  ListRowView.swift
//  TodoList_v2
//
//  Created by Jack Lee on 23/03/2025.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
        
    }
}

let item1 = ItemModel(title: "This is the first title!", isCompleted: false)
let item2 = ItemModel(title: "This is the second title!", isCompleted: true)

#Preview {
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
