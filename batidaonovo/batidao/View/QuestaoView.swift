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
import AVFoundation

struct QuestaoView: View {
    
    @State private var opcoesEmbaralhadas: [String] = []
    @State private var audioPlayer: AVAudioPlayer?
    @State private var opcaoSelecionada: String? = nil // nil = nenhuma opção escolhida
    @State private var rotation: Double = 0
    
    @State var questao: Questoes
    @Binding var proximo: Int
    @Binding var score: Int
    
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
                           Image("disco")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
                            
                            Image(questao.capaDoAlbum)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .cornerRadius(100)
                                .rotationEffect(.degrees(rotation))
                            
                        }
                    }
                }
                
                VStack {
                    ForEach(0..<2) { linha in
                        HStack {
                            ForEach(0..<2) { coluna in
                                let index = linha * 2 + coluna
                                if index < opcoesEmbaralhadas.count {
                                    let opcao = opcoesEmbaralhadas[index]
                                    Button {
                                        opcaoSelecionada = opcao
                                        if opcao.lowercased() == questao.certa.lowercased() {
                                            score += 1
                                        }
                                        Task {
                                            try? await Task.sleep(nanoseconds: 2_000_000_000)
                                            proximo += 1
                                            opcaoSelecionada = nil
                                        }
                                    } label: {
                                        VStack {
                                            Image(opcao)
                                                .resizable()
                                                .scaledToFit()
                                            Text(textoOpcao(opcao: opcao))
                                                .font(.custom("Brasilero2018Free-Regular", size: 20))
                                                .foregroundStyle(textoCor(opcao: opcao))
                                                .multilineTextAlignment(.center)
                                                .lineLimit(2)
                                        }
                                        .padding()
                                        .frame(width:165, height: 140)
                                        .background(corOpcao(opcao: opcao))
                                        .cornerRadius(12)
                                    }
                                }
                            }
                        }
                    }
                }
                
                //                HStack{
                //
                //                    Button{
                //
                //                        opcaoSelecionada = questao.opcoes[0]//salva opcao clicada
                //
                //                        if questao.opcoes[0] == questao.certa{
                //                            score += 1
                //                        }
                //
                //                        Task{
                //                            try? await Task.sleep(nanoseconds: 2000000000)
                //                            proximo += 1
                //                            opcaoSelecionada = nil
                //                        }
                //
                //                        //                        if questao.opcoes[0] == questao.certa {
                //                        //
                //                        //                        }
                //
                //                    } label: {
                //                        VStack{
                //
                //                            Image(questao.opcoes[0])
                //                                .resizable()
                //                                .scaledToFit()
                //
                //                            Text(textoOpcao(opcao: questao.opcoes[0]))
                //                                .font(.custom("Brasilero2018Free-Regular", size: 24))
                //                                .foregroundStyle(textoCor(opcao: questao.opcoes[0]))
                //                                .multilineTextAlignment(.center)
                //                            //                            Text(questao.opcoes[0])
                //
                //                            //
                //
                //                        }
                //                        .padding()
                //                        .frame(width:165, height: 140)
                //                        .background(corOpcao(opcao: questao.opcoes[0]))
                //                        .cornerRadius(12)
                //                    }
                //                    Button{
                //                        opcaoSelecionada = questao.opcoes[1]//salva opcao clicada
                //
                //                        if questao.opcoes[1] == questao.certa{
                //                            score += 1
                //                        }
                //
                //                        Task{
                //                            try? await Task.sleep(nanoseconds: 2000000000)
                //                            proximo += 1
                //                            opcaoSelecionada = nil
                //                        }
                //
                //                    } label: {
                //                        VStack{
                //
                //                            Image(questao.opcoes[1])
                //                                .resizable()
                //                                .scaledToFit()
                //
                //                            Text(textoOpcao(opcao: questao.opcoes[1]))
                //                                .font(.custom("Brasilero2018Free-Regular", size: 24))
                //                                .foregroundStyle(textoCor(opcao: questao.opcoes[1]))
                //                                .multilineTextAlignment(.center)
                //
                //                        }
                //                        .padding()
                //                        .frame(width:165, height: 140)
                //                        .background(corOpcao(opcao: questao.opcoes[1]))
                //                        .cornerRadius(12)
                //                    }
                //                }
                //
                //                HStack{
                //
                //                    Button{
                //                        opcaoSelecionada = questao.opcoes[2]//salva opcao clicada
                //
                //                        if questao.opcoes[2] == questao.certa{
                //                            score += 1
                //                        }
                //
                //                        Task{
                //                            try? await Task.sleep(nanoseconds: 2000000000)
                //                            proximo += 1
                //                            opcaoSelecionada = nil
                //                        }
                //                    } label: {
                //                        VStack{
                //
                //                            Image(questao.opcoes[2])
                //                                .resizable()
                //                                .scaledToFit()
                //
                //                            Text(textoOpcao(opcao: questao.opcoes[2]))
                //                                .font(.custom("Brasilero2018Free-Regular", size: 24))
                //                                .foregroundStyle(textoCor(opcao: questao.opcoes[2]))
                //                                .multilineTextAlignment(.center)
                //
                //                        }
                //                        .padding()
                //                        .frame(width:165, height: 140)
                //                        .background(corOpcao(opcao: questao.opcoes[2]))
                //                        .cornerRadius(12)
                //                    }
                //                    Button{
                //                        opcaoSelecionada = questao.opcoes[3]//salva opcao clicada
                //
                //                        if questao.opcoes[3] == questao.certa{
                //                            score += 1
                //                        }
                //
                //
                //                        Task{
                //                            try? await Task.sleep(nanoseconds: 2000000000)
                //                            proximo += 1
                //                            opcaoSelecionada = nil
                //
                //
                //                        }
                //                    } label: {
                //                        VStack{
                //
                //                            Image(questao.opcoes[3])
                //                                .resizable()
                //                                .scaledToFit()
                //
                //                            Text(textoOpcao(opcao: questao.opcoes[3]))
                //                                .font(.custom("Brasilero2018Free-Regular", size: 24))
                //                                .foregroundStyle(textoCor(opcao: questao.opcoes[3]))
                //                                .multilineTextAlignment(.center)
                //
                //                        }
                //                        .padding()
                //                        .frame(width:165, height: 140)
                //                        .background(corOpcao(opcao: questao.opcoes[3]))
                //                        .cornerRadius(12)
                //                    }
                //                }
            }
        }
        .onAppear {
            tocaMusica(named: questao.musica)
            opcoesEmbaralhadas = questao.opcoes.shuffled()
            
            withAnimation(.linear(duration: 5).repeatForever(autoreverses: false)) {
                rotation = 360
            }
        }
        .onDisappear(){
            paraMusica(named: questao.musica)
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
    
    func tocaMusica(named name: String){
        if let url = Bundle.main.url(forResource: name, withExtension: "mp3"){
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
                audioPlayer?.numberOfLoops = -1
            } catch {
                print ("Erro ao tocar música \(name): \(error.localizedDescription)")
            }
            
        } else {
            print("Arquivo de música não encontrado: \(name)")
        }
        
    }
    func paraMusica(named name: String){
        if let url = Bundle.main.url(forResource: name, withExtension: "mp3"){
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.stop()
            } catch {
                print ("Erro ao tocar música \(name): \(error.localizedDescription)")
            }
            
        } else {
            print("Arquivo de música não encontrado: \(name)")
        }
    }
}
