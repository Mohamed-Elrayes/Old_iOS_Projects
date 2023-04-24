//
//  ScrollviewBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 12/04/2023.
//

import SwiftUI

struct ScrollviewBootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ..< 10) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0 ..< 20) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            } 
        }
    }
}

struct ScrollviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollviewBootcamp()
    }
}
