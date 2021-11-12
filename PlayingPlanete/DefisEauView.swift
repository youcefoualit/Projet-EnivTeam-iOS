//
//  DefisView2.swift
//  PlayingPlanete
//
//  Created by mac35 on 03/11/2021.
//

import SwiftUI

struct DefisView2: View {
    @State var surface : String
    @State var selected = 1
    
    
    var body: some View {
        ZStack{

        VStack{
            Text("Le veritable Défi").font(.largeTitle)
            Text("C'est de faire").font(.largeTitle)
            Text("Des économies Energies").font(.largeTitle)
            
            Picker(selection: $selected, label: Text("Pickers"), content: {
                Text("Appartement").tag(1)
                Text("Maison").tag(2)
                
            })
                .pickerStyle(SegmentedPickerStyle())
                .padding()
            
            
            TextField("Surface en m²", text: $surface)
                .padding(130)
            VStack{
                NavigationLink {
                    Matchmaking(users: DataBaseMatching.all)
                } label :{
                    Text("Défis eau🚰")
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(20)
                }
                HStack{
                    
                    NavigationLink {
                        playscreen()
                    } label :{
                        Text("Valider")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(10)
                        }
                    }
                }
            }
        }
    }

struct DefisView2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {DefisView2(surface: "")
            }
        }
    }
}

