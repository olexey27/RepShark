//
//  TopPartDetailView.swift
//  RepShark
//
//  Created by Alexej K on 27/07/2025.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    @State private var isAnimation: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimation ? -50 : -75)
            
            Spacer()
            
            // PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimation ? 0 : -35)
        }) //: HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimation.toggle()
            }
        })
    }
}

// MARK: - BODY

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
