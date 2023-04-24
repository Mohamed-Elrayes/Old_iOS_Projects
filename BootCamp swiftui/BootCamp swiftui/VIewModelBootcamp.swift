//
//  VIewModelBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 22/04/2023.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    init() {
           getFruites()
    }
    func getFruites() {
        let fruit1 = FruitModel(name: "orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 10)
        let fruit3 = FruitModel(name: "Waterm", count: 9)
        let fruit4 = FruitModel(name: "Apple", count: 5)
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            self.isLoading = false
        }
    }

    func removeFromList(indexSet: IndexSet) {
        fruitArray.remove(atOffsets: indexSet)
    }
}

struct VIewModelBootcamp: View {
    @StateObject var fruitView = FruitViewModel()

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: RandomeScreen(fruitView: fruitView)) {
                Text("Go")
                }
                if fruitView.isLoading {
                    ProgressView()
                }
                ForEach(fruitView.fruitArray) { item in
                    HStack {
                        Text("\(item.count)")
                            .foregroundColor(.red)
                        Text(item.name)
                            .font(.headline)
                            .bold()
                    }
                }.onDelete(perform: fruitView.removeFromList)

            }.listStyle(GroupedListStyle())
                
        }
    }
}


struct RandomeScreen: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitView : FruitViewModel
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            Button("click"){
                dismiss.callAsFunction()
            }
            VStack{
                ForEach(fruitView.fruitArray){ item in
                    Text(item.name)
                    
                }
            }
           
        }
    }
}

struct VIewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        VIewModelBootcamp()
    }
}
