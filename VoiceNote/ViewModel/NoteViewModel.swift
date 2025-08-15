//
//  NoteViewModel.swift
//  VoiceNote
//
//  Created by Mohammad on 8/15/25.
//

import Foundation

class NoteViewModel {
    let note: NotesModel
    
    init(note: NotesView) {
        self.note = NotesModel(title: "Hey this my first voice note")
    }
}
