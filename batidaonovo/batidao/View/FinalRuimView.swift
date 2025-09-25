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
        
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("final ruim")
            
            Button("Reiniciar"){
                score = 0
                dismiss()
            }
        }
        .padding()
    }
}

