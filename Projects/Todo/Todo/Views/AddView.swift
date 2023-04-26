//
//  AddView.swift
//  Todo
//
//  Created by Mohamed Salah on 24/04/2023.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    @Environment(\.dismiss) var backView
    @EnvironmentObject var listViewModel: ListViewModel
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    var body: some View {
        ScrollView {
            VStack {
                TextField("Tyype somthing here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)

                Button(action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })

            }.padding(14)
        }.navigationTitle("Add an Item 🖋️")
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text(alertTitle),

                    dismissButton: .default(Text("Got it!")))
            }
    }

    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(item: ItemModel(title: textFieldText, isCompleted: true))
            backView.callAsFunction()
        }
    }

    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long!!! 🥹"
            showAlert.toggle()
            return false
        } else {
            return true
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }.environmentObject(ListViewModel())
    }
}
