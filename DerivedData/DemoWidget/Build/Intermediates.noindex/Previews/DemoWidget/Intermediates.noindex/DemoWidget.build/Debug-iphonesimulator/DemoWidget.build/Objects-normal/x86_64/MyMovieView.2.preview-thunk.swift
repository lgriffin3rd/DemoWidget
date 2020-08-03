@_private(sourceFile: "MyMovieView.swift") import DemoWidget
import SwiftUI
import SwiftUI

extension MyMovieView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/lewisgriffin/Documents/SwiftUI/DemoWidget/DemoWidget/Views/MyMovieView.swift", line: 37)
        MyMovieView(.oldGuard)
#sourceLocation()
    }
}

extension MyMovieView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lewisgriffin/Documents/SwiftUI/DemoWidget/DemoWidget/Views/MyMovieView.swift", line: 17)
        HStack {
            ZStack {
                Rectangle().fill(Color.blue)
                    .frame(maxWidth: __designTimeInteger("#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 80), maxHeight: __designTimeInteger("#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 100))
                Image(movie.image)
                    .resizable()
                    .frame(maxWidth: __designTimeInteger("#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 80), maxHeight: __designTimeInteger("#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 120))
            }
            VStack {
                Text(__designTimeString("#3786.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "Google Rating:"))
                    .font(.caption)
                    .foregroundColor(.blue)
                MovieRatingView(movie: movie)
            }
        }
#sourceLocation()
    }
}

typealias MyMovieView = DemoWidget.MyMovieView
typealias MyMovieView_Previews = DemoWidget.MyMovieView_Previews