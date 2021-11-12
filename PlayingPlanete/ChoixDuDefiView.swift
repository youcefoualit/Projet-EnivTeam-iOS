//
//  ChoixDuDefiView.swift
//  PlayingPlanete
//
//  Created by mac06 on 03/11/2021.
//

import SwiftUI

struct ChoixDuDefiView: View {
    
    @State var shouldDisplaySheet: Bool = false
    var body: some View {
        ZStack{
          
        VStack{
           
        Image ("imageecran1")
                .resizable()
                .scaledToFit()
                .clipped()
                .padding()
                .cornerRadius(80)
            
            Button("Défi Electricité") {
                shouldDisplaySheet = true
            }
            .padding(30)
            .frame(width: 250)
            .foregroundColor(.white)
            .background(Color.accentColor)
            .cornerRadius(40)
            
            .padding()
            
            Button("Défi Eau") {
                shouldDisplaySheet = true
            }
            .padding(30)
            .frame(width: 250)
            .foregroundColor(.white)
            .background(Color.accentColor)
            .cornerRadius(40)
            .padding()
          
            
        }//Fin VStack
        
        .navigationTitle("Playing Planete")
        .sheet(isPresented: $shouldDisplaySheet) {
            // vue a afficher dans la modale/sheet
            NavigationView {
                DefisElecView(surface: "")
            }
        }
        }//fin ZStack
    }
}

struct ChoixDuDefiView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{ ChoixDuDefiView()
        }
    }
}
