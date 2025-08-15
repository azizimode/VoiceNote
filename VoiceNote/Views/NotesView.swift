//
//  NotesView.swift
//  VoiceNote
//
//  Created by Mohammad on 8/15/25.
//

import SwiftUI

struct NotesView: View {
    var body: some View {
        NavigationStack {
            List{
                Text("Hello, World!")
            }
            .navigationTitle("Notes")
        }
    }
}
#Preview {
    NotesView()
}
