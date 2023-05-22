//
//  FeedView.swift
//  InstaUI
//
//  Created by Welliton da Conceicao de Araujo on 22/05/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 24) {
                    ForEach(0 ... 10, id: \.self) { posts in
                        FeedCellView()
                    }
                }
            } // scrollView
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("instagram")
                        .resizable()
                        .frame(width: 100, height:  34)
                    
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "heart")
                        .imageScale(.large)
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "ellipsis.message")
                        .imageScale(.large)
                    
                }
                
            }
        } // navigation
    
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
