//
//  ContentView.swift
//  VoiceNote
//
//  Created by Mohammad on 8/15/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var context
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
