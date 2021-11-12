//
//  Victoire.swift
//  test projet
//
//  Created by mac29 on 27/10/2021.
//

import SwiftUI

struct Victoire: View {
    @AppStorage("EtatDuDefi") var etatDuDefi : EtatDuDefi = EtatDuDefi.nodefi
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                
                HStack{
                    
                    Image("Imagevictoire")
                        .resizable().scaledToFill().frame(width: 130, height: 80).clipped()
                    
                    Text("Victoire")
                        .padding(30)
                        .font(Font.title)
                        .background(Color.green)
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                }
                Spacer()
                Spacer()
                VStack{
                    Text("    Statistiques:   ")
                    Text("Chauffage : 150 kWh")
                    Text("Chauffe-eau : 70 kWh")
                    
                }.padding()
                    .font(Font.title2)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                Button{
                    etatDuDefi = .nodefi
                }label: {
                    Text("relancer un defi")
                        .padding()
                        .font(Font.title2)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
            
            .foregroundColor(Color.white)
        }
        
    }
    
}
struct Victoire_Previews: PreviewProvider {
    static var previews: some View {
        Victoire()
    }
}
