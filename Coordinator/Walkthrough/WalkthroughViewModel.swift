//
//  WalkthroughViewModel.swift
//  Coordinator
//
//  Created by Mayank Gupta on 30/07/24.
//

import Foundation

class WalkthroughViewModel: ObservableObject {
    
    private let coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func didTapGetStarted(page: AppPages) {
        coordinator.push(page: page)
    }
    
    
}
