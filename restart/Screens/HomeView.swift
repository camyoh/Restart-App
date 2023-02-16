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
      
      Text("The time that leads to mastery is dependent on the intensity of our focus.")
        .font(.title3)
        .fontWeight(.light)
        .foregroundColor(.secondary)
        .multilineTextAlignment(.center)
        .padding()
      
      // MARK: - FOOTER
      
      Spacer()
      
      Button {
        isOnboardingViewActive = true
      } label: {
        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
          .imageScale(.large)
        Text("Restart")
          .font(.system(.title3, design: .rounded))
          .fontWeight(.bold)
      } //: BUTTON

    } //: VSTACK
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
