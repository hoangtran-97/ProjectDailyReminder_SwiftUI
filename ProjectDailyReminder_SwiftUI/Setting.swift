//
//  Setting.swift
//  ProjectDailyReminder_SwiftUI
//
//  Created by Hoang Tran on 10/24/19.
//  Copyright © 2019 Hoang Tran. All rights reserved.
//

import SwiftUI

struct Setting: View {
    var body: some View {
        NavigationView{
            Image(systemName: "moon")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.red)
                .navigationBarTitle(Text("Dark mode test"), displayMode: .large)
                .navigationBarHidden(false)
        }
       
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
