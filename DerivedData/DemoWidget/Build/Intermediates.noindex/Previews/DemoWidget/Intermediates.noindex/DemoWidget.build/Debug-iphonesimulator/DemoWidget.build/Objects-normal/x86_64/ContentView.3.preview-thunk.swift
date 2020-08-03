@_private(sourceFile: "ContentView.swift") import DemoWidget
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/lewisgriffin/Documents/SwiftUI/DemoWidget/DemoWidget/ContentView.swift", line: 28)
        __designTimeSelection(ContentView(), "#3408.[2].[0].property.[0].[0]")
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lewisgriffin/Documents/SwiftUI/DemoWidget/DemoWidget/ContentView.swift", line: 16)
        __designTimeSelection(ScrollView {
            __designTimeSelection(VStack(spacing: __designTimeInteger("#3408.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 10)) {
                __designTimeSelection(ForEach(__designTimeSelection(movies, "#3408.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")) { movie in
                    __designTimeSelection(MyMovieView(__designTimeSelection(movie, "#3408.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value")), "#3408.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                }, "#3408.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
            }, "#3408.[1].[2].property.[0].[0].arg[0].value.[0]")
        }, "#3408.[1].[2].property.[0].[0]")
#sourceLocation()
    }
}

typealias ContentView = DemoWidget.ContentView
typealias ContentView_Previews = DemoWidget.ContentView_Previews