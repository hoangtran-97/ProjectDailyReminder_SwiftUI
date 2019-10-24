//
//  Dashboard.swift
//  ProjectDailyReminder_SwiftUI
//
//  Created by Hoang Tran on 10/24/19.
//  Copyright © 2019 Hoang Tran. All rights reserved.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        NavigationView{
            ZStack{
                Rectangle()
                    .fill(Color.gray)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 80)
                    .cornerRadius(10)
                HStack(){
                    ZStack{
                        Rectangle()
                            .fill(Color.green)
                            .frame(minWidth: 0, maxWidth: 80, minHeight: 0, maxHeight: 80)
                            .cornerRadius(10)
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    HStack{
                        Text("Reminder Item")
                        Text("-")
                        Text("DateTime")
                    }
                    Spacer()
                }
                
                
                
            }
            .padding(.horizontal)
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
