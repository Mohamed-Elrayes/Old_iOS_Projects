//
//  ToggleBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 21/04/2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggle : Bool = false
    var body: some View {
        Toggle(isOn: $toggle) {
            Text("Label")
        }.padding()
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
