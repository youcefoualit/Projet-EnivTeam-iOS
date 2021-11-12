//
//  ImageMatchmaking.swift
//  EnvTeam
//
//  Created by mac02 on 27/10/2021.
//

import SwiftUI

struct ImageMatchmaking: View {
    let id:Int
    let imageName:String
    let name:String
    let logement: String
    let surface : Int
    
//    let point:Int
    let maison: Bool
    
    var body: some View {
        VStack{
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 350)
                .clipped()
                .cornerRadius(30)
        
            Text(name).bold()
            Text(logement)
            Text(surface.description) + Text (" m²")
            
//            if(point > 1){
//            Text(point.description+" points").bold()
//            }else if(point == 1 ){
//                Text(point.description + "point")
//            }else {
//                Text("0 point")}
//            if(maison){Text("Maison")
//                Image("maison").resizable().scaledToFill().frame(width: 40, height: 60).clipped()
//            }
//            else
//            {Text("Appartement")
//                Image("appartement").resizable().scaledToFill().frame(width: 50, height: 60).clipped().clipShape(Circle())
//            }
           
            
            
        }//fin de VStack
    
    }//fin de body
}//fin de ImageMatchmaking

                
                
                
                
                
                
struct ImageMatchmaking_Previews: PreviewProvider {
    static var previews: some View {
        ImageMatchmaking(id:0,imageName:"profile",name:"Famille Dupond",logement: "Maison", surface: 90 ,maison: false)
    }
}
