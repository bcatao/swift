//
//  FIgurinhasApp.swift
//  FIgurinhas
//
//  Created by Bruno Catão on 26/11/22.
//

import SwiftUI

@main
struct FIgurinhasApp: App {
    var body: some Scene {
        let minhaColecao = MinhaColecao()
        WindowGroup {
            ContentView()
                .environmentObject(minhaColecao)
        }
    }
}
