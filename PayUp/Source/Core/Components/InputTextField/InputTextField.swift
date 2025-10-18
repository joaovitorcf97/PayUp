//
//  InputTextField.swift
//  PayUp
//
//  Created by João Vitor on 18/10/25.
//

import Foundation
import UIKit

final class InputTextField: UIView {
    private let titleLabel: UILabel = {
        let label = UILabel()
        //label.font = Fonts.titleSmall()
        label.textColor = Colors.textHeading
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let textField: UITextField = {
        let field = UITextField()
        field.backgroundColor = Colors.backgroundTertiary
        field.textColor = Colors.textLabel
        //field.font = Fonts.paragraphMedium()
        field.layer.cornerRadius = 8
        field.layer.borderWidth = 1
        field.layer.borderColor = Colors.borderPrimary.cgColor
        field.translatesAutoresizingMaskIntoConstraints = false
        field.setLeftPaddingPoints(12)
        return field
    }()
    
    private let type: InputTextFieldType
    
    init(title: String, placeholder: String, type: InputTextFieldType = .normal) {
        self.type = type
        super.init(frame: .zero)
        setupView(placeholder: placeholder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(placeholder: String) {
        addSubview(titleLabel)
        addSubview(textField)
        
        setupConstraints()
        setupTextField(placeholder: placeholder)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            textField.heightAnchor.constraint(equalToConstant: 39),
            textField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            textField.leadingAnchor.constraint(equalTo: leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor),
            textField.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    private func setupTextField(placeholder: String) {
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [
                .foregroundColor: Colors.textPlaceholder,
                .font: Fonts.paragraphSmall(),
            ]
        )
        
        textField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
    }
    
    @objc
    private func textDidChange() {
        switch type {
        case .normal:
                break
        case .cellphone:
            maskPhoneNumber()
        case .cnpj:
            maskCNPJ()
        }
        
    }
    
    private func maskPhoneNumber() {
        
    }
    
    private func maskCNPJ() {
        
    }
}
