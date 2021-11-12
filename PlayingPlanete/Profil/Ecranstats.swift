//
//  Ecranstats.swift
//  Brouillonplayingplanete
//
//  Created by mac06 on 21/10/2021.
//

import SwiftUI

struct Ecranstats: View {
    var body: some View {
        
        
        VStack{
          
            List{
                NavigationLink{
                    EcranStatsDefisView ()
                } label :{
                Text("Mes défis")
                }
                Text("Parties jouées : 5")
                Text ("Parties gagnées : 3")
                Text("Parties perdues : 2")
                NavigationLink{
                    EcranStatsAdverView ()
                } label: {
                    Text("Mes adversaires")
                }
                
            }
        
        }//Fin VStack
        .navigationTitle("Statistiques")
   
        }
    
    }


struct Ecranstats_Previews: PreviewProvider {
    static var previews: some View {
        Ecranstats()
    }
}
