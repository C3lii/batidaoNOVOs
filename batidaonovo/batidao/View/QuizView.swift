//
//  ContentView 2.swift
//  batidao
//
//  Created by Celia Rafaelli Vieira on 23/09/25.
//


//
//  ContentView.swift
//  batidao
//
//  Created by Celia Rafaelli Vieira on 23/09/25.
//

import SwiftUI

struct QuizView: View {
    
    @State var questoes: [Questoes] = .questoes()
    
    @State var proximo: Int = 0
    
    var body: some View {
        VStack {
            QuestaoView(questao: questoes[proximo%10],proximo: $proximo)
                .id(proximo)
        }
    }
}

#Preview {
    QuizView()
}
