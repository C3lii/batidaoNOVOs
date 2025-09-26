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
    
    @State var score: Int = 0
    
//    @State var questoes: [Questoes] = .questoesAleatorias(quantidade: 5)
    @State var questoes: [Questoes] = []
    
    @State var proximo: Int = 0
    
    var body: some View {
        VStack {
            
            if proximo < questoes.count{
                
                QuestaoView(
                    questao: questoes[proximo],
                    proximo: $proximo,
                    score: $score)
                
                .id(proximo)
            } else {
                
                if score >= 3{
                    FinalBomView(score: $score)
                } else {
                    FinalRuimView(score: $score)
                }
            }
        }
        .onAppear {
            questoes = .questoesAleatorias(quantidade: 5) // gera 5 questões novas
            proximo = 0  // zera o índice da questão
            score = 0    // zera o score
        }
    }
}

#Preview {
    QuizView()
}
