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
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text("7 AM")
                            .font(.title3)
                            .bold()
                        Text("Kibble, 1.5 scoops")
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("\(Image(systemName: "checkmark.circle.fill"))")
                            .foregroundStyle(.green)
                        Text("Russ, at 9 AM")
                    }
                }
                .padding()
                .border(.black)
                
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
