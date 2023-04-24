//
//  BindingBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 14/04/2023.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor: Color = .pink

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()

            contentLayer
        }
    }

    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)

            ExtractedView(backgroundColor: $backgroundColor)
        }
    }

   
}


struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ExtractedView: View {
    @Binding var backgroundColor: Color
    var body: some View {
        Button {
            buttonPressed()
        } label: {
            Text("Press Me")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(.black)
                .cornerRadius(10)
        }
    }
    func buttonPressed() {
        backgroundColor = .yellow
    }
}
