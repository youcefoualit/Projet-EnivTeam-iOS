//
//  TabBar.swift
//  test projet
//
//  Created by mac29 on 25/10/2021.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
        
        TabView{
            NavigationView {
                DefiCurrentView() //a modifier en fonction du nom du fichier
                   
                } .tabItem {
                    Text("Defis")
                    Image(systemName: "person.2.fill")
            }
            Ecranprofil(detailProfil: Database.profil1) //a modifier en fonction du nom du fichier
                .tabItem {
                    Text("profil")
                    Image(systemName:  "person.circle.fill")
                    
                    
                }
        }
    }
}






struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
