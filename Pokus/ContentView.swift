//
//  ContentView.swift
//  Pokus
//
//  Created by Štěpán Tomsa on 23/04/2020.
//  Copyright © 2020 Glutexo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    var texts = ["Aš tave myliu", "Ir aš tave"]
    
    var body: some View {
        VStack {
            Text(self.texts[self.index])
                .font(.title)
            Button(action: {
                switch(self.index) {
                case 0:
                    self.index = 1
                case 1:
                    self.index = 0
                default:
                    break
                }
            }, label: { Text("❤️") })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
