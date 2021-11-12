//
//  Defaite.swift
//  test projet
//
//  Created by mac29 on 28/10/2021.
//

import SwiftUI

struct Defaite: View {
    @AppStorage("EtatDuDefi") var etatDuDefi : EtatDuDefi = EtatDuDefi.nodefi
    var body: some View {
        
        
        
        
        VStack{
            Spacer()
            HStack{
                Image("Imagedefaite")
                    .resizable().scaledToFit().frame(width: 150, height: 200).clipped()
                
                
                Text("Defaite")
                    .padding(30)
                    .font(Font.title)
                    .background(Color.red)
                    .cornerRadius(10)
                    .foregroundColor(Color.white)
                    .padding()
            }
            Spacer()
            Spacer()
            
            VStack{
                Text("    Statistiques:   ")
                Text("Chauffage : 300 kWh")
                Text("Chauffe-eau : 200 kWh")
                
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




struct Defaite_Previews: PreviewProvider {
    static var previews: some View {
        Defaite()
    }
}
