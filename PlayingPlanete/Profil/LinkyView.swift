//
//  LinkyView.swift
//  Brouillonplayingplanete
//
//  Created by mac06 on 25/10/2021.
//

import SwiftUI

struct LinkyView: View {
    @State var numberLinky : String
    var body: some View {
        VStack {
            
            Text ("Identifiez-vous  facilemment grâce au numéro : \"XX XX XX XXX**951**XX\" " )
                .foregroundColor(.black)
                .font(.title3)
                
                
            + Text ("qui se trouve sur la face avant.")
                    .foregroundColor(.black)
                    .font(.title3)
                    
                    
            Spacer()
            Image("compteurlinky")
            Spacer()
            TextField("Numéro Linky", text : $numberLinky)
                .font(.title3)
                .keyboardType(.numberPad)
            Spacer()
        }.padding(32)
        
    }
}

struct LinkyView_Previews: PreviewProvider {
    static var previews: some View {
        LinkyView(numberLinky:  "XX XX XX XXX951XX")
    }
}
