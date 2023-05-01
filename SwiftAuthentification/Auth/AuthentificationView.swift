//
//  AuthentificationView.swift
//  SwiftAuthentification
//
//  Created by Leo Chen on 2023-05-01.
//

import SwiftUI

struct AuthentificationView: View {
    var body: some View {
        VStack {
            NavigationLink
            {
                Text("Bonjour")
            }
            label : {
                Text("Se connecter avec Email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame (maxWidth: .infinity)
                    .background (Color.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Se connecter")
    }
}

struct AuthentificationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthentificationView()
    }
}