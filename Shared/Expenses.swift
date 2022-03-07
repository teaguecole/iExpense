//
//  Expenses.swift
//  iExpense
//
//  Created by Teague Cole on 3/6/22.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
