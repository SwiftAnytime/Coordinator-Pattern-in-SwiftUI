//
//  WalkthroughView.swift
//  Coordinator
//
//  Created by Mayank Gupta on 15/07/24.
//

import SwiftUI

struct WalkthroughView<ViewModel: WalkthroughViewModel>: View {
    
    @StateObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            Spacer()
            Button {
                viewModel.didTapGetStarted(page: .login)
            } label: {
                Text("Get Started")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .padding(16)
            }
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .clipShape(.buttonBorder)
        }
        .padding(16)
    }
}

#Preview {
    WalkthroughView(viewModel: WalkthroughViewModel(coordinator: Coordinator()))
}
