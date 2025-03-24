//
//  ItemModel.swift
//  TodoList_v2
//
//  Created by Jack Lee on 24/03/2025.
//

import Foundation

struct ItemModel: Identifiable {
    let id = UUID()
    let title: String
    let isCompleted: Bool
}
