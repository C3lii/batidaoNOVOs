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

struct InicialView: View {
    var body: some View {
        VStack {
            Text("Bem vindo ao quiz")
                .font(.title)
            
            NavigationLink(destination: QuizView()){
                Text("Iniciar")
                    .font(.headline)
                    .padding()
                    .background(.amareloClaro)
                    .foregroundStyle(.black)
                
            }
        }
        .padding()
    }
}

#Preview {
    InicialView()
}
