//
//  CompanyViewModel.swift
//  PayUp
//
//  Created by João Vitor on 21/10/25.
//

import Foundation

final class CompanyViewModel {
    var componies: [CompanyItemModel] = []
    
    init(componies: [CompanyItemModel]) {
        self.componies = componies
    }
}
