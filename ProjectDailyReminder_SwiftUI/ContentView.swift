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
            Text("First View")
                .tabItem {
                    Image(systemName: "list.bullet")
                        .foregroundColor(Color.green)
            }.tag(0)
            Text("Second View")
                .tabItem {
                    Image(systemName: "checkmark.circle")
            }.tag(1)
            Text("Second View")
                .tabItem {
                    Image(systemName: "gear")
            }.tag(2)
        }
        .accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
