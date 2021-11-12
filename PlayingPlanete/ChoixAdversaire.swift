//
//  ChoixAdversaire.swift
//  EnvTeam
//
//  Created by mac02 on 25/10/2021.
//

import SwiftUI

struct ChoixAdversaire: View {
    let imageDefi: Image
    @State var nomDefi:String
    @State var animationAmount = 1.0
    var body: some View {
        VStack{
            
            VStack{
                Text("Défis « Eau »:").bold()
                Text("    Défi de la chasse d’eau :Consommer 10 litres/jour et par personne pendant une semaine!").bold()
                VStack{
                    Text("A savoir :").bold()
                    Text(" En France, plus de 3 000 litres sont gaspillés, chaque seconde, dans nos chasses d’eau. Environ 6 litres à chaque nouvelle chasse d’eau, pour une moyenne basse de 20 litres par jour et par personne.")}
            }.padding(40)
            imageDefi.resizable().scaledToFill().frame(width: 120, height: 80).clipped().clipShape(Circle())
                
               
            Text("Défi "+nomDefi)
            Spacer()
            Text("Mes contacts").bold().padding().background(Color.green).cornerRadius(10)
            
            //NavigationLink matchmaking
            NavigationLink{Matchmaking(users: DataBaseMatching.all)}
      
        label:{
            Text("Matchmaking").bold().padding().background(Color.yellow).cornerRadius(10)
            
        }
            
            Spacer()
            
        }
        
        
     
    }//fin boddy
}// fin choixAdversaire

struct ChoixAdversaire_Previews: PreviewProvider {
    static var previews: some View {
        ChoixAdversaire(imageDefi: Image("electricite"),nomDefi: "électrique")
    }
}
