//
//  TernaryOperatorsBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 14/04/2023.
//

import SwiftUI

struct TernaryOperatorsBootcamp: View {
    @State var isStartingState: Bool = false
    var body: some View {
        VStack{
            Button("BUTTON \(isStartingState.description)"){
                isStartingState.toggle()
            }
            RoundedRectangle(cornerRadius: 25.0)
                .fill( isStartingState ?  Color.red : Color.blue)
                .frame(width: 200 , height: 100)
        }
    }
}

struct TernaryOperatorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorsBootcamp()
    }
}
