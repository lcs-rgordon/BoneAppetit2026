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
