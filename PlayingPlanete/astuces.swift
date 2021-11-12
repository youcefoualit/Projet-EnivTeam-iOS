//
//  astuces.swift
//  PlayingPlanete
//
//  Created by mac29 on 04/11/2021.
//

import SwiftUI

struct astuces: View {
    var body: some View {
        
        
        
        
        
        List{
            
            Group{
                Image("desfeuillesprise")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 260, height:90)
                    .cornerRadius(10)
                
                Text("Chauffage et Chauffe-eau")
                    .font(.title)
                    .padding()
                
                
                Text("Faire vérifier la chaudière tous les ans, c’est obligatoire et utile pour un bon rendement.")
                
                Text("Installer un thermostat")
                
                Text("Dépoussiérer régulièrement les radiateurs.")
                
                Text("Isoler le chauffe-eau et les tuyaux")
                
                Text("Fermer les volets et les rideaux le soir, même quand on a de bons doubles vitrages.")
                
            }
            .font(.title3)
            Group{
                
                Text("Placer des joints si les fenêtres laissent passer l’air.")
                
                Text("Limiter la température de chauffe à 19 °C, baisser la température à 18, voire 17 °C la nuit, à 16 °C dans la journée quand on est absent.")
                
                Text("Ouvrir grand les fenêtres pendant 10 minutes pour renouveler l’air efficacement.")
                
                Text("Réglez la température du  chauffe-eau entre 55°C à 60°C.")
                
                Text("Dès que la température extérieure est plus douce, baissez le chauffage.")
                
                Text("Si vous partez plus d'une journée, mettez le chauffage en mode hors gel et coupez le ballon d’eau chaude électrique.")
            }
            .font(.title3)
        }.navigationTitle("Conseils")
    }
}



struct astuces_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView  {astuces()
        }
    }
}
