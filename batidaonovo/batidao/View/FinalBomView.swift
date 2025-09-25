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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("final bom")
            
            Button("Reiniciar"){
                score = 0
                dismiss()
            }
            
        }
        .padding()
    }
}
