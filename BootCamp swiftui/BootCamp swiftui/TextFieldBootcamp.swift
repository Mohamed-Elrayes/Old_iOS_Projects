//
//  TextFieldBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 21/04/2023.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var textField: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        VStack {
            TextField("Type something here ......", text: $textField)
                .padding()
                .background(.gray.opacity(0.3))

            Button("Save") {
                dataArray.append(textField)
                textField = ""

            }
            .buttonStyle(.borderedProminent)
            .disabled(!validate())

            ForEach(dataArray, id: \.self) { data in
                Text(data)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Text form")
//            .textFieldStyle(RoundedBorderTextFieldStyle())
    }

    func validate() -> Bool {
        if textField.count  >= 3{
            return true
        }else{
            return false
        }
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
