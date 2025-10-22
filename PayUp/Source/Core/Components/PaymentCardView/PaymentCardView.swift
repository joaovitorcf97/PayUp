//
//  PaymentCardView.swift
//  PayUp
//
//  Created by João Vitor on 21/10/25.
//

import Foundation
import UIKit

final class PaymentCardView: UIView {
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = Colors.accentOrange
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let subTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = Fonts.paragraphSmall()
        label.textColor = Colors.textParagraph
        return label
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = Fonts.titleSmall()
        label.textColor = Colors.textHeading
        return label
    }()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = Fonts.paragraphMedium()
        label.textColor = Colors.textParagraph
        return label
    }()
    
    private let container: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Colors.backgroundSecondary
        view.layer.cornerRadius = 8
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(container)
        container.addSubview(iconImageView)
        container.addSubview(subTitleLabel)
        container.addSubview(nameLabel)
        container.addSubview(valueLabel)
        
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor),
            container.leadingAnchor.constraint(equalTo: leadingAnchor),
            container.trailingAnchor.constraint(equalTo: trailingAnchor),
            container.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            iconImageView.topAnchor.constraint(equalTo: container.topAnchor, constant: 16),
            iconImageView.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 16),
            iconImageView.widthAnchor.constraint(equalToConstant: 24),
            iconImageView.heightAnchor.constraint(equalToConstant: 24),
            
            subTitleLabel.topAnchor.constraint(equalTo: iconImageView.topAnchor),
            subTitleLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 16),
            
            nameLabel.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant: 4),
            nameLabel.leadingAnchor.constraint(equalTo: subTitleLabel.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -32),
            
            valueLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            valueLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            valueLabel.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -12)
        ])
    }
    
    func configure(with model: PaymentCardModel) {
        let image = UIImage(named: model.type.iconName)
        
        iconImageView.image = image
        subTitleLabel.text = model.type.subtitle
        nameLabel.text = model.name
        valueLabel.text = model.value
    }
}
