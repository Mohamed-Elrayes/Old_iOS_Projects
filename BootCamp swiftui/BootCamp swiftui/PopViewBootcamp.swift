//
//  PopViewBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 17/04/2023.
//

import SwiftUI

struct PopViewBootcamp: View {
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack{
                Button("Button"){
                    showNewScreen.toggle()
                }.font(.largeTitle)
                Spacer()
            }
             // Method 1 - sheet
            .sheet(isPresented: $showNewScreen) {
                NewScreen()
            }
            // Method 2 - Transition
//            if showNewScreen{
//                NewScreen(showNewScreen: $showNewScreen)
//                    .padding(.top , 100)
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring(), value: UUID())
//            }
            // Method 3 - sheet
//            NewScreen()
//                .padding(.top , 100)
//                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
//                .animation(.spring(), value: UUID())
        }
    }
}
struct NewScreen: View {
    @Environment(\.dismiss) var dismiss
//    @Binding var showNewScreen : Bool
    var body: some View {
        ZStack{
            Color.purple.edgesIgnoringSafeArea(.all)
            VStack{
                Button("Button"){
                    dismiss.callAsFunction()
//                    showNewScreen.toggle()
                }.font(.largeTitle)
             
            }
        }
    }
}

struct PopViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopViewBootcamp()
//        NewScreen()
    }
}
