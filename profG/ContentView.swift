//
//  ContentView.swift
//  profG
//
//  Created by Emmet Malone on 18/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var isButtonPressed = false  // State property to toggle visibility
    @State private var isButtonPressedTwo = false  // State property to toggle visibility
    
    var body: some View {
            Text("Front-End-Dev")
            .font(.title)
            VStack {
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.red)
                    .padding()
                
                HStack{
                    Button(action: {
                        // Action is performed when pressed
                        messageString = "You are Awesome"
                        isButtonPressed = false  // Toggle to true when button is pressed
                    }) {
                        // Buttonpressed ? value_if_true : value_if_false.
                        Text(isButtonPressed ? "" : "Awesome")  // Ternary operator to toggle text visibility
                    }
                    Button(action: {
                        // Action is performed when pressed
                        messageString = "Greatness here"
                        isButtonPressedTwo = false  // Toggle to true when button is pressed
                    }) {
                        // Buttonpressed ? value_if_true : value_if_false.
                        Text(isButtonPressedTwo ? "" : "Great")  // Ternary operator to toggle text visibility
                    }
                }
               
                
                
            }
    
            .buttonStyle(.borderedProminent)
            .font(.largeTitle)
            .fontWeight(.heavy)
        
    }
}


#Preview {
    ContentView()
}
