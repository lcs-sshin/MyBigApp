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
                
                VStack(alignment: .leading, spacing:0){
                    Text ("ALSO KNOWN AS")
                        .font(.caption2)
                        .foregroundColor(.black)
                    Text("Hermy")
                        .font(.caption)
                        .foregroundColor(.black)
                    Text("Know-it-all")
                        .font(.caption)
                        .foregroundColor(.black)
                    Text("Miss Grant")
                        .font(.caption)
                        .foregroundColor(.black)
                    Text ("Herm-own-ninny")
                        .font(.caption)
                        .foregroundColor(.black)
                }
                .padding()
                Spacer()
                Picker("Current Selection",  selection: $selection ) {
                    Text ("Characters") .tag("Characters")
                    Text ("Favourites") .tag("Favourites")
                }
                .pickerStyle(.segmented)
                
                VStack{
                    
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
    }
}

        
                
    


#Preview {
    ContentView()
}
