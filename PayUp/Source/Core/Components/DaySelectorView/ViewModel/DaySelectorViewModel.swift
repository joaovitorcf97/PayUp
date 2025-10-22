//
//  DaySelectorViewModel.swift
//  PayUp
//
//  Created by João Vitor on 21/10/25.
//

import Foundation

final class DaySelectorViewModel {
    let days: [String] = ["SEG", "TER", "QUA", "QUI", "SEX", "SAB", "DOM"]
    private let calendar = Calendar.current
    var onDaySelected: ((Int) -> Void)?
    
    var selectedIndex: Int {
        let weekday = calendar.component(.weekday, from: Date())
        return (weekday + 5) % 7
    }
    
    func selectDay(at index: Int) {
        onDaySelected?(index)
    }
}
