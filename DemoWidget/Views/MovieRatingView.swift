//
//  MovieRatingView.swift
//  MovieTracker
//
//  Created by Lewis Griffin on 8/2/20.
//

import SwiftUI

struct MovieRatingView: View {
    var movie: Movie
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle().fill(Color(UIColor.clear))
                    .frame(maxWidth: 200, maxHeight: 50)
                Text(movie.rating)
            }
        }
    }
}

struct MovieRatingView_Previews: PreviewProvider {
    static var previews: some View {
        MovieRatingView(movie: .oldGuard)
    }
}
