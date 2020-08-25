//
//  ch05PresentHome.swift
//  SwiftUI_BookTest1
//
//  Created by YoujinMac on 2020/08/05.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import SwiftUI

struct ch05PresentHome: View {
    @State private var showingSheet = false // pageSheet
    @State var showingPopover = false   // popover
    
    var body: some View {
        VStack {
            // PageSheet
            Button(action: { self.showingSheet.toggle() }) {
                Text("Present").font(.title).foregroundColor(.blue)
            }.sheet(
                isPresented: $showingSheet,
                onDismiss: { print("Dismissed") },  // 화면 닫히기 전 수행할 작업
                content: { ch05PageSheet(isPresented: self.$showingSheet) })       // 새로 출력될 화면
            
            // Popover
            
            Button(action: { self.showingPopover.toggle()}) {
                Text("Popover Button").font(.largeTitle)
            }.popover(
                isPresented: $showingPopover,
                attachmentAnchor: .rect(.bounds),
                arrowEdge: .top,
                content: popoverContents
            )
            
            
        }
    }
}

struct ch05PresentHome_Previews: PreviewProvider {
    static var previews: some View {
        ch05PresentHome()
    }
}

// MARK: Popover
extension ch05PresentHome {
    func popoverContents() -> some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: { self.showingPopover = false }) {
                    Text("Cancel").foregroundColor(.red)
                }
                
                Spacer()
                Text("New Event").font(.headline)
                Spacer()
                Button("Add(+)") { }
                
            }
            Divider().padding(.bottom, 8)
            
            Text("Title")
            TextField("제목", text: .constant(""))
            
            Text("Contents")
            TextField("내용", text: .constant(""))
            Spacer()
        }.padding()
    }
}
