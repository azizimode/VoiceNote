//
//  NewNoteView.swift
//  VoiceNote
//
//  Created by Mohammad on 8/17/25.
//

import SwiftUI

struct NewNoteView: View {
    var body: some View {
        VStack {
            TextField("New Note", text: .constant(""))
                .padding()
        }
    }
}

#Preview {
    NewNoteView()
}
