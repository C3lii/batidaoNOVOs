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

struct QuestaoView: View {
    
    @State var questao: Questoes
    @Binding var proximo: Int
    var body: some View {
        
        ZStack{
            Color.amareloEscuro
                .ignoresSafeArea()
            
            VStack {
                ZStack{
                    Rectangle()
                        .frame(width: 350, height: 309)
                        .cornerRadius(12)
                        .foregroundStyle(.azulEscuro)
                    
                    VStack{
                        Text("De qual estado é essa música?")
                            .font(.custom("Brasilero2018Free-Regular", size: 32))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 231)
                        
                        ZStack{
                            Circle()
                                .frame(width: 200)
                            
                            Image(questao.capaDoAlbum)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .cornerRadius(100)
                        }
                    }
                }
                HStack{
                    
                    Button{
                        if questao.opcoes[0] == questao.certa {
                            
                        }
                        Task{
                            try? await Task.sleep(nanoseconds: 2500000000)
                            proximo += 1
                        }
                    } label: {
                        VStack{
                            
                            Image(questao.opcoes[0])
                                .resizable()
                                .scaledToFit()
                            
                            Text(questao.opcoes[0])
                                .font(.custom("Brasilero2018Free-Regular", size: 24))
                                .foregroundStyle(.black)
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding()
                        .frame(width:165, height: 140)
                        .background(.amareloClaro)
                        .cornerRadius(12)
                    }
                    Button{
                        proximo += 1
                    } label: {
                        VStack{
                            
                            Image(questao.opcoes[1])
                                .resizable()
                                .scaledToFit()
                            
                            Text(questao.opcoes[1])
                                .font(.custom("Brasilero2018Free-Regular", size: 22))
                                .foregroundStyle(.black)
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding()
                        .frame(width:165, height: 140)
                        .background(.amareloClaro)
                        .cornerRadius(12)
                    }
                }
                
                HStack{
                    
                    Button{
                        proximo += 1
                    } label: {
                        VStack{
                            
                            Image(questao.opcoes[2])
                                .resizable()
                                .scaledToFit()
                            
                            Text(questao.opcoes[2])
                                .font(.custom("Brasilero2018Free-Regular", size: 24))
                                .foregroundStyle(.black)
                                .multilineTextAlignment(.center)
                            
                            
                        }
                        .padding()
                        .frame(width:165, height: 140)
                        .background(.amareloClaro)
                        .cornerRadius(12)
                    }
                    Button{
                        proximo += 1
                    } label: {
                        VStack{
                            
                            Image(questao.opcoes[3])
                                .resizable()
                                .scaledToFit()
                            
                            Text(questao.opcoes[3])
                                .font(.custom("Brasilero2018Free-Regular", size: 24))
                                .foregroundStyle(.black)
                                .multilineTextAlignment(.center)
                            
                            
                        }
                        .padding()
                        .frame(width:165, height: 140)
                        .background(.amareloClaro)
                        .cornerRadius(12)
                    }
                }
            }
        }
    }
}

//#Preview {
//    QuestaoView(questao:Questoes(
//        musica: "instrumental.funkbruxaria",
//        capaDoAlbum: "bruxaria",
//        certa: "sao paulo",
//        estiloMusica: "Funk Bruxaria",
//        opcoes: ["sao paulo", "rio de janeiro", "minas gerais", "pernambuco"]
//    ))
//}
//
