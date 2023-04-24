//
//  ContextMenuBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 21/04/2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack{
            Image(systemName: "house.fill")
                .font(.title)
            Text("swift Thinking")
            Text("How use context")
        }.foregroundColor(.white)
            .padding(30)
            .background(.brown)
            .cornerRadius(20)
            .contextMenu {
                Button("click 1"){}
                Button("click 2"){}
                Button("click 3"){}
            }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
