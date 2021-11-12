//
//  ListesUtilisateurs.swift
//  PlayingPlanete
//
//  Created by mac06 on 29/10/2021.
//

import SwiftUI

struct ListesUtilisateurs: View {
    @State var mesAmis : [String] = ["Famille Raoult"]
    var body: some View {
        NavigationView{
            List{
                
                ForEach (mesAmis, id: \.self){ mesAmis in
            Text (mesAmis.description)
                
                }
            
                NavigationLink{
                    ProfilAmisView( detailProfil: Database.profil1 )
                }label : {
                    HStack{
                    Text ("🐻")
                    Text (Database.profil1.pseudoName)
                    }.font(.title3)
                }
                NavigationLink{
                    ProfilAmisView(detailProfil: Database.profil2)
                }label :{
                    HStack{
                    Text ("🐼")
                    Text (Database.profil2.pseudoName)
                    }.font(.title3)
                }
                NavigationLink{
                    ProfilAmisView (detailProfil: Database.profil3)
                } label :{
                    HStack{
                    Text ("🐨")
                    Text (Database.profil3.pseudoName)
                    }.font(.title3)
                }
                Button ("Ajouter"){
                    mesAmis.append("r" + " Famille")
                }
            
            }//fin de liste
            .navigationTitle("Mes Amis")
        }//Fin de Nav View
    }
}

struct ListesUtilisateurs_Previews: PreviewProvider {
    static var previews: some View {
        ListesUtilisateurs()
    }
}
