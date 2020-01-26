//
//  UserListViewModel.swift
//  DemoSwiftUI
//
//  Created by Ankush Bhatia on 21/01/20.
//  Copyright © 2020 Ankush Bhatia. All rights reserved.
//

import Foundation

class UserListViewModel: Identifiable {

    var id = UUID()
    var name: String

    init(name: String) {
        self.name = name
    }

    static func data() -> [UserListViewModel] {
        let users = (0...10).map({ _ in  UserListViewModel(name: "User \(Int.random(in: (1...20)))") })
        return users
    }

}
