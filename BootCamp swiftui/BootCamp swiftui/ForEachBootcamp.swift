//
//  ForEachBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 12/04/2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi" , "Hello" , "Hey"]

    var body: some View {
        VStack {
            
            ForEach(0 ..< 10) { index in
                HStack {
                    Text("ONE \(index)")
                    Text("TWO \(index)")
                    Text("THREE \(index)")
                }
            }
            ForEach(data.indices) { index in
                HStack {
                    Text("\(data[index])")
                    
                }
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
