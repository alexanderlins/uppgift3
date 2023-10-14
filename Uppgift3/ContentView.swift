//
//  ContentView.swift
//  Uppgift1
//
//  Created by Alexander Lins on 2023-10-02.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            
            List {
                NavigationLink {
                    FruitView(frukt: "Apelsin")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10).foregroundStyle(.orange)
                        Text("Apelsin")
                    }
                }
                
                NavigationLink {
                    FruitView(frukt: "Banan")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10).foregroundStyle(.yellow)
                        Text("Banan")
                    }
                }
                
                NavigationLink {
                    FruitView(frukt: "Citron")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10).foregroundStyle(.mint)
                        Text("Citron")
                    }
                }
            }.navigationTitle("Frukter")
            
        }
        .padding()
    }
}

struct FruitView: View {
    @State var frukt: String = "Frukt"
    var body: some View {
        VStack {
            Text("\(frukt)")
        }.navigationTitle("\(frukt)")
    }
}
