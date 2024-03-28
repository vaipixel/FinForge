//
//  Item.swift
//  FinForge
//
//  Created by 冯旭超 on 2024/3/28.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
