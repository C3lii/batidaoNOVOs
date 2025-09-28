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

struct FinalBomView: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var score: Int
    
    var body: some View {
        ZStack{
            Color.amareloEscuro
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 100) {
                
                    Image("sabe tudo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 367)
                
                    
                
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
                .padding()
            }
        }
    }
}
struct FinalBomView_Previews: PreviewProvider {
    static var previews: some View {
        FinalBomView(score: .constant(10))
    }
}
