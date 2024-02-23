//
//  ContentView.swift
//  Give me five
//
//  Created by  Ixart on 22/02/2024.
//

import SwiftUI
import SimpleToast

struct ContentView: View {
    @State var showToast: Bool = false
    
    private let toastOptions = SimpleToastOptions(
           hideAfter: 10
       )

    var body: some View {
        VStack{
            
            Button(action: {withAnimation {showToast.toggle()}}, label: {
                                   Text("give me five")
                                       .font(.system(size: 40))
                                       .bold()
                
                                   Image(systemName: "hand.raised.fill")
                                       .font(.system(size: 40))
                                       .foregroundColor(.purple)
                
                               })
            
            .simpleToast(isPresented: $showToast, options: toastOptions) {
                
                
                
                Text("hey coucou toi")
                    .font(.title)
                    .foregroundColor(.black)
                    .shadow(color: Color.black.opacity(0.5), radius: 3, x: 0, y: 2)

                
                .frame(width: 230, height: 200)
                .padding()
                .background(Color.cyan.opacity(0.9))
                .foregroundColor(Color.black)
                .font(.title)
                .cornerRadius(20)
                .padding(.top)
                
                
                
                Text("😁")
                    .shadow(color: Color.black.opacity(0.5), radius: 3, x: 3, y: 8)
                    .font(.system(size: 30))
                    .padding(.bottom, 90) // Ajoute un espace en bas de l'image

                
            }
            
            
            
            
            
            
            
            
        } // FIN VStACK
        
        
        
        
        
        
        
       
        
        
        }//fin body
    } // stuct

#Preview {
    ContentView()
}



