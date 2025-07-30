//
//  RatingsSizesDetailView.swift
//  RepShark
//
//  Created by Alexej K on 28/07/2025.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - PROPERY
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    /*// MARK: - BODY
    
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // RATING
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })
            
            Spacer()
            
            // SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                    })}
                })
            })
        }) //: HSTACK
    }*/
    @State private var selectedRating: Int = 0
    @State private var selectedSize: String = "" // Neue State Variable für die Bewertung
        
        // **MARK: - BODY**
        
        var body: some View {
            HStack(alignment: .top, spacing: 3, content: {
                // RATING
                VStack(alignment: .leading, spacing: 3, content: {
                    Text("Rating")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(colorGray)
                    
                    HStack(alignment: .center, spacing: 3, content: {
                        ForEach(1...5, id: \.self) { item in
                            Button(action: {
                                // Bewertung setzen
                                selectedRating = item
                            }, label: {
                                Image(systemName: "star.fill")
                                    .frame(width: 28, height: 28, alignment: .center)
                                    .background(
                                        // Dynamische Farbgebung basierend auf der Bewertung
                                        (item <= selectedRating ? Color.yellow : colorGray)
                                            .cornerRadius(5)
                                    )
                                    .foregroundColor(.white)
                            })
                        }
                    })
                })
                
                Spacer()
                
                // SIZES
                VStack(alignment: .trailing, spacing: 3, content: {
                    Text("Sizes")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(colorGray)
                    
                    HStack(alignment: .center, spacing: 5, content: {
                        ForEach(sizes, id: \.self) { size in
                            Button(action: {
                                selectedSize = size
                            }, label: {
                                Text(size)
                                    .font(.footnote)
                                    .fontWeight(.heavy)
                                    .foregroundColor(colorGray)
                                    .frame(width: 28, height: 28, alignment: .center)
                                    .background(selectedSize == size ? Color.red : Color.white)
                                    .cornerRadius(5)
                                    .background(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(colorGray, lineWidth: 2)
                                    )
                            })
                        }
                    })
                })
            }) //: HSTACK
        }
}

// MARK: - PREVIEW

struct RatingsSizesDetailView_Preview: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
