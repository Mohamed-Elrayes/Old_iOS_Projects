//
//  SafeAreaBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 13/04/2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ZStack {
//            Color.red
//                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()

            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                
        }
        .background(
            Color.red
//            .edgesIgnoringSafeArea(.all) //? deprecatred
            .ignoresSafeArea()
        )
//            .edgesIgnoringSafeArea(.all)
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
