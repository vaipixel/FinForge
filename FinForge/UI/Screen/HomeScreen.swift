//
//  HomeScreen.swift
//  FinForge
//
//  Created by 冯旭超 on 2024/3/29.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedTab = 0
    var body: some View {
        Tabbar()
    }
}

#Preview {
    HomeScreen()
}
