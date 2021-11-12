//
//  Database.swift
//  PlayingPlanete
//
//  Created by mac06 on 29/10/2021.
//

import Foundation

struct Database{
    static let profil1 : User = User (pseudoName: "Famille Martin ", amisProfil:"Mes amis : " + " Famille Dupond", ville: "Lyon", numeroLinky: "12 34 26 357 951 36", surfaceLogement: 90, logement: "Maison", mesDefis: [])
//    static let defi1 : Defi = Defi (titre: "", description: "", dateFin: <#Date#>, dateFin: , consomationAdversaire: 23, maConsomationActuelle: 24, maConsommationObjectis: 34, monAdversaire: <#User#>, monAdversaire: , resutat: "")
    
    static let profil2 : User = User (pseudoName: "Famille Macron ", amisProfil:"Mes amis : " + "Famille Jado", ville: "Paris", numeroLinky: "12 34 26 357 951 36", surfaceLogement: 100, logement: "Maison", mesDefis: [])
    static let profil3 : User = User (pseudoName: "Famille Zemmour ", amisProfil: "Mes amis : " + "Famille Le Pen", ville: "Toulon", numeroLinky: "12 34 26 357 951 36", surfaceLogement: 85, logement: "Maison", mesDefis: [])
}
