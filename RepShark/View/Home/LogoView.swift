//
//  LogoView.swift
//  RepShark
//
//  Created by Alexej K on 14/07/2025.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text(" Rep".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.red)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("shark".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.gray)
        } //: HSTACK
    }
}

struct LogoView_Preview: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
