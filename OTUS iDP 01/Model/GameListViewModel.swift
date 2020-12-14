//
//  GameList.swift
//  OTUS iDP 01
//
//  Created by Igor Andryushenko on 14.12.2020.
//

import Foundation


final class GameListVM: ObservableObject {
    
    @Published private(set) var games = [
        Game(imageName: "circle.grid.cross", name: "first"),
        Game(imageName: "circle.grid.cross.fill", name: "second"),
        Game(imageName: "circle.grid.cross.left.fill", name: "thrid"),
        Game(imageName: "circle.grid.cross.up.fill", name: "fourth"),
        Game(imageName: "circle.grid.cross.right.fill", name: "fifth"),]
}

struct Game: Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let name: String
}
