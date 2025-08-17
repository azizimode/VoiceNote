//
//  VoiceNoteApp.swift
//  VoiceNote
//
//  Created by Mohammad on 8/15/25.
//

import SwiftUI
import SwiftData

@main
struct VoiceNoteApp: App {
    var body: some Scene {
        WindowGroup {
            NotesView()
        }
        .modelContainer(for: AudioNoteModel.self)
    }
}
