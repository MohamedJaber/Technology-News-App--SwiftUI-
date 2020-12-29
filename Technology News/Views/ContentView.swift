//
//  ContentView.swift
//  Technology News
//
//  Created by Mohamed Jaber on 12/1/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager=NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(
                    destination: DetailView(url: post.url)){
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
               
            }
            .navigationBarTitle("Technology News")
        }
        .onAppear{//like viewDidLoad
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/*
let posts = [Post(id: "1", title: "Hello"), Post(id: "2", title: "Hallo"), Post(id: "3", title: "Salve"), Post(id: "1", title: "Hola")]
*/
