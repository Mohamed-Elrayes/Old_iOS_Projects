//
//  ConditionalBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 14/04/2023.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    @State var loading: Bool = false
    var body: some View {
        VStack(spacing: 20){
            
            
            Button("Circle Button \(showCircle.description)"){
                showCircle.toggle()
                loading.toggle()
            }
            
            if loading{
                ProgressView()
            }
            
            if showCircle{
                Circle()
                    .frame(width: 100 , height: 100)
            }else{
                Rectangle()
                    .frame(width: 100 , height: 100)
            }
            
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
