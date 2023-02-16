//
//  OnboardingView.swift
//  restart
//
//  Created by Andres Mendieta on 12/02/23.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTY
  
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
  
  // MARK: - BODY
  
  var body: some View {
    ZStack {
      Color("ColorBlue")
        .ignoresSafeArea(.all, edges: .all)
      
      VStack(spacing: 20) {
        
        // MARK: - HEADER
        
        Spacer()
        
        VStack(spacing: 0){
          Text("Share.")
            .font(.system(size: 60))
            .fontWeight(.heavy)
            .foregroundColor(.white)
          
          Text("""
          It's not how much we give but
          how much love we put into giving.
          """)
          .font(.title3)
          .fontWeight(.light)
          .foregroundColor(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 10)
        } //: HEADER
        
        // MARK: - CENTER
        
        ZStack {
          ZStack {
            Circle()
              .stroke(.white.opacity(0.2), lineWidth: 40)
              .frame(width: 260, height: 260, alignment: .center)
            Circle()
              .stroke(.white.opacity(0.2), lineWidth: 80)
              .frame(width: 260, height: 260, alignment: .center)
          } //: ZSTACK
          
          Image("character-1")
            .resizable()
            .scaledToFit()
        } //: CENTER
        
        Spacer()
        
        // MARK: - FOOTER
        
        ZStack {
          // PARTS OF THE CUSTOM BUTTOM
          
          // 1. BACKGROUND (STATIC)
          
          Capsule()
            .fill(Color.white.opacity(0.2))
          
          Capsule()
            .fill(Color.white.opacity(0.2))
            .padding(8)
          
          // 2. CALL-TO-ACTION (STATIC)
          // 3. CAPSULE (DYNAMIC WIDTH)
          // 4. CIRCLE (DRAGGABLE)
          
          
        } //: FOOTER
        .frame(height: 80, alignment: .center)
        .padding()
      }
    } //: VSTACK
  } //: ZSTACK
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
