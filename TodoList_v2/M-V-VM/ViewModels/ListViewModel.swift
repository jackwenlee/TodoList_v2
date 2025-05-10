//
//  ListViewModel.swift
//  TodoList_v2
//
//  Created by Jack Lee on 25/03/2025.
//

import Foundation

class ListViewModel: ObservableObject {
    
    let itemsKey: String = "items_list"
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    init() {
        getItems()
    }
    
    func getItems() {
//        let newItems = [
//            ItemModel(title: "This is the first title", isCompleted: false),
//            ItemModel(title: "This is the second title", isCompleted: true),
//            ItemModel(title: "This is the third title", isCompleted: false)
//        ]
//        items.append(contentsOf: newItems)
        
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItem = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {return}
        
        self.items = savedItem
        
    }
    
    func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    func moveItem(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(_ item: ItemModel) {
       
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}
