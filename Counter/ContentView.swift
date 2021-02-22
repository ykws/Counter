//
//  ContentView.swift
//  Counter
//
//  Created by KAWASHIMA Yoshiyuki on 2021/02/22.
//

import SwiftUI
import Neumorphic

struct ContentView: View {
    @State var count: Int
    
    var body: some View {
        VStack {
            Text(String(count))
                .padding()
                .font(.headline)
                .foregroundColor(Color.Neumorphic.secondary)
                
            Button(action: { count += 1 }) {
                Text("+").fontWeight(.bold)
            }
            .softButtonStyle(Circle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(count: 0)
    }
}
