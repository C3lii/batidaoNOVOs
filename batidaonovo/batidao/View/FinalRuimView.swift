//
//  FinalBom 2.swift
//  batidao
//
//  Created by Celia Rafaelli Vieira on 25/09/25.
//


//
//  ContentView 2.swift
//  batidao
//
//  Created by Celia Rafaelli Vieira on 25/09/25.
//


//
//  ContentView.swift
//  batidao
//
//  Created by Celia Rafaelli Vieira on 23/09/25.
//

import SwiftUI

struct FinalRuimView: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var score: Int
    
    var body: some View {
        
        ZStack{
            Color.amareloEscuro
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Image("sabe nada")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 367)
                    
                    Spacer()
                        .frame(width: 10)
                }
                
                Spacer()
                    .frame(height: 200)
            }
            VStack(alignment: .leading) {
                
               Spacer()
                    .frame(height: 470)
                 
                Button(action: {
                    score = 0
                    dismiss()
                }) {
                    Text("Jogar de novo")
                        .font(.custom("Brasilero2018Free-Regular", size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 354, height: 84)
                        .background(.azulEscuro)
                        .cornerRadius(12)
                        .multilineTextAlignment(.center)

                    
                }
            }
            .padding()
        }
    }
}
struct FinalRuimView_Previews: PreviewProvider {
    static var previews: some View {
        FinalRuimView(score: .constant(10))
    }
}
