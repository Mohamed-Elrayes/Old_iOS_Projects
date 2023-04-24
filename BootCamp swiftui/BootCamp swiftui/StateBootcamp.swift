//
//  StateBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 13/04/2023.
//

import SwiftUI

struct StateBootcamp: View {
    @State var background = Color.blue
    @State var count: Int = 0
    @State var myTitle: String = "My Title"
    
    var body: some View {
        ZStack {
            background
                .ignoresSafeArea()
            
            VStack {
                Text(myTitle)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.title)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        background = .red
                        myTitle = "Button 1 was preesed"
                        count += 1
                        
                    }.foregroundColor(.white)
                    
                    Button("Button 2") {
                        background = .green
                        myTitle = "Button 2 was preesed"
                        count -= 1
                    }.foregroundColor(.white)
                }
            }
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
