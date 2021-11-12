//
//  Ecranprofil.swift
//  Brouillonplayingplanete
//
//  Created by mac06 on 20/10/2021.
//

import SwiftUI

extension UIImagePickerController.SourceType: Identifiable {
    public var id: String { rawValue.description }
}

struct Ecranprofil: View {
    let detailProfil : User
   
    @State private var image: Image? = nil
    
    @State private var inputImage: UIImage? = nil
    @State private var  pickerSource :  UIImagePickerController.SourceType? = nil
        
  
    var body: some View {
        NavigationView{
           
            VStack{
                List
                {
                    VStack (spacing : 10 ) {
                      
           
                        if image != nil{
                            image!
                            .resizable()
                            .scaledToFit()
                            .clipped()
                            .frame(width: 200 ,height: 200)
                            .clipShape(Circle())
                            .cornerRadius(100)
                        }
                        else{
                        
                    Circle()
                            .frame(width: 200, height: 200)
                            .cornerRadius(40)
                            .foregroundColor(.gray)
                        }
                        Button ("Photothèques"){
                            self.pickerSource = .photoLibrary
                            
                        }.buttonStyle(GradientBackgroundStyle())
                        
                        
                        .padding()
                        Button ("Prendre une photo"){
                            self.pickerSource = .camera
                            
                        }.buttonStyle(GradientBackgroundStyle())
                       
                        Spacer()
           
                     
                      
                    }//Fin VStack
       
                        
                    Text (detailProfil.pseudoName)
                    Text (detailProfil.ville)
                    
                    
                  
                    
                    NavigationLink {
                        Ecranstats()
                    } label: {
                        Text("Statistiques de vos défis")
                            
                            .font(.system(size: 20))
                    }
                    NavigationLink {
                        LinkyView(numberLinky: "")
                    } label: {
                        Image("Linky")
                            .resizable()
                            .scaledToFit()
                            .clipped()
                            .frame(width: 100, height:50)
                            .cornerRadius(10)
                    }
//                    NavigationLink {
//                        TeleoView()
//                    } label: {
//                        Image("Teleo")
//                            .resizable()
//                            .scaledToFit()
//                            .clipped()
//                            .frame(width: 100, height:50)
//                            .cornerRadius(10)
//                    }
                    
                }// fin list
               
                
            }// fin Vstack
//            .navigationBarItems(leading: Button ("valider"){})
            
            .sheet(item : $pickerSource, onDismiss: loadImage) { pickerSource in
                if let pickerSource = pickerSource {
                    ImagePicker(inputImage: self.$inputImage, sourceType: pickerSource)
                }
            
        }// fin nav view
    }
}
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}
#if DEBUG

struct Ecranprofil_Previews: PreviewProvider {
    static var previews: some View {
        Ecranprofil( detailProfil: Database.profil1 )
        
    }
}
#endif
struct GradientBackgroundStyle: ButtonStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
    }
}
