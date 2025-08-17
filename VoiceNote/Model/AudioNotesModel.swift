//
//  NotesModel.swift
//  VoiceNote
//
//  Created by Mohammad on 8/15/25.
//

import Foundation
import SwiftData

@Model
class AudioNoteModel: Identifiable {
    var id: UUID = UUID()
    var title: String
    var date: Date
    var audioURL: URL
    
    init(title: String, date: Date , audioURL: URL) {
        self.title = title
        self.date = date
        self.audioURL = audioURL
    }
}
