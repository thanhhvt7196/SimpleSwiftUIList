//
//  LandmarkRow.swift
//  SwiftUIPractice
//
//  Created by thanh tien on 11/7/20.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()

            if landmark.favorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            } else {
                Image(systemName: "star")
                    .imageScale(.medium)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: getData().first!)
    }
}
