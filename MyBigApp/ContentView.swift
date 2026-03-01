//
//  ContentView.swift
//  MyBigApp
//
//  Created by zimmer_h on 3/1/26.
//


import SwiftUI

struct ContentView: View {
    @State private var selection = "History"
    
    var body: some View {
        NavigationStack{
        VStack {
            Spacer()
            
            Picker("Current Selection",  selection: $selection ) {
                Text ("Characters") .tag("Characters")
                Text ("Favourites") .tag("Favourites")
            }
            .pickerStyle(.segmented)
            }
            
        }
        .padding()
        .navigationTitle ("Hermione Granger")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                } label: {
                    Text("\(Image(systemName: "chevron.backward"))")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
