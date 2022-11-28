//
//  FigurasView.swift
//  FIgurinhas
//
//  Created by Bruno Catão on 27/11/22.
//

import SwiftUI

struct FigurasView: View {
    
    @State var apresentado = false
    
    var body: some View {
        
        List(figuras){ figura in
            NavigationLink(destination: FiguraDetalheView(figura: figura)){
                FigurasLinhaView(figura: figura)
                
                }
            }
        .navigationTitle("Figuras")
        }
    }

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
