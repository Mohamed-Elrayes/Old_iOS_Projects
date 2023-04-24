//
//  AnimationWithCurvesAndTweenBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 16/04/2023.
//

import SwiftUI

struct AnimationWithCurvesAndTweenBootcamp: View {
    @State var isAnimating : Bool = false
    //        let timing : Double = 10.0
    
    var body: some View {

        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 50 ,
                    height: 100
                )
                .animation(
                   Animation
//                    .easeOut
                    .spring(
//                        response: 1.0,
//                        dampingFraction: 1.0,
//                        blendDuration: 1.0
                   )
                    , value: UUID()
                )
        }
    }
}

struct AnimationWithCurvesAndTweenBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationWithCurvesAndTweenBootcamp()
    }
}
