//
//  Expenses.swift
//  iExpense
//
//  Created by Teague Cole on 3/6/22.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        // read data from user defaults
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            // if we can read it, try to decode it
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                items = decodedItems
                return
            }
        }
        items = []
    }
}
