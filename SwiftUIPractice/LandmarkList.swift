//
//  LandmarkList.swift
//  SwiftUIPractice
//
//  Created by thanh tien on 11/7/20.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoriteOnly, label: {
                    Text("Show favorite only")
                })
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoriteOnly || landmark.favorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle("thanh")
        }
    }

}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
