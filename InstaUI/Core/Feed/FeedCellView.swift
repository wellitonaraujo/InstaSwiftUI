//
//  FeedCellView.swift
//  InstaUI
//
//  Created by Welliton da Conceicao de Araujo on 22/05/23.
//

import SwiftUI

struct FeedCellView: View {
    var body: some View {
        VStack {
            // Image - username
            HStack {
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                
                Text("welliton")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            // Posts image
            
            Image("coffee")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // Action button
            HStack {
                Button {
                   //
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                   //
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                   //
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            // likes
            
            Text("102 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            // caption label
            
            HStack {
                Text("welliton ").fontWeight(.semibold) +
                Text("Em programação, a instrução 'if/else' é usada para controlar o fluxo.")
                
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6 Horas atrás")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

struct FeedCellView_Previews: PreviewProvider {
    static var previews: some View {
        FeedCellView()
    }
}
