//
//  ContentView.swift
//  VisionBoard
//
//  Created by Bruno Catão on 13/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        HStack(spacing:10){
        
            GridItemView(imageName: "tesla")
            GridItemView(imageName: "house")
            GridItemView(imageName: "apartment")
    }
            HStack(spacing:10){
                GridItemView(imageName: "husky")
                GridItemView(imageName: "apple")
                GridItemView(imageName: "pool")
                
            }
            HStack(spacing:10){
                GridItemView(imageName: "library")
                GridItemView(imageName: "garage")
                GridItemView(imageName: "garden")
    }


        }}
}
