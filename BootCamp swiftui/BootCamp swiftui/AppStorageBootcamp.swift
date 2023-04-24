//
//  AppStorageBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 22/04/2023.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    
    @AppStorage("name") var currentName: String?
    
    var body: some View {
        VStack{
            
            if let name = currentName {
                Text(name)
            }
            
            Button("SAVE"){
                let name = "Hamada"
                
                currentName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
