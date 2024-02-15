//
//  todoListItem.swift
//  TodoList
//
//  Created by Jonny Brownrigg on 15/02/2024.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted = false
}
