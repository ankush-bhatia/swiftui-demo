//
//  UserListItemView.swift
//  DemoSwiftUI
//
//  Created by Ankush Bhatia on 21/01/20.
//  Copyright © 2020 Ankush Bhatia. All rights reserved.
//

import SwiftUI

struct UserListItemView: View {

    var viewModel: UserListViewModel
    
    var body: some View {

        GeometryReader { proxy in

            // 1. HStack to hold the image and user details
            HStack {

                // 2. Adding image to the view.
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .leading)
                    .padding(.all, 10)

                // 3. VStack to hold the User Details
                VStack(alignment: .leading) {

                    // 4. Text elements to show the details of the user.
                    Text(self.viewModel.name)
                        .font(.system(.title))
                        .lineLimit(nil)

                    Text("iOS Engineer")
                        .font(.system(.subheadline))
                }
                .padding(.trailing, 10.0)

                // 5. Moves the elements of VStack to Left Side.
                Spacer()
            }
            .frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = UserListViewModel(name: "Ankush")
        return UserListItemView(viewModel: viewModel)
            .previewLayout(.fixed(width: 400, height: 150))
    }
}
