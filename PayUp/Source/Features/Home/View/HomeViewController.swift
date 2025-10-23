//
//  HomeViewController.swift
//  PayUp
//
//  Created by João Vitor on 18/10/25.
//

import Foundation
import UIKit

final class HomeViewController: UIViewController {
    private let homeView = HomeView()
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        setupCallForAddClient()
    }
    
    private func setupCallForAddClient() {
        homeView.onTapAddClient = { [weak self] in
            guard let self = self else { return }
            let formViewController = ClientFormViewController(mode: .add)
            formViewController.modalTransitionStyle = .crossDissolve
            formViewController.modalPresentationStyle = .overFullScreen
            self.present(formViewController, animated: true)
        }
    }
}
