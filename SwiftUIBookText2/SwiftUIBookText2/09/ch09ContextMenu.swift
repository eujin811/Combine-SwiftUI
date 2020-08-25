//
//  ch09ContextMenu.swift
//  SwiftUIBookText2
//
//  Created by Youjin on 2020/08/12.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ToDo {
    let id: Int
    let title: String = "To Do"
    var isCompleted: Bool = false
    init(id: Int) {
        self.id = id
    }
}


struct ch09ContextMenu: View {
    @State private var toDoList = Array(1...10).map(ToDo.init(id:))
    var body: some View {
        List(Array(toDoList.enumerated()), id: \.offset) { (index, toDo) in
            HStack {
                Text("\(toDo.title) \(toDo.id)")
                Spacer()
                Text(toDo.isCompleted ? "v" : "")
            }
            .font(.title)
            .frame(height: 50)
            .contextMenu {
                Button("완료") { self.toDoList[index].isCompleted = true }
                Button("삭제") { self.toDoList.remove(at: index) }
            }
            
        }
    }
}

struct ch09ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ch09ContextMenu()
    }
}
