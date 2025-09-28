//
//  dataModel.swift
//  batidao
//
//  Created by Celia Rafaelli Vieira on 23/09/25.
//
import Foundation

//prontinho olha, nussss

struct Questoes: Identifiable, Hashable {
    let id = UUID()
    
    let musica: String
        
    let capaDoAlbum: String
    
    let certa: String // sem acento
    
    let estiloMusica: String
    
    let opcoes: [String] // sem acento, todas as imagens e nome do estado vao estar relacionadas,
    
}
extension Array where Element == Questoes{
    static func questoesAleatorias(quantidade: Int) -> [Questoes] {
        let todasAsQuestoes = Self.questoes()
        
        var sorteadas = Set<Questoes>()//
        
        while sorteadas.count < quantidade {
            let sorteada = todasAsQuestoes.randomElement()!
            sorteadas.insert(sorteada)
        }
        
        return Array(sorteadas)
    }
    
    static func questoes() -> [Questoes]{
        [

            Questoes(
                musica: "instrumental.funkbruxaria",
                capaDoAlbum: "bruxaria",
                certa: "São Paulo",
                estiloMusica: "Funk Bruxaria",
                opcoes: ["São Paulo", "Rio de Janeiro", "Minas Gerais", "Pernambuco"]
            ),
            
            Questoes(
                musica: "instrumental.rockdoido",
                capaDoAlbum: "rockdoido",
                certa: "Pará",
                estiloMusica: "Rock Doido",
                opcoes: ["Pará", "Amazonas", "Goiás", "Santa Catarina"]
            ),
            
            Questoes(
                musica: "instrumental.150bpm",
                capaDoAlbum: "150bpm",
                certa: "Rio de Janeiro",
                estiloMusica: "Funk 150bpm",
                opcoes: ["Rio de Janeiro", "São Paulo", "Pernambuco", "Ceará"]
            ),
            
            Questoes(
                musica: "instrumental.forro",
                capaDoAlbum: "forro",
                certa: "Ceará",
                estiloMusica: "Forró",
                opcoes: ["Ceará", "Goiás", "Pernambuco", "Pará"]
            ),
            
            Questoes(
                musica: "instrumental.frevo",
                capaDoAlbum: "frevo",
                certa: "Pernambuco",
                estiloMusica: "Frevo",
                opcoes: ["Pernambuco", "Minas Gerais", "Rio de Janeiro", "Pará"]
            ),
            
            Questoes(
                musica: "instrumental.boibumba",
                capaDoAlbum: "boibumba",
                certa: "Amazonas",
                estiloMusica: "Boi-Bumbá",
                opcoes: ["Amazonas", "Pará", "Santa Catarina", "Minas Gerais"]
            ),
            
            Questoes(
                musica: "instrumental.gauchesco",
                capaDoAlbum: "gauchesca",
                certa: "Rio Grande do Sul",
                estiloMusica: "Música Gaúchesca",
                opcoes: ["Rio Grande do Sul", "Santa Catarina", "Ceará", "Goiás"]
            ),
            
            Questoes(
                musica: "instrumental.megafunk",
                capaDoAlbum: "megafunk",
                certa: "Santa Catarina",
                estiloMusica: "Megafunk",
                opcoes: ["Santa Catarina", "Ceará", "Rio Grande do Sul", "Goiás"]
            ),
            
            Questoes(
                musica: "instrumental.funkMTG",
                capaDoAlbum: "funkMTG",
                certa: "Minas Gerais",
                estiloMusica: "Funk MTG",
                opcoes: ["Minas Gerais", "São Paulo", "Rio de Janeiro", "Goiás"]
            ),
            
            Questoes(
                musica: "instrumental.sertanejo",
                capaDoAlbum: "sertanejo",
                certa: "Goiás",
                estiloMusica: "Sertanejo",
                opcoes: ["Goiás", "Ceará", "Minas Gerais", "Rio Grande do Sul"]
            )
        ]
    }
}
