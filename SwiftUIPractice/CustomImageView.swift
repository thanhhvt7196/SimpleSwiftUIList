//
//  CustomImageView.swift
//  SwiftUIPractice
//
//  Created by thanh tien on 11/7/20.
//

import SwiftUI

struct CustomImageView: View {
    var body: some View {
        Image("jisoo")
            .resizable()
            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CustomImageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomImageView()
    }
}
