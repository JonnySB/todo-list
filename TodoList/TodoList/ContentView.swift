//
//  ContentView.swift
//  TodoList
//
//  Created by Jonny Brownrigg on 14/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State var todo1IsOn = false
    @State var todo2IsOn = false
    @State var todo3IsOn = false
    @State var todo4IsOn = false
    @State var todo5IsOn = false
    
    @State var todo1 = ""
    @State var todo2 = ""
    @State var todo3 = ""
    @State var todo4 = ""
    @State var todo5 = ""
    
    var body: some View {
        VStack {
            Image("todo-list")
            Text("Get shit done!")
                .font(.largeTitle)
            Form {
                Toggle(isOn: $todo1IsOn) {
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $todo1)
                }
                Toggle(isOn: $todo2IsOn) {
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $todo2)
                }
                Toggle(isOn: $todo3IsOn) {
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $todo3)
                }
                Toggle(isOn: $todo4IsOn) {
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $todo4)
                }
                Toggle(isOn: $todo5IsOn) {
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $todo5)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
