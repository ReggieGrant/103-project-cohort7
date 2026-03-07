//
//  FavMoviesView.swift
//  103-project-cohort7
//
//  Created by Reginald Grant on 3/4/26.
//

import SwiftUI

struct FavMoviesView: View {

    @State private var favoriteMovies: Set<String> = ["The Fast and The Furious", "2Fast 2Furious"]
    @State private var newMovie: String = ""

    var body: some View {
        VStack {
            List(Array(favoriteMovies),id: \.self) { movie in
                Text(movie)
            }
            
            HStack{
                TextField("Add More of your Favorite Movies Here", text:$newMovie)
                Button {
                    addMovie()
                } label: {
                    Image(systemName: "arrowshape.up.circle.fill")
                        .padding()
                        .font(.title)                }
            }
        }
    }
    func addMovie(){
        favoriteMovies.insert(newMovie)    }
}

#Preview {
    FavMoviesView()
}
