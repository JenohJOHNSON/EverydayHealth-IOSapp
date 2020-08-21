//
//  ContentView.swift
//  EverydayHealth
//
//  Created by JenohJohnson on 20/08/2020.
//  Copyright © 2020 JenohJohnson. All rights reserved.
//


import SwiftUI

struct Post: Identifiable {
    let id: Int
    let foodname, text, foodtype, imageName: String
    
    static let samplePosts: [Post] = [
        .init(id: 0, foodname: "Chicken satay salad", text: "Marinate chicken breasts, then drizzle with a punchy peanut satay sauce for a no-fuss, midweek meal that's high in protein and big on flavour", foodtype: "Non-veg", imageName: "Chicken satay salad"), .init(id: 1, foodname: "Linguine with avocado, tomato & lime", text: "Use guacamole ingredients to make this low-calorie vegan linguine which can also be served cold as a pasta salad. It delivers on flavour and it's healthy.", foodtype: "Veg", imageName: "Linguine with avocado, tomato & lime"), .init(id: 2, foodname: "Pork souvlaki", text: "Serve our speedy pork souvlaki skewers when you’re in need of a quick and easy midweek meal. Serve with flatbreads and yogurt and chilli sauces on the side", foodtype: "Non-Veg", imageName: "Pork souvlaki"), .init(id: 3, foodname: "Pomegranate chicken with almond couscous", text: "Jazz up chicken breasts in this fruity, sweetly spiced sauce with pomegranate seeds, toasted almonds and tagine paste", foodtype: "Non-veg", imageName: "Pomegranate chicken with almond couscous"), .init(id: 4, foodname: "Chicken satay salad", text: "Marinate chicken breasts, then drizzle with a punchy peanut satay sauce for a no-fuss, midweek meal that's high in protein and big on flavour", foodtype: "Non-veg", imageName: "Chicken satay salad"), .init(id: 5, foodname: "Linguine with avocado, tomato & lime", text: "Use guacamole ingredients to make this low-calorie vegan linguine which can also be served cold as a pasta salad. It delivers on flavour and it's healthy.", foodtype: "Veg", imageName: "Linguine with avocado, tomato & lime"), .init(id: 6, foodname: "Pork souvlaki", text: "Serve our speedy pork souvlaki skewers when you’re in need of a quick and easy midweek meal. Serve with flatbreads and yogurt and chilli sauces on the side", foodtype: "Non-Veg", imageName: "Pork souvlaki"), .init(id: 7, foodname: "Pomegranate chicken with almond couscous", text: "Jazz up chicken breasts in this fruity, sweetly spiced sauce with pomegranate seeds, toasted almonds and tagine paste", foodtype: "Non-veg", imageName: "Pomegranate chicken with almond couscous")]}
struct ContentView: View {
    
        let posts = Post.samplePosts

    var body: some View {
            NavigationView {
            List(posts) { post in
                NavigationLink(destination: GroupDetailView(group: post)) {
                    PostView(post: post)
                }
            }
            .navigationBarTitle("Healthy food")
        }    }
}

struct PostView: View {
    let post: Post
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            HStack {
                Image(post.imageName).resizable().frame(width: 50, height: 50).clipShape(Circle()).clipped()
                VStack (alignment: .leading) {
                    Text(post.foodname).font(.headline)
                    Text(post.foodtype).font(.body)
                    }.padding(.leading, 8)
                }.padding(.leading, 16)
            
    }
        
}
}

    struct GroupDetailView: View {
        let group: Post
        var body: some View {
            VStack (alignment: .leading, spacing: 16) {
                HStack {
                    Image(group.imageName).resizable().frame(width: 50, height: 50).clipShape(Circle()).clipped()
                    VStack (alignment: .leading) {
                        Text(group.foodname).font(.headline)
                        Text(group.foodtype).font(.body)
                        }.padding(.leading, 8)
                    }.padding(.leading, 50)
                Text(group.text).padding(.leading, 50).padding(.trailing, 36).lineLimit(nil)
                
                Image(group.imageName, bundle: nil)
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped().padding(.leading, 25)                }  }    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
