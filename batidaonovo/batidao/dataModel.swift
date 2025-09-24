//
//  dataModel.swift
//  batidao
//
//  Created by Celia Rafaelli Vieira on 23/09/25.
//
import Foundation

//prontinho olha, nussss

struct Questoes: Identifiable {
    let id = UUID()
    
    let musica: String
        
    let capaDoAlbum: String
    
    let certa: String // sem acento
    
    let estiloMusica: String
    
    let opcoes: [String] // sem acento, todas as imagens e nome do estado vao estar relacionadas,
    
}
extension Array where Element == Questoes{
    static func questoes() -> [Questoes]{
        [

            Questoes(
                musica: "instrumental.funkbruxaria",
                capaDoAlbum: "bruxaria",
                certa: "sao paulo",
                estiloMusica: "Funk Bruxaria",
                opcoes: ["sao paulo", "rio de janeiro", "minas gerais", "pernambuco"]
            ),
            
            Questoes(
                musica: "instrumental.rockdoido",
                capaDoAlbum: "doceMel",
                certa: "para",
                estiloMusica: "Rock Doido",
                opcoes: ["para", "amazonas", "goias", "santa catarina"]
            ),
            
            Questoes(
                musica: "instrumental.150bpm",
                capaDoAlbum: "150bpm",
                certa: "rio de janeiro",
                estiloMusica: "Funk 150bpm",
                opcoes: ["rio de janeiro", "sao paulo", "pernambuco", "ceara"]
            ),
            
            Questoes(
                musica: "instrumental.forro",
                capaDoAlbum: "forro",
                certa: "ceara",
                estiloMusica: "Forró/Baião",
                opcoes: ["ceara", "goias", "pernambuco", "para"]
            ),
            
            Questoes(
                musica: "instrumental.frevo",
                capaDoAlbum: "frevo",
                certa: "pernambuco",
                estiloMusica: "Frevo",
                opcoes: ["pernambuco", "minas gerais", "rio de janeiro", "para"]
            ),
            
            Questoes(
                musica: "instrumental.boibumba",
                capaDoAlbum: "boibuma",
                certa: "amazonas",
                estiloMusica: "Boi-Bumbá",
                opcoes: ["amazonas", "para", "santa catarina", "minas gerais"]
            ),
            
            Questoes(
                musica: "instrumental.gauchesco",
                capaDoAlbum: "gauchesca",
                certa: "rio grande do sul",
                estiloMusica: "Música Gaúchesca",
                opcoes: ["rio grande do sul", "santa catarina", "ceara", "goias"]
            ),
            
            Questoes(
                musica: "instrumental.megafunk",
                capaDoAlbum: "megafunk",
                certa: "santa catarina",
                estiloMusica: "Megafunk",
                opcoes: ["santa catarina", "ceara", "rio grande do sul", "goias"]
            ),
            
            Questoes(
                musica: "instrumental.funkMTG",
                capaDoAlbum: "funkMTG",
                certa: "minas gerais",
                estiloMusica: "Funk MTG",
                opcoes: ["minas gerais", "sao paulo", "rio de janeiro", "goias"]
            ),
            
            Questoes(
                musica: "instrumental.sertanejo",
                capaDoAlbum: "sertanejo",
                certa: "goias",
                estiloMusica: "Sertanejo",
                opcoes: ["goias", "ceara", "minas gerais", "rio grande do sul"]
            )
        ]
    }
}
