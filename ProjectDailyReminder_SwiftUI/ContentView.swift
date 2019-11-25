//
//  ContentView.swift
//  ProjectDailyReminder_SwiftUI
//
//  Created by Hoang Tran on 10/24/19.
//  Copyright © 2019 Hoang Tran. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selectedView = 0
    var body: some View {
        TabView(selection: $selectedView) {
           Dashboard()
                .tabItem {
                    Image(systemName: "list.bullet")
            }.tag(0)
            Setting()
                .tabItem {
                    Image(systemName: "checkmark.circle")
            }.tag(1)
        }
        .accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}
