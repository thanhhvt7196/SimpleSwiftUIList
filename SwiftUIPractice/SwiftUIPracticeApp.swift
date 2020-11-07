//
//  SwiftUIPracticeApp.swift
//  SwiftUIPractice
//
//  Created by thanh tien on 11/7/20.
//

import SwiftUI

func getData() -> [Landmark] {
    if let path = Bundle.main.path(forResource: "Landmark", ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let result = try JSONDecoder().decode([Landmark].self, from: data)
            return result
        } catch {
            return []
        }
    }
    return []
}

@main
struct SwiftUIPracticeApp: App {
    let datas = getData()
    var body: some Scene {
        WindowGroup {
            LandmarkList().environmentObject(UserData())
        }
    }
}

struct SwiftUIPracticeApp_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
