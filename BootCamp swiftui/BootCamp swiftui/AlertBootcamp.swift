//
//  AlertBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 21/04/2023.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    var body: some View {
        Button("Clock") {
            showAlert.toggle()
        }.alert(isPresented: $showAlert) {
//            Alert(title: Text("There was an error"))
            Alert(
                title: Text("There was an error"),
                message: Text("Here was Will error"),
                primaryButton: .destructive(Text("Delete"), action: {}),
                secondaryButton: .cancel())
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
