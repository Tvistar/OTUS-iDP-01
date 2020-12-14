//
//  NewScreen.swift
//  OTUS iDP 01
//
//  Created by Igor Andryushenko on 14.12.2020.
//

import SwiftUI

struct NewScreen: View {
    
    @Binding var innerSelection: Int
    @Binding var selectStr: String?
    
    @ObservedObject var gameDetailVM = GameListVM()
    
    var body: some View {
        
        VStack{
            Spacer()
            
            Image(systemName: "dpad.left.fill")
                .renderingMode(.template)
                .foregroundColor(.red).font(Font.system(size: 72))
            Text("New")
                .font(Font.system(size: 48))
            
            Spacer()
            
            Button(action: {
                
                if gameDetailVM.games.count > 2{
                    selectStr = gameDetailVM.games[1].name
                }
                innerSelection = 1
                
            }) {
                HStack{
                    
                    Image(systemName: "chevron.up.circle.fill")
                        .renderingMode(.template)
                        .foregroundColor(.gray).font(Font.system(size: 36))
                    Text("Go To Top and Click Second Element")
                        .foregroundColor(.gray)
                        .font(Font.system(size: 36))
                    
                }
            }
            Spacer()
        }
    }
}
