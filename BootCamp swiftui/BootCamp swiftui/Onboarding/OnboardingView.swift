//
//  OnboardingView.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 22/04/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding State :
    /*
     0 - Welcome Screen
     1 - Add name
     3 - Add age
     4 - Add gender
     */
    
    @State var onboardingState: Int = 0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
