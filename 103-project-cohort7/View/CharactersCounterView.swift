//
//  CharactersCounterView.swift
//  103-project-cohort7
//
//  Created by Reginald Grant on 3/8/26.
//

import SwiftUI

struct CharactersCounterView: View {
    
    @State private var message: String = ""
    @State private var isBlueText = false
    
    
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Characters Counter")
                .font(.largeTitle)
                //.foregroundStyle(.blue)
                .foregroundColor(isBlueText ? .blue : .black)
            
            TextField("Type a message", text: $message)
                .textFieldStyle(.roundedBorder)
            
            Text("You typed \(message.count) Characters")
                .padding(8)
                .tint(Color.blue)
            
            
            
        }
        .padding()
        
        Divider()
        Toggle("Change Title to Blue Text", isOn: $isBlueText)    }
}

#Preview {
    CharactersCounterView()
}
