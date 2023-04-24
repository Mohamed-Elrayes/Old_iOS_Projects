//
//  StacksBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 09/04/2023.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        
        VStack(spacing: 50){
            ZStack{
                Circle()
                    .frame(width: 100 , height: 100)
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    
            }
            
            Text("1")
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100 , height: 100)
                )
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
