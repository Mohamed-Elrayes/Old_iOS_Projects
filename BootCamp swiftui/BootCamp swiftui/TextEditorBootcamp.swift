//
//  TextEditorBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 21/04/2023.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText: String = "This is The Start "
    @State var saveText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)

                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.3))
                    .cornerRadius(20).padding()

                Button("save") {
                    saveText = textEditorText
                }
                Text(saveText).padding()
                Spacer()
            }
        }
        .padding()
        .background(.red)
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
