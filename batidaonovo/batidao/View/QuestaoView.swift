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
    
    @State private var opcaoSelecionada: String? = nil // nil = nenhuma opção escolhida
    @State var questao: Questoes
    @Binding var proximo: Int
    // random
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
                        
                        opcaoSelecionada = questao.opcoes[0]//salva opcao clicada
                        
                        Task{
                            try? await Task.sleep(nanoseconds: 2000000000)
                            proximo += 1
                            opcaoSelecionada = nil
                        }
                        
                        //                        if questao.opcoes[0] == questao.certa {
                        //
                        //                        }
                        
                    } label: {
                        VStack{
                            
                            Image(questao.opcoes[0])
                                .resizable()
                                .scaledToFit()
                            
                            Text(textoOpcao(opcao: questao.opcoes[0]))
                                .font(.custom("Brasilero2018Free-Regular", size: 24))
                                .foregroundStyle(textoCor(opcao: questao.opcoes[0]))
                                .multilineTextAlignment(.center)
                            //                            Text(questao.opcoes[0])
                            
                            //
                            
                        }
                        .padding()
                        .frame(width:165, height: 140)
                        .background(corOpcao(opcao: questao.opcoes[0]))
                        .cornerRadius(12)
                    }
                    Button{
                        opcaoSelecionada = questao.opcoes[1]//salva opcao clicada
                        
                        Task{
                            try? await Task.sleep(nanoseconds: 2000000000)
                            proximo += 1
                            opcaoSelecionada = nil
                        }
                        
                    } label: {
                        VStack{
                            
                            Image(questao.opcoes[1])
                                .resizable()
                                .scaledToFit()
                            
                            Text(textoOpcao(opcao: questao.opcoes[1]))
                                .font(.custom("Brasilero2018Free-Regular", size: 24))
                                .foregroundStyle(textoCor(opcao: questao.opcoes[1]))
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding()
                        .frame(width:165, height: 140)
                        .background(corOpcao(opcao: questao.opcoes[1]))
                        .cornerRadius(12)
                    }
                }
                
                HStack{
                    
                    Button{
                        opcaoSelecionada = questao.opcoes[2]//salva opcao clicada
                        
                        Task{
                            try? await Task.sleep(nanoseconds: 2000000000)
                            proximo += 1
                            opcaoSelecionada = nil
                        }
                    } label: {
                        VStack{
                            
                            Image(questao.opcoes[2])
                                .resizable()
                                .scaledToFit()
                            
                            Text(textoOpcao(opcao: questao.opcoes[2]))
                                .font(.custom("Brasilero2018Free-Regular", size: 24))
                                .foregroundStyle(textoCor(opcao: questao.opcoes[2]))
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding()
                        .frame(width:165, height: 140)
                        .background(corOpcao(opcao: questao.opcoes[2]))
                        .cornerRadius(12)
                    }
                    Button{
                        opcaoSelecionada = questao.opcoes[3]//salva opcao clicada
                        
                        Task{
                            try? await Task.sleep(nanoseconds: 2000000000)
                            proximo += 1
                            opcaoSelecionada = nil
                        }
                    } label: {
                        VStack{
                            
                            Image(questao.opcoes[3])
                                .resizable()
                                .scaledToFit()
                            
                            Text(textoOpcao(opcao: questao.opcoes[3]))
                                .font(.custom("Brasilero2018Free-Regular", size: 24))
                                .foregroundStyle(textoCor(opcao: questao.opcoes[3]))
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding()
                        .frame(width:165, height: 140)
                        .background(corOpcao(opcao: questao.opcoes[3]))
                        .cornerRadius(12)
                    }
                }
            }
        }
    }
    
    func corOpcao( opcao: String)-> Color{
        guard let selecionada = opcaoSelecionada else {
            return .amareloClaro
        }
        if opcao == selecionada {
            return opcao == questao.certa ? .verde : .vermelho
        }
        
        if opcao == questao.certa {
            return .green
        }
        
        return .amareloClaro
    }
    
    func textoOpcao( opcao: String) -> String{
        guard opcaoSelecionada != nil else{
            return opcao.uppercased()
        }
        
        if opcao == questao.certa{
            return questao.estiloMusica.uppercased()
        }
        return opcao.uppercased()
        
    }
    
    func textoCor( opcao: String) -> Color{
        guard let selecionada = opcaoSelecionada else{
            return .black
            
        }
        
        if opcao == selecionada && opcao != questao.certa {
            return .white
            
        }
        return .black
    }
    
}
