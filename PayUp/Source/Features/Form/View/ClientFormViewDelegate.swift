//
//  ClientFormViewDelegate.swift
//  PayUp
//
//  Created by João Vitor on 22/10/25.
//

protocol ClientFormViewDelegate: AnyObject {
    func didTapCancel()
    func didTapSave()
    func didTapDelete()
}
