//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Teague Cole on 3/6/22.
//

import Foundation

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
