//
//  RootView.swift
//  SwiftAuthentification
//
//  Created by Leo Chen on 2023-05-02.
//

import SwiftUI

struct RootView: View {
    @State private var showingSignInView: Bool = false
    var body: some View {
        ZStack
        {
            NavigationStack
            {
                SettingsView(showingSignInView: $showingSignInView)
            }
        }
        .onAppear()
        {
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showingSignInView = authUser == nil
        }
        .fullScreenCover(isPresented: $showingSignInView)
        {
            NavigationStack
            {
                AuthentificationView(showSignInView: $showingSignInView)
            }
        }
            }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
