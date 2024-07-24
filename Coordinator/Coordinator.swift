//
//  Coordinator.swift
//  Coordinator
//
//  Created by Mayank Gupta on 20/07/24.
//

import Foundation
import SwiftUI


class Coordinator: ObservableObject {
    @Published var path: NavigationPath = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    
    func push(page: AppPages) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func presentSheet(_ sheet: Sheet) {
        self.sheet = sheet
    }
    
    func presentFullScreenCover(_ cover: FullScreenCover) {
        self.fullScreenCover = cover
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissCover() {
        self.fullScreenCover = nil
    }
    
    @ViewBuilder
    func build(page: AppPages) -> some View {
        switch page {
        case .main: WalkthroughView()
        case .login: LoginView()
        }
    }
    
    @ViewBuilder
    func buildSheet(sheet: Sheet) -> some View {
        switch sheet {
        case .forgotPassword: ForgotPasswordView()
        }
    }
    
    @ViewBuilder
    func buildCover(cover: FullScreenCover) -> some View {
        switch cover {
        case .signup: SignupView()
        }
    }
}
