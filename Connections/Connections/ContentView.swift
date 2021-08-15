//
//  ContentView.swift
//  Connections
//
//  Created by Bruno Catão on 14/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing:10){
            VStack (spacing: 20){
            ConnectionView(imageName: "monica")
            ConnectionView(imageName: "rachel")
                
            }
        
        VStack(spacing: 20){
            ConnectionView(imageName: "joey")
            ConnectionView(imageName: "yourname")
            ConnectionView(imageName: "chandler")
        }
            VStack (spacing: 20){
            ConnectionView(imageName: "phoebe")
            ConnectionView(imageName: "ross")
                
            }
    }
    
    }
    
}
            
