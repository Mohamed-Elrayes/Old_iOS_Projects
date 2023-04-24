//
//  initBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 12/04/2023.
//

import SwiftUI

struct initBootcamp: View {
    let background: Color
    let count: Int
    let title: String

    init(background: Color, count: Int, title: String) {
        self.background = background
        self.count = count
        self.title = title
    }

    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .apple {
            self.background = .red
            self.title = "Apple"
        } else {
            self.background = .orange
            self.title = "Orange"
        }
    }

    enum Fruit {
        case apple
        case orangr
    }

    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            Text("\(title)")
                .font(.headline)
        }
        .foregroundColor(.white)
        .frame(width: 150, height: 150)
        .background(background)
        .cornerRadius(20)
    }
}

struct initBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            initBootcamp(count: 10, fruit: .apple)
            initBootcamp(count: 10, fruit: .orangr)
        }
    }
}
