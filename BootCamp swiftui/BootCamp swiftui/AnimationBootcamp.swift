//
//  AnimationBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 14/04/2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false

    var body: some View {
        VStack {
            Button("Button") {
                isAnimated.toggle()
//                withAnimation(.default) {
//                    isAnimated.toggle()
//                }
            }
            RoundedRectangle(
                cornerRadius: isAnimated ? 25 : 20
            )
            .fill(
                isAnimated ? Color.red : Color.blue
            )
            .frame(
                width:
                isAnimated ? 50 : 100,
                height:
                isAnimated ? 50 : 100
            )
            .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            .offset(y: isAnimated ? 300 : 0)
            .animation(Animation
                .easeInOut(duration: 1.5)
                .repeatForever(autoreverses: true),
                value: UUID()
            )
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
