//
//  SheetBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 17/04/2023.
//

import SwiftUI

struct SheetBootcamp: View {
    @State var showSheet: Bool = false

    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)

            Button("Button") {
                showSheet.toggle()
            }
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet) {
                // dont put condition here
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)

            Button("Button") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }

}


struct SheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetBootcamp()
//        SecondScreen()
    }
}
