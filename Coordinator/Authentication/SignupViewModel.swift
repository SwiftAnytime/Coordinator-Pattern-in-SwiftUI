//
//  SignupViewModel.swift
//  Coordinator
//
//  Created by Mayank Gupta on 30/07/24.
//

import Foundation

final class SignupViewModel: ObservableObject {
    
    private let coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func dismiss() {
        coordinator.dismissCover()
    }

}