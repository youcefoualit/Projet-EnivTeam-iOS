//
//  Defis.swift
//  test projet
//
//  Created by mac29 on 25/10/2021.
//

import SwiftUI

enum TypeProfil {
    case famille2
    case famille1
}

struct playscreen: View {
    @State var typeProfil: TypeProfil = TypeProfil.famille1
    @AppStorage("EtatDuDefi") var etatDuDefi : EtatDuDefi = EtatDuDefi.nodefi
    var body: some View {
        ZStack{
        Form {
            Picker("", selection: $typeProfil) {
                Text("Famille Martin").tag(TypeProfil.famille1)
                Text("Famille Dupond").tag(TypeProfil.famille2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            
            switch typeProfil {
            case .famille1:
                VStack{
                    HStack{
                        Text("Temps restant: 3 jours")
                    }.padding()
                    Spacer()
                    
                    
                    HStack{
                        VStack{
                            Text("Informations:")
                                .font(.title3)
                            
                            Text("Maison")
                            
                            Text("100 m²")
                            
                            Text("Villeurbanne")
                        }.padding()
                            .foregroundColor(.white)
                            .background(Color.accentColor)
                            .cornerRadius(15)
                        Spacer()
                        Text("150 kWh->")
                        SimpleProgressBar(circleProgress: .constant(0.5), width: 50, height: 200, progressColor: .accentColor, staticColor: .gray)
                            .cornerRadius(10)
                        Spacer()
                    }
                 
//                    VStack{
//                        Text("Truc et astuce ")
//                        HStack{
//                            Spacer()
//                            Image("elec1")
//                                .resizable().scaledToFill().frame(width: 120, height: 80).clipped()
//                            Spacer()
//                            Image("elec2")
//                                .resizable().scaledToFill().frame(width: 120, height: 80).clipped()
//                            Spacer()
//                        }
//                        Spacer()
//                    }
                    
                }
                
            case .famille2:
              
                
                VStack{
                    HStack{
                        Text("Temps restant: 3 jours")
                    }.padding()
                    Spacer()
                
                    HStack{
                        VStack{
                            Text("Informations:")
                                .font(.title3)
                            
                            Text("Maison")
                            
                            Text("100 m²")
                            
                            Text("Lyon")
                        }.padding()
                            .foregroundColor(.white)
                            .background(Color.accentColor)
                            .cornerRadius(15)
                        Spacer()
                        Text("200 kWh->")
                        SimpleProgressBar(circleProgress: .constant(0.6), width: 50, height: 200, progressColor: .accentColor, staticColor: .gray)
                            .cornerRadius(10)
                       
                    }
        
                    
                        
                    
                
                }// Fin Vstack
               
                
                
                
            }
            NavigationLink{
                astuces()
            }label: {
                Text("Conseils ")
            }
            
           
        } // form
            
        .navigationTitle("Défi en cours")
            VStack{
                Spacer()
            HStack{
                Button("Defaite"){
                    etatDuDefi = .defaite
                }
                Spacer()
                Button ("Victoire"){
                    etatDuDefi = .victoire
                }
            }.padding()
                    .foregroundColor(.clear)
            }
        }
    }
}

        struct Defis_Previews: PreviewProvider {
            static var previews: some View {
                NavigationView {
                    playscreen()
                }
            }
        }
