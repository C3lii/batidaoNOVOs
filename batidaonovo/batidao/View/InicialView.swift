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
import AVFoundation


struct InicialView: View {
    
    @State private var scale: Double = 1.8
    @State private var audioPlayer: AVAudioPlayer?
    
    
    var body: some View {
        
        ZStack{
            Color.white
                .ignoresSafeArea()
            
            
            VStack {
                
                ZStack{
                    Image("paredao")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400)
                        .scaleEffect(scale)
                        .onAppear{
                            
                            withAnimation(.linear(duration: 0.19).repeatForever(autoreverses: true)) {
                                scale = 2.2
                            }
                        }
                    
                    Image("menina")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 330)
                }
                
                Spacer()
                    .frame(height: 20)
                NavigationLink(destination: QuizView()){
                    
                    Text("iniciar")
                        .font(.custom("Brasilero2018Free-Regular", size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 330, height: 84)
                        .background(.azulEscuro)
                        .cornerRadius(12)
                    
                }
            }
            
            .padding()
            
            .onAppear {
                       tocaMusica(named: "inicial") // coloque "intro.mp3" no projeto
                   }
                   .onDisappear {
                       paraMusica()
                   }
               }
    }
    func tocaMusica(named name: String) {
        if let url = Bundle.main.url(forResource: name, withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.numberOfLoops = -1
                audioPlayer?.play()
            } catch {
                print("Erro ao tocar música \(name): \(error.localizedDescription)")
            }
        } else {
            print("Arquivo de música não encontrado: \(name)")
        }
    }
    
    func paraMusica() {
        audioPlayer?.stop()
    }
    
}
#Preview {
    InicialView()
}
