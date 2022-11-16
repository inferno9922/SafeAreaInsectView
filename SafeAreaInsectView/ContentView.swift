//
//  ContentView.swift
//  SafeAreaInsectView
//
//  Created by Inferno Inf on 04/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            VStack(spacing: 18) {
                ForEach(1...25, id: \.self) {_ in
                    HStack {
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 45, height: 45)
                        VStack(alignment: .leading, spacing: 15) {
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 15)
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 15)
                                .padding(.trailing, 50)
                        }
                    }
                    
                }
            }
            .padding()
        }
        .safeAreaInset(edge: .leading) {
            Capsule()
                .fill(Color.red)
                .frame(width: 55)
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
