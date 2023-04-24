//
//  ButtonsBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 13/04/2023.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "This is my Title"

    var body: some View {
        VStack(spacing: 20) {
            Text(title)

            Button("Press me!") {
                title = "Button was Pressed"
            }
            .accentColor(.red)

            Button {
                title = "Button was Pressed 2"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }

            Button {
                title = "Button was Pressed 3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }

            Button {
                title = "Button was Pressed 4"
            } label: {
                Text("Finish".uppercased())
                    .font(.headline)
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .padding()
                    .background(
                        Capsule()
                            .stroke(.gray , lineWidth: 3.0)
                    )
            }
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
