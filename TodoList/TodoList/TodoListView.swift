//
//  todoListView.swift
//  TodoList
//
//  Created by Jonny Brownrigg on 15/02/2024.
//

import SwiftUI

struct TodoListView: View {
    @State private var newTodoTitle = ""
    @State private var todos = [TodoItem]()
    
    var body: some View {
        VStack {
            Image("todo-list")
            Section {
                HStack {
                    TextField("What do you need to get done?", text: $newTodoTitle)
                    Button(action: addTodo) {
                        Text("Add")
                    }
                }
            }
            List {
                Section {
                    ForEach(todos) { todo in
                        HStack {
                            Toggle(isOn: Binding(
                                get: { todo.isCompleted },
                                set: { newValue in
                                    self.toggleTodoCompleted(todo: todo)
                                }
                            )) {
                                Text(todo.title)
                            }
                        }
                    }
                    .onDelete(perform: deleteTodo)
                }
            }
        }
        .padding()
    }
    func addTodo() {
        guard !newTodoTitle.isEmpty else { return }
        todos.append(TodoItem(title: newTodoTitle))
        newTodoTitle = ""
    }
    
    func deleteTodo(at offsets: IndexSet) {
        todos.remove(atOffsets: offsets)
    }
    
    func toggleTodoCompleted(todo: TodoItem) {
        if let index = todos.firstIndex(where: { $0.id == todo.id }) {
            todos[index].isCompleted.toggle()
        }
    }
}

#Preview {
    ContentView()
}
