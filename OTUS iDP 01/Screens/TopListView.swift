//
//  TopListView.swift
//  OTUS iDP 01
//
//  Created by Igor Andryushenko on 14.12.2020.
//

import SwiftUI

struct TopScreen: View {
    
    @Binding var selectStr: String?
    
    @ObservedObject var gameDetailVM = GameListVM()
    
    var body: some View {
        
        VStack{
            
            Image(systemName: "dpad.up.fill")
                .renderingMode(.template)
                .foregroundColor(.red).font(Font.system(size: 72))
            Text("New")
                .font(Font.system(size: 48))
            
            NavigationView {
                
                List() {
                    
                    ForEach(0..<gameDetailVM.games.count) { i in
                        NavigationLink(destination: GameDetailScreen(imageName: gameDetailVM.games[i].imageName, name: gameDetailVM.games[i].name), tag: gameDetailVM.games[i].name, selection: $selectStr) {
                            cell(game: gameDetailVM.games[i])
                        }
                    }
                }
            }
            Spacer()
        }
    }
    
    func cell(game: Game) -> some View {
        
        HStack{
            
            Image(systemName: game.imageName)
                .renderingMode(.template)
                .foregroundColor(.red).font(Font.system(size: 36))
            Text(game.name)
                .foregroundColor(Color.black)
                .font(Font.system(size: 36))

        }
    }
}


struct GameDetailScreen: View {
    
    let imageName: String
    let name: String
    
    var body: some View {
        VStack{
            Image(systemName: imageName)
                .renderingMode(.template)
                .foregroundColor(.red).font(Font.system(size: 36))
            Text((name))
                .foregroundColor(Color.black)
                .font(Font.system(size: 36))
        }
    }
}


