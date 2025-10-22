//
//  PaymentCardType.swift
//  PayUp
//
//  Created by João Vitor on 21/10/25.
//

import UIKit

enum PaymentCardType {
    case incoming
    case transaction
    
    var iconName: String {
        switch self {
        case .incoming:
            return "calendardollar"
        case .transaction:
            return "coins"
        }
    }
    
    var subtitle: String {
        switch self {
        case .incoming:
            return "A receber"
        case .transaction:
            return "Recebido"
        }
    }
}
