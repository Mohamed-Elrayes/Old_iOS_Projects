//
//  ExtraxtSubviewsBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 14/04/2023.
//

import SwiftUI

struct ExtraxtSubviewsBootcamp: View {
    var body: some View {
        
        ZStack{
            Color.gray.ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack{
            MyItem(title: "String", count: 20, color: .blue)
            MyItem(title: "al", count: 30, color: .orange)
            MyItem(title: "mod", count: 49, color: .green)
          
        }
    }
}

struct ExtraxtSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtraxtSubviewsBootcamp()
    }
}

struct MyItem: View {
    let title: String
    let count : Int
    let color : Color?
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
            
        }
        .padding()
        .background(color ?? Color.red)
        .cornerRadius(10)
    }
}
