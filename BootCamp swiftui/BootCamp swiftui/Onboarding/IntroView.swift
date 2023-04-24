//
//  IntroView.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 22/04/2023.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            // background
            RadialGradient(
                colors: [.pink , .purple],
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height
            ).ignoresSafeArea()
            
            if currentUserSignedIn{
                Text("Profile View")
            }else{
                Text("Onboarding View")
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
