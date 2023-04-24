//
//  PaddingAndSpacerBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 09/04/2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(.yellow)
                //            .padding(.all)
                //            .padding(.all , 10)
                .padding(.leading, 20)
                .background(.red)

            Text("Start")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .background(.pink)
                .padding(.leading)

            VStack(alignment: .leading) {
                Text("Helllo")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(
                    "This is the description for teasting text that will be do it right now"
                )
            }.padding()
                .background(
                    Color.white
                        .cornerRadius(10)
                        .shadow(
                            color: .black.opacity(0.3),
                            radius: 10,
                            x: 0.0,
                            y: 0.0
                        )
                ).padding(.horizontal, 10)
        }
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
