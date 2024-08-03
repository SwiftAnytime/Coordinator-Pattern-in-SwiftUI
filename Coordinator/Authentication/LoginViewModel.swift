//
//  LoginViewModel.swift
//  Coordinator
//
//  Created by Mayank Gupta on 30/07/24.
//

import Foundation

final class LoginViewModel: ObservableObject {
    
    private let coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func didTapForgotPassword(sheet: Sheet) {
        coordinator.presentSheet(sheet)
    }
    
    func didTapSignup(cover: FullScreenCover) {
        coordinator.presentFullScreenCover(cover)
    }
    
}
