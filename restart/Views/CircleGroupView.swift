//
//  CircleGroupView.swift
//  restart
//
//  Created by Andres Mendieta on 15/02/23.
//

import SwiftUI

struct CircleGroupView: View {
    var body: some View {
      ZStack {
        Circle()
          .stroke(.white.opacity(0.2), lineWidth: 40)
          .frame(width: 260, height: 260, alignment: .center)
        Circle()
          .stroke(.white.opacity(0.2), lineWidth: 80)
          .frame(width: 260, height: 260, alignment: .center)
      } //: ZSTACK
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
      ZStack {
        Color("ColorBlue")
          .ignoresSafeArea(.all, edges: .all)
        
        CircleGroupView()
      }
    }
}
