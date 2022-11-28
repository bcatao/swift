//
//  FiguraDetalheView.swift
//  FIgurinhas
//
//  Created by Bruno Catão on 27/11/22.
//

import SwiftUI

struct FiguraDetalheView: View {

    @ObservedObject var figura: Figura
    @EnvironmentObject var minhaColecao: MinhaColecao

    var body: some View {
        VStack(spacing: 30) {
            VStack(alignment: .leading) {
                

                HStack {
                    Text("Frase: ")
                        .multilineTextAlignment(.leading)
                        .bold()
                        .padding(.leading)
                    Text("\"\(figura.frase)\"")
                }
                HStack {
                    Image(figura.imagem)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 75.0)
                    
                    VStack(alignment: .leading) {
                        PropriedadesView(valor: .constant(""), valorInt: $figura.vidas, valorDecimal: .constant(0), tipo: .numeroInteiro)
                        PropriedadesView(imagem: "bolt", nome: "Potência", valor: .constant(""), valorInt: .constant(0), valorDecimal: $figura.potencia, cor: .yellow, tipo: .numeroDecimal)
                     //   PropriedadesView(imagem: "circle", nome: "Teste", valor: "isso é um teste", cor: .purple, tipo: .texto)
                    }
                    
                    .padding()
                     Spacer()
                
                }
                
                
            }
            HStack {
                Spacer()
                Text(figura.descricao)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                Spacer()
              
            }
            
            
            HStack {
                Spacer()
                Button {
                   
                    minhaColecao.figuras.append(figura)
                    minhaColecao.salvar()
                } label:{
                    
                    if minhaColecao.figuras.count == 0 {
                        
                        Text("Adicionar à coleção")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                        
                    } else{
                        Text("Na sua coleção: \(minhaColecao.figuras.count)")
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                        
                    }
                    
                        
                        
                }
                .cornerRadius(30
            )
                Spacer()
            }
            .padding()
            
        }
                .padding(30)
                .navigationTitle(
                    Text(figura.nome)
                )
    }
}

struct FiguraDetalheView_Previews: PreviewProvider {
    static var previews: some View {
        FiguraDetalheView(figura: figuras[0])
    }
}
