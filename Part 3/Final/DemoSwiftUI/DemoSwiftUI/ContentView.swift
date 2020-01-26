//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Ankush Bhatia on 29/12/19.
//  Copyright © 2019 Ankush Bhatia. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var data: [UserListViewModel] = []

    var body: some View {
        NavigationView {
            List(data, rowContent: { viewModel in
                UserListItemView(viewModel: viewModel)
                    .frame(height: 100, alignment: .leading)
            })
                .navigationBarTitle(Text("Users"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(data: UserListViewModel.data())
                .environment(\.colorScheme, .dark)

            ContentView(data: UserListViewModel.data())
            .environment(\.colorScheme, .light)
        }
    }
}
