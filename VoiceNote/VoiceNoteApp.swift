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
    // App group: Shared Container between app and extension
    // When you need to add configuration for your Container
    
//    let container: ModelContainer = {
//        let schema = Schema([AudioNoteModel.self])
//        let container = try! ModelContainer(for: schema, configurations: [])
//        return container
//    }()
    
    var body: some Scene {
        WindowGroup {
            NotesView()
        }
        // Container: Access Data Model in All of Our Views at the Root of Our App Like EnvironmentObject
        .modelContainer(for: AudioNoteModel.self)
//        .modelContainer(container)
    }
}
