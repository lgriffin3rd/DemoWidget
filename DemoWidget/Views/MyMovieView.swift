//
//  MyMovieView.swift
//  DemoWidget
//
//  Created by Lewis Griffin on 8/3/20.
//

import SwiftUI

struct MyMovieView: View {
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
            VStack {
                Text("Google Rating:")
                    .font(.caption)
                    .foregroundColor(.blue)
                MovieRatingView(movie: movie)
            }
        }
    }
}

struct MyMovieView_Previews: PreviewProvider {
    static var previews: some View {
        MyMovieView(.oldGuard)
    }
}
