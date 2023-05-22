//
//  UserStatView.swift
//  InstaUI
//
//  Created by Welliton da Conceicao de Araujo on 22/05/23.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
        .frame(width: 80)
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 10, title: "Posts")
    }
}
