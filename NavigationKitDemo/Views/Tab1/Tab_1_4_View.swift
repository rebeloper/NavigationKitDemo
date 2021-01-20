//
//  Tab_1_4_View.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 20.01.2021.
//

import SwiftUI
import NavigationKit

struct Tab_1_4_View: View {
    var body: some View {
        VStack {
            Text("")
            Spacer()
        }.customNavigationBar(titleView:
                                HStack {
                                    Text("TODAY").font(.title).fontWeight(.light)
                                    Spacer()
                                    Text(todayString().uppercased()).font(.title).fontWeight(.light)
                                },
                              backgroundView:
                                Color(.secondarySystemBackground).edgesIgnoringSafeArea(.top)
        )
    }
    
    func todayString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE MM/dd"
        return formatter.string(from: Date())
    }
}

struct Tab_1_4_View_Previews: PreviewProvider {
    static var previews: some View {
        Tab_1_4_View()
    }
}
