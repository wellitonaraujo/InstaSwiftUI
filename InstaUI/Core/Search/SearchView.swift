//
//  SearchView.swift
//  InstaUI
//
//  Created by Welliton da Conceicao de Araujo on 23/05/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 14) {
                    ForEach(0 ... 15, id: \.self) { user in
                        HStack() {
                            Image("profile")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            
                            VStack(alignment: .leading) {
                                Text("welliton")
                                    .fontWeight(.semibold)
                                
                                Text("Welliton Araujo")
                            }
                        }
                        .font(.footnote)
                    }
                    .padding(.horizontal)
                }
               
                .padding(.top, 10)
                .searchable(text: $searchText, prompt: "Buscar...")
            }
            .navigationTitle("Explorar")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
