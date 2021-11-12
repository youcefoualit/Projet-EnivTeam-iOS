//
//  EcranStatsAdverView.swift
//  PlayingPlanete
//
//  Created by mac06 on 03/11/2021.
//

import SwiftUI

struct EcranStatsAdverView: View {
   
    var body: some View {
        List{
            Text ("Famille Dupond")
            Text ("Famille Curtis")
            Text ("Famille Ben Mohamed")
            Text ("Famille Muller")
            Text ("Famille Nunez")
        }//fin list
        .navigationTitle("Mes Adeversaires")
    }
}

struct EcranStatsAdverView_Previews: PreviewProvider {
    static var previews: some View {
        EcranStatsAdverView()
    }
}
