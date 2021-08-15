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
            .frame(width: 80, height: 80)
            //.cornerRadius(100)
            .clipShape(Circle())
    }
}
