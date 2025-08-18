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
                    
                }
                .navigationTitle("Notes")
                .listStyle(.automatic)
//                .searchable(text: $searchText, prompt: Text("Search Notes"))
                .toolbar{
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gearshape")
                    }
                }
                
//                if isRecording {
//                    AudioWaveformView(audioLevels: audioRecorder.audioLevels)
//                      .frame(height: 150)
//                      .padding()
//                      .transition(.scale)
//                }
                
                VStack {
                    ContentUnavailableView(label:{
                        Label("No notes found", systemImage: "folder")
                    },description: {
                        Text("Start recording a note by tapping on the microphone icon.")
                    }, actions: {
            
                    })
                    .offset(y: 10)
                    
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
