//
//  Test.swift
//  ProjectDailyReminder_SwiftUI
//
//  Created by Hoang Tran on 10/24/19.
//  Copyright © 2019 Hoang Tran. All rights reserved.
//

import SwiftUI

struct Test: View {
    @State private var users = ["Paul", "Taylor", "Adele"]
    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                .onDelete(perform: delete)
            }
        }
    }
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
