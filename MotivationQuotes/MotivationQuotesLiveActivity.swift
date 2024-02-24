//
//  MotivationQuotesLiveActivity.swift
//  MotivationQuotes
//
//  Created by Praval Gautam on 22/02/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct MotivationQuotesAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct MotivationQuotesLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: MotivationQuotesAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)


        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension MotivationQuotesAttributes {
    fileprivate static var preview: MotivationQuotesAttributes {
        MotivationQuotesAttributes(name: "World")
    }
}

extension MotivationQuotesAttributes.ContentState {
    fileprivate static var smiley: MotivationQuotesAttributes.ContentState {
        MotivationQuotesAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: MotivationQuotesAttributes.ContentState {
         MotivationQuotesAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: MotivationQuotesAttributes.preview) {
   MotivationQuotesLiveActivity()
} contentStates: {
    MotivationQuotesAttributes.ContentState.smiley
    MotivationQuotesAttributes.ContentState.starEyes
}
