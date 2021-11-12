//
//  ProfilAmisView.swift
//  PlayingPlanete
//
//  Created by mac06 on 03/11/2021.
//

import SwiftUI

struct ProfilAmisView: View {
    let detailProfil : User
    var body: some View {
        List{
            Text (detailProfil.pseudoName)
            Text (detailProfil.amisProfil)
            Text (detailProfil.logement)
            Text (detailProfil.surfaceLogement.description)
            + Text("m²")
        }
    }
}

struct ProfilAmisView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilAmisView( detailProfil: Database.profil1 )
    }
}
