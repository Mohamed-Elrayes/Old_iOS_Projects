//
//  ImageBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 08/04/2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("apple")
//            .renderingMode(.template)
            .resizable()
            .scaledToFill()
            .foregroundColor(.red)
            .frame(width: 300 , height: 300)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                Circle(),
//                RoundedRectangle(cornerRadius: 25)
//                Ellipse()
                
                
//            )
        
            
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
