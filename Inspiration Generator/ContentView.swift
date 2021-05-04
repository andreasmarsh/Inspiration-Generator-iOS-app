//
//  ContentView.swift
//  Inspiration Generator
//
//  Created by Andreas Marsh on 3/7/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationView{
            artBackground
                .overlay(
                    VStack(alignment: .center) {
                        
                        NavigationLink(destination: Generator()) {
                            ButtonView(image: "paintpalette", title: "Get Inspired")
                        }
                        
                        NavigationLink(destination: Info()) {
                            ButtonView(image: "questionmark.circle", title: "Info / Help")
                        }
                    })
                .navigationBarTitle("Inspo Generator 🖼")
        }
    }
    
    private var artBackground: some View{
        GeometryReader { geometry in
            Image("artBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .frame(width: geometry.size.width)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonView: View {
    var image: String
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .font(.largeTitle)
                .foregroundColor(.white)
                .shadow(color: Color("lightGreen"), radius: 5)
            Text(title)
                .foregroundColor(.white)
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
                .shadow(color: Color("lightGreen"), radius: 5)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .foregroundColor(.white)
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color ("cream"), Color("lightGreen")]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(40)
        .cornerRadius(40)
        .padding(.horizontal, 40)
    }
}
