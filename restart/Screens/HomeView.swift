//
//  HomeView.swift
//  restart
//
//  Created by Andres Mendieta on 12/02/23.
//

import SwiftUI

struct HomeView: View {
  // MARK: - PROPERTY
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
  
  // MARK: - BODY
  
  var body: some View {
    VStack(spacing: 20) {
      // MARK: - HEADER
      
      Spacer()
      
      Image("character-2")
        .resizable()
        .scaledToFit()
        .padding()
      
      // MARK: - CENTER
      
      // MARK: - FOOTER
      
      Button {
        isOnboardingViewActive = true
      } label: {
        Text("Restart")
      }

    } //: VSTACK
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
