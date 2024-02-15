//
//  todoDisplayView.swift
//  TodoList
//
//  Created by Jonny Brownrigg on 15/02/2024.
//

import SwiftUI

struct todoDisplayView: View {
    var todo: String
    
    var body: some View {
        Text("\(todo)")
            .navigationTitle("Todo Item")
    }
}

#Preview {
    todoDisplayView(todo: "")
}
