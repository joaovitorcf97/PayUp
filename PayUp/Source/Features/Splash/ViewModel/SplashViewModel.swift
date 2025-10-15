//
//  SplashViewModel.swift
//  PayUp
//
//  Created by João Vitor on 15/10/25.
//

import Foundation

final class SplashViewModel {
    var onAnimationCompleted: (() -> Void)?
    
    func performaInitialAnimation(completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            completion()
        }
    }
}
