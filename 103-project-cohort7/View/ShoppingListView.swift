//
//  ShoppingListView.swift
//  103-project-cohort7
//
//  Created by Reginald Grant on 3/4/26.
//

import SwiftUI

struct ShoppingListView: View {
    
    @State var shoppingList: [String] = ["Eggs", "Bananas"]
    @State var item: String = ""
    
    
    
    var body: some View {
        
        NavigationStack{ // option + command + <-
            
            VStack {
                
                List(shoppingList, id: \.self){ listItem in
                    
                    Text(listItem)
                    
                }
                
                HStack {
                    TextField("Add a new shopping item...", text: $item)
                        .padding()
                    
                    Button {
                        addItem()
                        // the code to add the item to the shopping list
                       
                        
                    } label: {
                        Image(systemName: "arrowshape.up.circle.fill")
                            .padding()
                            .font(.title)
                    }
                    
                }
                .padding()
                
            } // END: VStack - Main Container
            .navigationTitle("Shopping List")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar{
                Menu{
                    Button("Sort A -> Z"){
                        // here the code to sort the list
                        shoppingList = shoppingList.sorted()
                    }
                    
                    Button("Reversed Order"){
                        // here the code to reverse the list order
                        shoppingList = shoppingList.reversed()
                    }
                } label: {
                    Image(systemName: "arrow.up.arrow.down.circle")
                }
            } // END: toolbar
            
        } // END: NavigationStack
        
    } // END: Body
    
    func addItem(){
        
        let trimmedItem = item.trimmingCharacters(in: .whitespacesAndNewlines)
        
        //1. Must not be empty
        guard !trimmedItem.isEmpty else { return }
        
        //2. Must not be duplicate
        guard !shoppingList.contains(trimmedItem) else { return }

        shoppingList.append(trimmedItem)
        item = ""
    }
    
} // END: ShoppingListView

#Preview {
    ShoppingListView()
}
