//
//  UIView+Ext.swift
//  PayUp
//
//  Created by João Vitor on 15/10/25.
//

import Foundation
import UIKit

extension UIView {
    func animateMoveOut(to point: CGPoint, duration: TimeInterval) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseInOut) {
            self.center = point
            self.alpha = 0
        }
    }
}
