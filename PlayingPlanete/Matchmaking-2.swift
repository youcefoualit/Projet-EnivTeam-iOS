//
//  Matchmaking.swift
//  EnvTeam
//
//  Created by mac02 on 27/10/2021.
//

import SwiftUI
import UIKit
import Darwin

struct Matchmaking: View {
    @AppStorage("EtatDuDefi") var etatDuDefi : EtatDuDefi = EtatDuDefi.nodefi
    @State var animationAmount = 1.0
   // @State var idUtilisateur :Int
   // @State var nombreUtilisateur :Int
    @State var timeRemaining = 6
    @State var users :[ImageMatchmaking]
    
    let timer = Timer.publish(every: 0.8, on: .main, in: .common).autoconnect()
    
    
    func imageSablier() -> String {
        if timeRemaining == 6 {
            return "Sablier1"
        } else if timeRemaining == 5 {
            return "Sablier2"
        }
        else if timeRemaining == 4 {
            return "Sablier3"
        }
        else if timeRemaining == 3 {
            return "Sablier4"
        }
        else if timeRemaining == 2 {
            return "Sablier5"
        }
        else if timeRemaining == 1 {
            return "Sablier6"
        }
        return "Sablier"
    }
    
    func recherche() -> Image{
        
        return Image(imageSablier())
}
    
    //@State var id : Int
    var body: some View {
        
        VStack(spacing :20){
            Spacer()
            Text("Matchmaking").bold()

            
           // Text("\(timeRemaining)")
            
           
                .onReceive(timer) { _ in
                    if self.timeRemaining > 0 {
                        self.timeRemaining -= 1
                   }
                }
            
            if timeRemaining > 0 {
                
          
                Image(imageSablier()).resizable().scaledToFill().frame(width: 150, height: 280).clipped().animation(.spring())
                Spacer()
                Button("Recherche ..."){
                    
                }.padding(50)
                    .background(Color.white)
                    .foregroundColor(Color.red)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.red)
                            .scaleEffect(animationAmount)
                            .opacity(2 - animationAmount)
                            .animation(
                                .easeInOut(duration: 2)
                                    .repeatForever(autoreverses: false),
                                 value: animationAmount
                            
                            )
                    )
                    .onAppear{
                        animationAmount = 2
                    }
                Spacer()
            } else {
               
              
          
//                Image("ballon").resizable().scaledToFill().frame(width: 80, height:150)
                //Text("Ton adversaire").bold().foregroundColor(Color.black)

                   users.randomElement()!
                
              /* Button("Jouer"){
                    animationAmount+=1
                }.padding(10)
                .background(Color.red)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .scaleEffect(animationAmount)
                .blur(radius: (animationAmount - 1) * 0.2)
                .animation(.interpolatingSpring(stiffness: 50, damping: 0), value: animationAmount)*/
                HStack(spacing : 50){
                Button("Relancer"){
                    timeRemaining=6
                    animationAmount=1
                }.padding()
                        .frame(width: 100)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .padding(10)
                    
                    Button {
                        etatDuDefi = .defi
                    } label :{
                        Text("GO")
                            .padding()
                            .frame(width: 100)
                            .foregroundColor(.white)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                            .padding(10)
                        }
                    
                    
                    
                }
                Spacer()

                   
                }//fin else
            }//fin de vstack
            

       
        .navigationBarHidden(true)
    }//Fin de body
}

struct Matchmaking_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Matchmaking(users: DataBaseMatching.all)
          
        }
        Matchmaking(timeRemaining:0, users: DataBaseMatching.all)
    }
}
