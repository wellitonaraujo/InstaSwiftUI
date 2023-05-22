//
//  ProfileView.swift
//  InstaUI
//
//  Created by Welliton da Conceicao de Araujo on 22/05/23.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // - HEADER
                VStack(spacing: 10) {
                    // Pick and stats
                    HStack {
                        Image("profile")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            UserStatView(value: 100, title: "Publicações")
                            UserStatView(value: 1000, title: "Seguidores")
                            UserStatView(value: 3, title: "Seguindo")
                        }
                    }
                    .padding(.horizontal)

                // Name and Bio
                VStack(alignment: .leading, spacing: 4) {
                    Text("Pototó do Mar")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Pode pah")
                        .font(.footnote)
                    
                } // - VStack
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                // action button
                Button {
                    
                } label: {
                    Text("Editar Perfil")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                }
                
                Divider()
            }// - VStack
                // - post grid view
                LazyVGrid(columns: gridItems, spacing: 2) {
                    ForEach(0 ... 14, id: \.self) {index in
                        Image("coffee")
                            .resizable()
                            .scaledToFill()
                    }
                    
                }
                
            }
            .navigationTitle("Perfil")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(Color(.black))
                    }
                }
            }
        }// - VSTack
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
