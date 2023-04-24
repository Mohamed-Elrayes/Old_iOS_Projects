//
//  ListBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 17/04/2023.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
    "apple" , "orange" , "banana" , "peach"]
    
    var body: some View {
        List{
            Section {
                ForEach(fruits , id: \.self){ fruit in
                    Text(fruit.capitalized)
                }.onDelete(perform: { indexSet in
                    
                    fruits.remove(atOffsets: indexSet)
                })
            } header: {
                Text("Fruits")
            }
        }
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
