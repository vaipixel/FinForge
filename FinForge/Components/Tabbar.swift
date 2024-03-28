//
//  Tabbar.swift
//  FinForge
//
//  Created by 冯旭超 on 2024/3/29.
//

import SwiftUI

struct Tabbar: View {
    @State var currentSelected: Tab = .bill
    @Namespace var animationNamespace
    var body: some View {
        HStack {
            ForEach(Tab.allCases, id: \.self) { tab in
                Button {
                    withAnimation(.spring(response: 0.3,dampingFraction: 0.7)) {
                        currentSelected = tab
                    }
                } label: {
                    VStack {
                        Image(systemName: tab.icon)
                            .font(.system(size: 24))
                            .frame(height: 30)
                        Text(tab.text)
                            .font(.body.bold())
                        
                    }
                    .foregroundColor(currentSelected == tab ? .pink : .secondary)
                    .frame(maxWidth: .infinity)
                    .background(
                        ZStack {
                            if currentSelected == tab {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.pink.opacity(0.2))
                                    .matchedGeometryEffect(id: "background_rectangle", in: animationNamespace)
                            }
                        }
                    )
                }
            }
        }
        .padding(6)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 4)
        .padding(.horizontal)
    }
}

enum Tab:CaseIterable {
    case bill
    case property
    
    var text: String {
        switch self {
        case .bill :
            return "Bill"
        case .property:
            return "Property"
        }
    }
    var icon: String {
        switch self {
        case .bill:
            return "book"
        case .property:
            return "location"
        }
    }
}
#Preview {
    Tabbar()
}
