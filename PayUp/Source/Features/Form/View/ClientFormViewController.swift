//
//  ClientFormViewController.swift
//  PayUp
//
//  Created by João Vitor on 22/10/25.
//

import UIKit

final class ClientFormViewController: UIViewController {
    private let mode: ClientFormMode
    private var hasInitializedPosition = false
    private lazy var contentView = ClientFormView(mode: mode)
    
    init(mode: ClientFormMode) {
        self.mode = mode
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        guard !hasInitializedPosition else { return }
        
        hasInitializedPosition = true
        contentView.containerView.transform = CGAffineTransform(translationX: 0, y: contentView.containerView.bounds.height)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.3) {
            self.contentView.containerView.transform = .identity
        }
    }
}

extension ClientFormViewController: ClientFormViewDelegate {
    func didTapCancel() {
        dismiss(animated: true)
    }
    
    func didTapSave() {
        dismiss(animated: true)
        // TODO: implement logic here
    }
    
    func didTapDelete() {
        let alert = UIAlertController(title: "Excluir Cliente", message: "Tem certeza que deseja excluir este cliente?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
        alert.addAction(UIAlertAction(title: "Excluir", style: .destructive) { _ in
            // TODO: implement logic here
            self.dismiss(animated: true)
        })
        present(alert, animated: true)
    }
}
