//
//  GridBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 12/04/2023.
//

import SwiftUI

struct GridBootcamp: View {
    var body: some View {
        let columns: [GridItem] = [
            GridItem(spacing: nil, alignment: nil),
            GridItem(spacing: nil, alignment: nil),
           
//            GridItem(.fixed(50), spacing: nil, alignment: nil),
//            GridItem(.adaptive(minimum: 60, maximum: 300), spacing: nil,              alignment: nil),
//

        ]

        VStack {
            ScrollView {
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: nil,
                    pinnedViews: []
                ) {
                    
                    Section(header: Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                    ) {
                        ForEach(0 ..< 10) { _ in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                }
            }

            Rectangle()
                .fill(.white)
                .frame(height: 20)
                
                
            ScrollView {
                Rectangle()
                    .fill(.red)
                    .frame(height: 150)
                   

                LazyVGrid(columns: columns) {
                    ForEach(0 ..< 50) { _ in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
