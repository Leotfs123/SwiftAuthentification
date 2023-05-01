//
//  SignInEmailView.swift
//  SwiftAuthentification
//
//  Created by Leo Chen on 2023-05-01.
//

import SwiftUI

@MainActor
final class SignInEmailViewModel: ObservableObject
{
    @Published var email = ""
    @Published var password = ""
}
struct SignInEmailView: View {
    @StateObject private var viewModel = SignInEmailViewModel()
    var body: some View {
        VStack
        {
            TextField("Email...",text: $viewModel.email)
                .padding()
                .background (Color.gray.opacity(0.3))
                .cornerRadius(10)
            SecureField("Mot de Passe...",text:$viewModel.password)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
        
        Button{
        }label: {
            Text ("Se connecter")
                .font(.headline)
                .foregroundColor(.white)
                .frame (height: 55)
                .frame (maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
            }
        Spacer()
        }
        .padding()
        .navigationTitle("Login avec email")
    }
}
    

struct SignInEmailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack
        {
            SignInEmailView()
        }
    }
}

