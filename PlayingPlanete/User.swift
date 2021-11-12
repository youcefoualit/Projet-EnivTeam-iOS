//
//  User.swift
//  PlayingPlanete
//
//  Created by mac06 on 29/10/2021.
//

import Foundation
struct User {
    let pseudoName : String
    let amisProfil : String
    let ville :String
    let numeroLinky : String
    let surfaceLogement : Int
    let logement : String //Appt Maison
    let mesDefis : [Defi]
    var partiesJouées : Int { mesDefis.count }
//    let partiesPerdues : String
//    let mesAdversaires : String
    
    
    
}

//enum ResultatDefi {
//    case enCours
//    case gagne
//    case perdu
//}

struct Defi{
    let titre : String
    let description : String
    let dateFin : Date
    let consomationAdversaire : Int
    let maConsomationActuelle : Int
    let maConsommationObjectis : Int
    let monAdversaire : User
    let resutat: String //enCours gagne perdu
}

