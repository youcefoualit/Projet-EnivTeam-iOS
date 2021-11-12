//
//  TypeDefi.swift
//  EnvTeam
//
//  Created by mac02 on 25/10/2021.
//

import SwiftUI

struct TypeDefi: View {
    var body: some View {
        
        NavigationLink{
            DefisElecView(surface: "")
        }label:{
            VStack(spacing :90){
                
                ElementDefi(imageDefi: Image("electricite"),  nomDefi: "Electricité")
                ElementDefi(imageDefi: Image("eau"), nomDefi: "Eau")
            }//fin de VStack
        }
        .navigationTitle("Type de défis")
    }//fin de boddy
}//fin de STRUCT

struct ElementDefi: View {
    let imageDefi : Image
    let nomDefi :String
    
    var body: some View {
        
        VStack{
            imageDefi.resizable().scaledToFill().frame(width: 120, height: 90).clipped()
            Text(nomDefi)
        
        }//Fin de vstack
        
        
    }
}

struct TypeDefi_Previews: PreviewProvider {
    static var previews: some View {
        TypeDefi()
        
    }
}
