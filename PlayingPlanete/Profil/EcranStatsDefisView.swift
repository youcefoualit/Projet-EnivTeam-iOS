//
//  EcranStatsDefisView.swift
//  PlayingPlanete
//
//  Created by mac06 on 03/11/2021.
//

import SwiftUI

struct EcranStatsDefisView: View {
    
    var body: some View {
        List{
            Text ("Electricité : Chauffage et Chauffe-eau")
            Text ("Eau : Cuisiner avec moins d'eau possible")
            Text ("Electricité: Reduire les appareils en veille")
            Text ("Eau : La chasse à la chasse d'eau ")
            Text ("Electricité : C'est pas Verssaille Ici")
            
        }//fin list
        .navigationTitle("Défis")
    }
}

struct EcranStatsDefisView_Previews: PreviewProvider {
    static var previews: some View {
        EcranStatsDefisView()
    }
}
