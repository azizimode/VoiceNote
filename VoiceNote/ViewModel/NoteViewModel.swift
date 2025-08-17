//
//  NoteViewModel.swift
//  VoiceNote
//
//  Created by Mohammad on 8/15/25.
//

import Foundation
import SwiftData
import AVFoundation

@ModelActor
actor AudioRecorder: NSObject, ObservableObject, AVAudioRecorderDelegate, AVAudioPlayerDelegate {
//    @Published var recordings : [Recording] = []
//    @Published var audioLevels: [CGFloat] = Array(repeating: 20, count: 30)
//    
//    init(note: NotesView) {
//        self.note = AudioNoteModel(title: "Hey this my first voice note")
//    }
    var title: String
    var text: String
    var date: Date
}
