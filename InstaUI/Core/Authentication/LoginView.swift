//
//  LoginView.swift
//  InstaUI
//
//  Created by Welliton da Conceicao de Araujo on 23/05/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            Spacer()
            VStack {
                //Logo
                Image("instagram")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 80)
                    .padding(.bottom)
                
                // Fiels
                VStack {
                    TextField("Seu email", text: $email)
                        .textInputAutocapitalization(.never)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                
                    
                    SecureField("Sua senha", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                       
                }
                .padding(.horizontal, 25)
                Button {
                    
                } label: {
                    Text("Esqeuceu sua senha?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button {
                    
                } label: {
                    Text("Entrar")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 340, height:  44)
                        .foregroundColor(.white)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                .padding(.vertical)

                HStack {
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.3)
                    
                    Text("OU")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.3)
                }
                .foregroundColor(.gray)
                
                HStack {
                    Image("facebook")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .clipShape(Circle())
                    
                    Text("Continue com Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                
                .padding(.top, 10)
            }
            
            
            Spacer()
            Divider()
            
            NavigationLink {
                Text("Criar Conta")
            } label: {
                HStack {
                    Text("Não possui uma conta?")
                    
                    Text("Criar uma conta")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
       
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
