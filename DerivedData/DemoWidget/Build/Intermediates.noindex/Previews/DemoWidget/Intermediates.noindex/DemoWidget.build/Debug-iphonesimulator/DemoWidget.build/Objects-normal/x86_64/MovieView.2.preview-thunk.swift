@_private(sourceFile: "MovieView.swift") import DemoWidget
import SwiftUI
import SwiftUI

extension MovieView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/lewisgriffin/Documents/SwiftUI/DemoWidget/DemoWidget/Views/MovieView.swift", line: 32)
        MovieView(.oldGuard)
#sourceLocation()
    }
}

extension MovieView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lewisgriffin/Documents/SwiftUI/DemoWidget/DemoWidget/Views/MovieView.swift", line: 17)
        HStack {
            ZStack {
                Rectangle().fill(Color.blue)
                    .frame(maxWidth: __designTimeInteger("#3555.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 80), maxHeight: __designTimeInteger("#3555.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 100))
                Image(movie.image)
                    .resizable()
                    .frame(maxWidth: __designTimeInteger("#3555.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 80), maxHeight: __designTimeInteger("#3555.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 120))
            }
            MovieRatingView(movie: movie)
        }
#sourceLocation()
    }
}

typealias MovieView = DemoWidget.MovieView
typealias MovieView_Previews = DemoWidget.MovieView_Previews