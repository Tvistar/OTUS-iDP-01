//
//  FavoritesView.swift
//  OTUS iDP 01
//
//  Created by Igor Andryushenko on 14.12.2020.
//

import SwiftUI

struct FavoritesScreen: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        
        Button(action: {
            showModal = true
        }) {
            
            Image(systemName: "rectangle.portrait.fill")
                .renderingMode(.template)
                .foregroundColor(.gray).font(Font.system(size: 72))
            Text("Modal")
                .foregroundColor(Color.gray)
                .font(Font.system(size: 36))
            
        }.sheet(isPresented: $showModal) {
            
            VStack{
                Image(systemName: "star.circle.fill")
                    .renderingMode(.template)
                    .foregroundColor(.red).font(Font.system(size: 72))
                Text("Favorites")
                    .font(Font.system(size: 48))
            }
        }
    }
}

