//
//  WalkthroughView.swift
//  Coordinator
//
//  Created by Mayank Gupta on 15/07/24.
//

import SwiftUI

struct WalkthroughView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        VStack {
            Spacer()
            Button {
                coordinator.push(page: .login)
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
    WalkthroughView()
}
