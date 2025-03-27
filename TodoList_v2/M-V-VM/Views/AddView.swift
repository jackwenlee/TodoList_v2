//
//  AddView.swift
//  TodoList_v2
//
//  Created by Jack Lee on 23/03/2025.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldString: String = ""
    
    var body: some View {
        ScrollView {
            
            VStack {
                TextField("Type Something here...", text: $textFieldString)
                    .frame(height: 50)
                    .padding(.horizontal)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                
                Button {
                    saveButtonPressed()
                } label: {
                    Text("Save")
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .font(.headline)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                    
                }
            }
            .padding()
            
        }
        .navigationTitle("Add an Item 🖊️")
    }
    
    func saveButtonPressed() {
        listViewModel.addItem(title: textFieldString)
        presentationMode.wrappedValue.dismiss()
    }
    
    
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel())
}
