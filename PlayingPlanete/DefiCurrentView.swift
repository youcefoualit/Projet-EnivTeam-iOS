//
//  DefiCurrentView.swift
//  PlayingPlanete
//
//  Created by mac06 on 04/11/2021.
//

import SwiftUI
enum EtatDuDefi:String {
    case nodefi
    case defi
    case victoire
    case defaite
}
struct DefiCurrentView: View {
    @AppStorage("EtatDuDefi") var etatDuDefi : EtatDuDefi = EtatDuDefi.nodefi
    
    var body: some View {
 
            switch etatDuDefi {
            case .nodefi:
            ChoixDuDefiView()
            case .defi:
                playscreen()
           
        
            case.victoire:
               Victoire()
            case.defaite :
               Defaite()
           
            }
    }
}

struct DefiCurrentView_Previews: PreviewProvider {
    static var previews: some View {
        DefiCurrentView()
    }
}
