//
//  IconsBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 08/04/2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .font(.largeTitle)
            .foregroundColor(.red)
            .frame(width: 300 , height: 300)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
