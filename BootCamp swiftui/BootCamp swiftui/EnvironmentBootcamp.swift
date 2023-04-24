//
//  EnvironmentBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 22/04/2023.
//


// ObservedObject
// StateObject
// EnvironmentObject

import SwiftUI
class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }

    func getData() {
        dataArray.append(contentsOf: ["IPhone", "Ipad", "IMac"])
    }
}

struct EnvironmentBootcamp: View {
    @StateObject var viewModel: EnvironmentViewModel = .init()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedIrem: item))
                    {
                        Text(item)
                    }
                }
            }
        }.environmentObject(viewModel)

    }
}

struct DetailView: View {
    let selectedIrem: String
    
 
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            NavigationLink(destination: AnotherView()) {
                Text(selectedIrem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }
        }
    }
}




struct AnotherView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                   
                    Text(item)
                }
            }
        }
    }
}

struct EnvironmentBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentBootcamp()
    }
}
