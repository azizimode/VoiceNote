//
//  NotesView.swift
//  VoiceNote
//
//  Created by Mohammad on 8/15/25.
//

import SwiftUI
import AVFoundation
import Combine

struct NotesView: View {
    
    @Environment(\.modelContext) var context
    @State private var searchText: String = ""
//    @StateObject private var audioRecorder = AudioNoteModel(title: "lm")
    @State private var isRecording = false
    @State private var currentlyPlaying: URL? = nil
    
    var body: some View {
        NavigationStack {
            ZStack {
                List{
                    NoteCard()
                }
                .navigationTitle("Notes")
                .listStyle(.automatic)
                
                .toolbar{
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gearshape")
                    }
                }

                VStack {
                    EmptyState()
                    Spacer()
                    HStack {
                        Button{
                            isRecording.toggle()
                        }label: {
                            Image(systemName:isRecording ? "stop.fill" : "mic.fill")
                                .font(.system(size: 32))
                                .frame(width: 80, height: 80)
                                .background(isRecording ? Color.red : Color.blue)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .shadow(radius: 8)
                                .scaleEffect(isRecording ? 1.2 : 1)
                                .animation(.spring(), value:isRecording)
                        }
                    }
                    .padding(.bottom, 20)
                }
            }
        }
    }
}
#Preview {
        NotesView()
}

extension Notification.Name {
    static let recordVoiceDidFinish = Notification.Name("recordVoiceDidFinish")
}

struct NoteCard: View {
    var body: some View {
        HStack(spacing: 16){
            ZStack {
                Image(systemName: "text.document")
                    .font(.system(size: 24))
                    .foregroundColor(.primary)
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 48, height: 48)
                
            }
            VStack(alignment: .leading){
                Text("New Note")
                    .font(.headline)
                Text("August 15, 10:30 AM")
                    .font(.subheadline)
            }
        }
    }
}

struct EmptyState: View {
    var body: some View {
        ContentUnavailableView(label:{
            Label("No Notes Found", systemImage: "note.text")
        },description: {
            Text("Start recording your thoughts by tapping on the microphone icon.")
        }, actions: {
            
        })
    }
}
