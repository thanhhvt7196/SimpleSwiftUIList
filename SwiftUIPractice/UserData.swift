//
//  UserData.swift
//  SwiftUIPractice
//
//  Created by thanh tien on 11/7/20.
//

import Foundation
import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoriteOnly = false
    @Published var landmarks = getData()
}
