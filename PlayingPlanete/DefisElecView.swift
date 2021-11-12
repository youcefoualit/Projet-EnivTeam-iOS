//
//  Page 3.swift
//  Test
//
//  Created by mac35 on 27/10/2021.
//

import SwiftUI

struct DefisElecView: View {
    @State var surface : String
    @State var selected = 1
    
    var body: some View {
       
            
        VStack{
            Text("Le veritable Défi").font(.largeTitle)
            Text("C'est de faire").font(.largeTitle)
            Text("Des économies Energies").font(.largeTitle)
           
            Picker(selection: $selected, label: Text("Pickers"), content: {
                Text("Appartement").tag(1)
                Text("Maison").tag(2)
                
            })
                .pickerStyle(SegmentedPickerStyle())
                
            HStack{
                Spacer()
                Text("Surface : ")
            TextField(" 80 ", text: $surface)
                    .frame(width : 50)
                    .keyboardType(.numberPad)
                Text ("m²")
                Spacer()
            }.padding()
            VStack(alignment: .leading){
            Text ("**Défi Chauffage et chauffe-eau:**")
             Text ("L'objectif est de consommer pendant une semaine \"200kWh de Chaufage et 100 KWh de chauffe-eau  ")
                
                Text("A savoir : Le chauffage et l’eau chaude représentent à eux deux près de **75 % des dépenses d’énergie d’un foyer français.** " ).foregroundColor(.accentColor)
            }.padding(.horizontal)
            VStack{
                NavigationLink {
                    LinkyView(numberLinky: "")
                } label :{
                    Text("Linky")
                        .padding()
                        .frame(width: 250)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .padding(10)
                    }
                
                
//                
//                NavigationLink {
//                    Matchmaking(users: DataBaseMatching.all)
//                } label :{
//                    Text("Défis Electricité ⚡️")
//                        .padding()
//                        .frame(width: 250)
//                        .foregroundColor(.white)
//                        .background(Color.accentColor)
//                        .cornerRadius(10)
//                        .padding(10)
//                }
              
                    
                    NavigationLink {
                        Matchmaking(users: DataBaseMatching.all)
                    } label :{
                        Text("Valider")
                            .padding()
                            .frame(width: 250)
                            .foregroundColor(.white)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                            .padding(10)
                        }
                   
                }
        }.navigationBarHidden(true)
        
    }
    
    struct Page_3_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {DefisElecView(surface: "")
                
            }
        }
    }
}



