//
//  GradientsBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 07/04/2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.red, .blue]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                )
                .frame(width: 300, height: 200)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 200)
            )
            .frame(width: 300, height: 200)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, angle: .degrees(180))
            )
            .frame(width: 300, height: 200)
            
        }
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
