//
//  SFSymbols4View.swift
//  WhatsNewiOS16
//
//  Created by Umer Khan on 15.09.2022.
//

import SwiftUI

struct SFSymbols4View: View {
    @State private var signal: Double = 0.0
    let signals: [Double] = [0.0, 0.3, 0.7, 1.0]
    
    var body: some View {
        VStack {
            Text("SF Symbols 4")
                .padding(32)
                .foregroundColor(.indigo)
                .fontWeight(.heavy)
                .font(.system(size: 32))
                .scaledToFit()
            Spacer()
            Image(systemName: "wifi", variableValue: signal)
                .imageScale(.large)
                .foregroundColor(.mint)
            .font(.system(size: 80))
            Text("Signal")
                .foregroundColor(.gray)
                .fontWeight(.semibold)
                .padding(.bottom)
            
            Image(systemName: "cellularbars", variableValue: signal)
                .imageScale(.large)
                .foregroundColor(.brown)
            .font(.system(size: 80))
            Text("Signal")
                .foregroundColor(.gray)
                .fontWeight(.semibold)
                .padding(.bottom)

            Image(systemName: "shareplay", variableValue: signal)
                .imageScale(.large)
                .foregroundColor(.cyan)
            .font(.system(size: 80))
            Text("Finding people around you")
                .foregroundColor(.gray)
                .fontWeight(.semibold)
                .padding(.bottom)
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                signal = 0.25
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                signal = 0.50
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                signal = 0.75
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                signal = 1.0
            }
        }
        .animation(.linear, value: 10)
    }
}

struct SFSymbols4View_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbols4View()
    }
}
