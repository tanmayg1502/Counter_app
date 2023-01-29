//
//  ContentView.swift
//  Counter_app
//
//  Created by Tanmay Goel on 19/09/22.
//

import SwiftUI



struct ContentView: View {
    
    @State var counter: Int = 0
    //  @State keyword to indicate mutable UI state
    //  When the state value changes, the view invalidates its appearance and recomputes the body
    
    var body: some View {
        VStack {
            // Counter Text
            Text("\(counter)")
                .font(Font.system(size: 69))
                .bold()
            
            HStack {
                // Buttons
      
                
                Button(action:{
                    self.counter = 0
                }) {
                    Text("Reset")
                        .bold()
                        .foregroundColor(.white)
                    
                }
                .frame(width: 130, height: 50, alignment: .center)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke())
                .background(Color.red)
                .cornerRadius(8)
                
                Button(action:{
                    self.counter += 1
                }) {
                    Text("Count")
                        .bold()
                        .foregroundColor(.white)
                    
                }
                .frame(width: 130, height: 50, alignment: .center)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke())
                .background(Color.blue)
                .cornerRadius(8)
       
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
