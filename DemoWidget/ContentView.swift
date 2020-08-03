//
//  ContentView.swift
//  DemoWidget
//
//  Created by Lewis Griffin on 8/3/20.
//

import SwiftUI

struct ContentView: View {
    var selectedMovie: Movie = .oldGuard
    
    @State var movies = Movie.allMovies
    
    @AppStorage("NewMovie", store: UserDefaults(suiteName: "group.ig3.coolWidget"))
    var m: Data = Data()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(movies) { movie in
                    MyMovieView(movie)
                        .gesture(TapGesture(count: 1).onEnded({ _ in
                            self.saveMovie(movie)
                        }))
                }
            }
        }
    }
    
    func saveMovie(_ movie: Movie) {
        guard let movieData = try? JSONEncoder().encode(movie) else { return }
        m = movieData
        print("Selected \(movie.movieName) to save")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
