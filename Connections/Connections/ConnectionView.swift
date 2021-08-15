//
//  ConnectionView.swift
//  Connections
//
//  Created by Bruno Catão on 14/08/21.
//

import SwiftUI

struct ConnectionView: View{
    
    let imageName: String
    
    var body: some View{
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 60, height: 60)
            .cornerRadius(100)
    }
}
