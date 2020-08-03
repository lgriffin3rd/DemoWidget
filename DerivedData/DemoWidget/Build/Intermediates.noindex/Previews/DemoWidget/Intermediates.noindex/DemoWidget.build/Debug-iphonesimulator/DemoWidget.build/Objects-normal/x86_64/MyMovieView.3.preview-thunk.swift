@_private(sourceFile: "MyMovieView.swift") import DemoWidget
import SwiftUI
import SwiftUI

extension MyMovieView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/lewisgriffin/Documents/SwiftUI/DemoWidget/DemoWidget/Views/MyMovieView.swift", line: 37)
        __designTimeSelection(MyMovieView(.oldGuard), "#3786.[2].[0].property.[0].[0]")
#sourceLocation()
    }
}

extension MyMovieView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lewisgriffin/Documents/SwiftUI/DemoWidget/DemoWidget/Views/MyMovieView.swift", line: 17)
        __designTimeSelection(HStack {
            __designTimeSelection(ZStack {
                __designTimeSelection(Rectangle().fill(__designTimeSelection(Color.blue, "#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value"))
                    .frame(maxWidth: __designTimeInteger("#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 80), maxHeight: __designTimeInteger("#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 100)), "#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                __designTimeSelection(Image(__designTimeSelection(movie.image, "#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value"))
                    .resizable()
                    .frame(maxWidth: __designTimeInteger("#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 80), maxHeight: __designTimeInteger("#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 120)), "#3786.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }, "#3786.[1].[2].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(VStack {
                __designTimeSelection(Text(__designTimeString("#3786.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "Google Rating:"))
                    .font(.caption)
                    .foregroundColor(.blue), "#3786.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                __designTimeSelection(MovieRatingView(movie: __designTimeSelection(movie, "#3786.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value")), "#3786.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
            }, "#3786.[1].[2].property.[0].[0].arg[0].value.[1]")
        }, "#3786.[1].[2].property.[0].[0]")
#sourceLocation()
    }
}

typealias MyMovieView = DemoWidget.MyMovieView
typealias MyMovieView_Previews = DemoWidget.MyMovieView_Previews