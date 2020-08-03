//
//  DemoWidgetWidget.swift
//  DemoWidgetWidget
//
//  Created by Lewis Griffin on 8/3/20.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    @AppStorage("NewMovie", store: UserDefaults(suiteName: "group.ig3.coolWidget"))
    var m: Data = Data()
    
    public func snapshot(with context: Context, completion: @escaping (DemoEntry) -> ()) {
        let selected = try? JSONDecoder().decode(Movie.self, from: m)
        let entry = DemoEntry(date: Date(), movie: selected!)
        completion(entry)
    }

    public func timeline(with context: Context, completion: @escaping (Timeline<DemoEntry>) -> ()) {
//        var entries: [DemoEntry] = []
        let selected = try? JSONDecoder().decode(Movie.self, from: m)
        
        let entry = DemoEntry(date: Date(), movie: selected!)
        
//        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
//        let currentDate = Date()
//        for hourOffset in 0 ..< 5 {
//            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
//            let entry = SimpleEntry(date: entryDate)
//            entries.append(entry)
//        }

        let timeline = Timeline(entries: [entry], policy: .atEnd)
        completion(timeline)
    }
    
    func placeholder(with: Context) -> DemoEntry {
        return DemoEntry(date: Date(), movie: .oldGuard)
    }
}

struct DemoEntry: TimelineEntry {
    public let date: Date
    let movie: Movie
}

//struct PlaceholderView : View {
//    var body: some View {
//        Text("Placeholder View")
//            .redacted(reason: .placeholder)
//    }
//}

struct DemoWidgetWidgetEntryView : View {
    var entry: Provider.Entry
    
    @Environment(\.widgetFamily) var family
    
    @ViewBuilder
    var body: some View {
        switch family {
        case .systemSmall:
            VStack {
                MyMovieView(entry.movie)
            }
        case .systemMedium:
            VStack {
                MyMovieView(entry.movie)
            }
        default:
            ZStack {
            VStack {
                MyMovieView(entry.movie)
            }
                Text("This is the largest Widget")
                    .font(.title)
                    .foregroundColor(.blue)
            }
        }
        
    }
}

@main
struct DemoWidgetWidget: Widget {
    private let kind: String = "DemoWidgetWidget"

    public var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            DemoWidgetWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall])
    }
}

