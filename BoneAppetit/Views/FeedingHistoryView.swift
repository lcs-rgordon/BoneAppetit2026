//
//  FeedingHistoryView.swift
//  BoneAppetit
//
//  Created by Russell Gordon on 2026-02-26.
//

import SwiftUI

struct FeedingHistoryView: View {
    
    // MARK: Stored properties
    @State private var selection = "History"
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Current Selection", selection: $selection) {
                    Text("Meals").tag("Meals")
                    Text("Planned Feedings").tag("Planned Feedings")
                    Text("History").tag("History")
                }
                .pickerStyle(.segmented)
                
                FeedingView(
                    scheduledTime: "7 AM",
                    foodAndAmount: "Kibble, 1.5 scoops",
                    personAndActualTime: "Russ, at 9:41 AM"
                )

                FeedingView(
                    scheduledTime: "11 AM",
                    foodAndAmount: "Kibble, 1.5 scoops",
                    personAndActualTime: "Russ, at 12:21 PM"
                )
                
                FeedingView(
                    scheduledTime: "3 PM",
                    foodAndAmount: "Kibble, 1.5 scoops",
                    personAndActualTime: "Claire, at 3:13 PM"
                )

                FeedingView(
                    scheduledTime: "7 PM",
                    foodAndAmount: "Kibble, 1.5 scoops",
                    personAndActualTime: "Jen, at 6:53 PM"
                )


                Spacer()
            }
            .padding()
            .navigationTitle("Piper")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        // Does nothing right now
                    } label: {
                        Text("\(Image(systemName: "chevron.backward")) Pets")
                    }

                }
            }
        }
    }
}

#Preview {
    FeedingHistoryView()
}
