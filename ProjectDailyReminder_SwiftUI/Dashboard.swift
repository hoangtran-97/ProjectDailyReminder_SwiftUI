//
//  Dashboard.swift
//  ProjectDailyReminder_SwiftUI
//
//  Created by Hoang Tran on 10/24/19.
//  Copyright © 2019 Hoang Tran. All rights reserved.
//

import SwiftUI

struct Dashboard: View {
    @State private var reminderData = [[
                            "title": "Reminder 0",
                            "time": "150",
                            "mon": true,
                            "tue": true,
                            "wed": true,
                            "thu": true,
                            "fri": true,
                            "sat": false,
                            "sun": false,
                            "done": true,
                        ],
                        [
                            "title": "Reminder 1",
                            "time": "15",
                            "mon": true,
                            "tue": false,
                            "wed": true,
                            "thu": false,
                            "fri": true,
                            "sat": false,
                            "sun": true,
                            "done": false,
                            ]]
    var body: some View {
        NavigationView{
            ZStack{
                Rectangle()
                    .fill(Color.gray)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 80)
                    .cornerRadius(10)
                HStack{
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
                        VStack(alignment: .leading){
                            HStack{
                                Text("Reminder 0")
                                Text("-")
                                Text("Time")
                            }
                            .padding(5)
                            HStack(spacing: 30){
                                Text("M")
                                    .frame(width: 30, height: 30)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 50)
                                            .stroke(Color.green, lineWidth: 5)
                                )
                                Text("T")
                                Text("W")
                                Text("T")
                                Text("F")
                                Text("S")
                                Text("S")
                                 .foregroundColor(.red)
                            }
                        }
                        
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
