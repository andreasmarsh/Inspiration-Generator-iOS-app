//
//  Generator.swift
//  Inspiration Generator
//
//  Created by Andreas Marsh on 3/7/21.
//

import SwiftUI

struct Generator: View {
    /*@State var jsonURL = "https://images.metmuseum.org/CRDImages/ad/original/144703.jpg"*/
    @State var image = "1"
    @State var medium = "this medium"
    
    var body: some View {
        artBackground2
            .overlay(
                VStack (alignment: .center){
                    
                    /*RemoteImage(url: jsonURL)
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 300)
                     .padding(10)*/
                    
                    GeometryReader { geo in
                        VStack {
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geo.size.width)
                            
                            
                            
                            
                            HStack (alignment: .center){
                                Text("try using " + medium)
                                    .font(.system(size: geo.size.height > geo.size.width ? geo.size.width * 0.1: geo.size.height * 0.1))
                                    .multilineTextAlignment(.center)
                                    .padding(5)
                            }
                        }
                    }
                    
                    Button(action: {
                        image = String(Int.random(in: 1...30))
                        let num = Int.random(in: 1...5)
                        if (num == 1) {
                            medium = "pencil"
                        } else if (num == 2) {
                            medium = "pastels"
                        } else if (num == 3) {
                            medium = "watercolor"
                        } else if (num == 4) {
                            medium = "charcoal"
                        } else {
                            medium = "acrylic"
                        }
                    }, label: {
                        Text("Random 🖼")
                            .foregroundColor(.white)
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        
                    }).buttonStyle(AndreStyle())
                    
                    HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                        Button(action: {
                            image = String(Int.random(in: 1...15))
                            let num = Int.random(in: 1...5)
                            if (num == 1) {
                                medium = "pencil"
                            } else if (num == 2) {
                                medium = "pastels"
                            } else if (num == 3) {
                                medium = "watercolor"
                            } else if (num == 4) {
                                medium = "charcoal"
                            } else {
                                medium = "acrylic"
                            }
                        }, label: {
                            Text("Studio Ghibli")
                                .foregroundColor(.white)
                                .font(.system(.largeTitle, design: .rounded))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            
                        }).buttonStyle(AndreStyle())
                        
                        Button(action: {
                            image = String(Int.random(in: 16...30))
                            let num = Int.random(in: 1...5)
                            if (num == 1) {
                                medium = "pencil"
                            } else if (num == 2) {
                                medium = "pastels"
                            } else if (num == 3) {
                                medium = "watercolor"
                            } else if (num == 4) {
                                medium = "charcoal"
                            } else {
                                medium = "acrylic"
                            }
                        }, label: {
                            Text("Nature Pics 🌲")
                                .foregroundColor(.white)
                                .font(.system(.largeTitle, design: .rounded))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            
                        }).buttonStyle(AndreStyle())
                        
                    }
                    
                    Spacer().frame(maxHeight: 120)
                    
                })
    }
    
    
    private var artBackground2: some View{
        GeometryReader { geometry in
            Image("artBackground2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .frame(width: geometry.size.width)
        }
    }
}

struct Generator_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Generator()
        }
    }
}

struct AndreStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("lightGreen"), Color("cream")]), startPoint: .top, endPoint: .bottom))
            .opacity(0.8)
            .cornerRadius(55)
            .padding(.horizontal, 15)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
