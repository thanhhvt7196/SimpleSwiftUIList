//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by thanh tien on 11/7/20.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: {$0.id == landmark.id })!
    }
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            CustomImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].favorite.toggle()
                    }, label: {
                        if self.userData.landmarks[self.landmarkIndex].favorite {
                            Image(systemName: "star.fill")
                                .imageScale(.medium)
                                .foregroundColor(.yellow)
                        } else {
                            Image(systemName: "star")
                                .imageScale(.medium)
                                .foregroundColor(.gray)
                        }
                    })
                }

                HStack(alignment: .top) {
                    Text(landmark.city)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: getData().first!)
    }
}
