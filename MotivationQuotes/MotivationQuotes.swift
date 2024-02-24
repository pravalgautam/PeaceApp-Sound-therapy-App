//
//  MotivationQuotes.swift
//  MotivationQuotes
//
//  Created by Praval Gautam on 22/02/24.
//

import WidgetKit
import SwiftUI
struct Provider: AppIntentTimelineProvider {


    func placeholder(in context: Context) -> SimpleEntry {

        SimpleEntry(date: Date(), configuration: ConfigurationAppIntent())
    }
    
    func snapshot(for configuration: ConfigurationAppIntent, in context: Context) async -> SimpleEntry {

        SimpleEntry(date: Date(), configuration: configuration)
    }

    func timeline(for configuration: ConfigurationAppIntent, in context: Context) async -> Timeline<SimpleEntry> {
        var entries: [SimpleEntry] = []

     
        let currentDate = Date()
        for minuteOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .minute, value: minuteOffset * 5, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        return Timeline(entries: entries, policy: .atEnd)
    }
}


struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationAppIntent
}

struct MotivationQuotesEntryView : View {
    var entry: Provider.Entry
    var motivationArr = MotivationArr()
    var body: some View {
        ZStack {
            
              
                   
                   VStack {
                   
                       Text(motivationArr.randomQuote())
                           .font(.title3)
                           .foregroundColor(.white)
                           .lineLimit(5)
                           .multilineTextAlignment(.leading)
                           .padding()
                   }
       
        }


  

    }

}

struct MotivationQuotes: Widget {
    let kind: String = "MotivationQuotes"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            MotivationQuotesEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
    }
}

extension ConfigurationAppIntent {
    fileprivate static var smiley: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        intent.favoriteEmoji = "😀"
        return intent
    }
    
    fileprivate static var starEyes: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        intent.favoriteEmoji = "🤩"
        return intent
    }
}

#Preview(as: .systemSmall) {
    MotivationQuotes()
} timeline: {
    SimpleEntry(date: .now, configuration: .smiley)
    SimpleEntry(date: .now, configuration: .starEyes)
}

struct MotivationArr{
    var quotes: [String] = [
        "Believe you can and you're halfway there. - Theodore Roosevelt",
        "Don't watch the clock; do what it does. Keep going. - Sam Levenson",
        "The only way to do great work is to love what you do. - Steve Jobs",
        "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill",
        "Your time is limited, don't waste it living someone else's life. - Steve Jobs",
        "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
        "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle. - Christian D. Larson",
        "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt",
        "It always seems impossible until it's done. - Nelson Mandela",
        "Do not wait to strike till the iron is hot, but make it hot by striking. - William Butler Yeats",
        "Success is stumbling from failure to failure with no loss of enthusiasm. - Winston Churchill",
        "The only person you are destined to become is the person you decide to be. - Ralph Waldo Emerson",
        "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart. - Roy T. Bennett",
        "Your attitude, not your aptitude, will determine your altitude. - Zig Ziglar",
        "The only way to achieve the impossible is to believe it is possible. - Charles Kingsleigh",
        "The road to success and the road to failure are almost exactly the same. - Colin R. Davis",
        "The only thing standing between you and your goal is the story you keep telling yourself as to why you can't achieve it. - Jordan Belfort",
        "Challenges are what make life interesting and overcoming them is what makes life meaningful. - Joshua J. Marine",
        "You are never too old to set another goal or to dream a new dream. - C.S. Lewis",
        "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt"
    ]
    func randomQuote() -> String {
          guard !quotes.isEmpty else {
              return "No quotes available."
          }

          let randomIndex = Int.random(in: 0..<quotes.count)
          return quotes[randomIndex]
      }
}
