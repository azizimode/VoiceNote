//
//  NewNoteView.swift
//  VoiceNote
//
//  Created by Mohammad on 8/17/25.
//

import SwiftUI

struct NoteView: View {
    @State private var noteText: String = "This is a new note"
    var body: some View {
        NavigationStack {
            VStack {
//                TextField("Type your Note", text: .constant(""))
//                    .padding()
//                    .background(Color.gray.opacity(0.1))
//                    .cornerRadius(4)
//                    .padding()
                    TextEditor(text: $noteText)
                    .background(Color.gray.opacity(0.1))
                    .frame(minHeight: 200)
                    .cornerRadius(4)
                    .padding()
                
                Spacer()
            }
            Spacer()
            .navigationTitle("New Note")
        }
    }
}

#Preview {
    NoteView()
}
