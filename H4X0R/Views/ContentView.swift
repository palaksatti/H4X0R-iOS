//
//  ContentView.swift
//  H4X0R
//
//  Created by Palak Satti on 06/02/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var netManager = NetManager()
    var body: some View {
        
        NavigationView{
            List(netManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
                
            }
            .navigationTitle("H4XOR News")
            
        }
        .onAppear(perform: {
            self.netManager.fetchData()
        })
    }
    
    
    
}

#Preview {
    ContentView()
    
}


