//
//  CircleGroupView.swift
//  restart
//
//  Created by Andres Mendieta on 15/02/23.
//

import SwiftUI

struct CircleGroupView: View {
  // MARK: - PROPERTY
  
  @State var ShapeColor: Color
  @State var ShapeOpacity: Double
  private let radious = UIScreen.main.bounds.width * 0.65
  
  // MARK: - BODY
  
  var body: some View {
    ZStack {
      Circle()
        .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: radious/6)
        .frame(width: radious, height: radious, alignment: .center)
      Circle()
        .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: radious/3)
        .frame(width: radious, height: radious, alignment: .center)
    } //: ZSTACK
  }
}

struct CircleGroupView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color("ColorBlue")
        .ignoresSafeArea(.all, edges: .all)
      
      CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
    }
  }
}
