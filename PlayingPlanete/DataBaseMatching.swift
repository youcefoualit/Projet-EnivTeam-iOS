//
//  DataBaseMatching.swift
//  EnvTeam
//
//  Created by mac02 on 03/11/2021.
//

import Foundation

struct  DataBaseMatching{
    
   
    static let youcef:ImageMatchmaking=ImageMatchmaking(id:1, imageName: "Famille1" , name: "Famille Williams",logement: "Maison", surface: 80 ,maison: true)
    static let naji: ImageMatchmaking=ImageMatchmaking(id:2, imageName: "Famille2", name: " Famille Ben Mohamed", logement: "Appartement", surface: 70, maison: false)
    static let jules: ImageMatchmaking=ImageMatchmaking(id: 3, imageName: "Famille3", name: "Famille Durand", logement: "Maison", surface: 110, maison: true)
    static let yan:ImageMatchmaking=ImageMatchmaking(id:4, imageName: "Famille4", name: "Famille Cisse", logement: "Appartement", surface: 65, maison: false)
    static let claude: ImageMatchmaking=ImageMatchmaking(id:5, imageName: "Famille5", name: "Famille Nunez", logement: "Maison", surface: 90, maison: true)
    static let mahfoud: ImageMatchmaking=ImageMatchmaking(id:6, imageName: "Famille6", name: "Famille Curtis", logement: "Appartement", surface: 95, maison: false)
    static let abdelhady:ImageMatchmaking=ImageMatchmaking(id:7, imageName: "Famille7", name: "Famille Martin", logement: "Maison", surface: 86, maison: true)
    static let mustapha: ImageMatchmaking=ImageMatchmaking(id:8, imageName: "Famille8", name: "Famille Dupond", logement: "Appartement", surface: 100, maison: false)
    static let nacima: ImageMatchmaking=ImageMatchmaking(id:9, imageName: "Famille9", name: "Famille Raymond", logement: "Maison", surface: 120, maison: true)
    static let loic: ImageMatchmaking=ImageMatchmaking(id:10, imageName: "Famille10", name: "Famille Jones", logement: "Appartement", surface: 60, maison: false)
    static let li: ImageMatchmaking=ImageMatchmaking(id:11, imageName: "Famille11", name: "Famille Wallace", logement: "Maison", surface: 95, maison: true)
    static let brahim: ImageMatchmaking=ImageMatchmaking(id:12, imageName: "Famille12", name: "Famille Muller", logement: "Appartement", surface: 75, maison: false)
    static let hugo: ImageMatchmaking=ImageMatchmaking(id:13, imageName: "Famille13", name: "Famille Pelletier", logement: "Maison", surface: 120, maison: true)
    static let cederic: ImageMatchmaking=ImageMatchmaking(id:14, imageName: "Famille14", name: "Famille Johnson", logement: "Appartement", surface: 90, maison: false)
    static let lise: ImageMatchmaking=ImageMatchmaking(id:15,imageName: "Famille15",name:"Famille Jones", logement: "Maison", surface: 80,maison: false)
    
    static let all = [
     
        youcef,
        naji,
        jules,
        yan,
        claude,
        mahfoud,
        abdelhady,
        mustapha,
        nacima,
        loic,
        li,
        brahim,
        hugo,
        cederic,
        lise]
    
}
