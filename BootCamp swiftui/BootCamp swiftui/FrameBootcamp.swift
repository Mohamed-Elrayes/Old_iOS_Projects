//
//  FrameBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 08/04/2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.green)
            .frame(width: 300, height: 300, alignment: .leading)
            .background(.red)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
