//
//  ContentView.swift
//  Restart
//
//  Created by can on 28.11.2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    
    var body: some View {
        ZStack{
            if isOnboardingViewActive {
                OnboardingView()
            }else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
