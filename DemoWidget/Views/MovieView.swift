//
//  MovieView.swift
//  MovieTracker
//
//  Created by Lewis Griffin on 8/2/20.
//

import SwiftUI

struct MovieView: View {
    var movie: Movie
    
    init(_ movie: Movie) {
        self.movie = movie
    }
    var body: some View {
        HStack {
            ZStack {
                Rectangle().fill(Color.blue)
                    .frame(maxWidth: 80, maxHeight: 100)
                Image(movie.image)
                    .resizable()
                    .frame(maxWidth: 80, maxHeight: 120)
            }
            MovieRatingView(movie: movie)
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(.oldGuard)
    }
}
