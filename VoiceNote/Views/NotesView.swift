//
//  NotesView.swift
//  VoiceNote
//
//  Created by Mohammad on 8/15/25.
//

import SwiftUI

struct NotesView: View {
    @State private var searchText: String = ""
    var body: some View {
        NavigationStack {
            ZStack {
                List{
                    Text("Hello, World!")
                }
                .navigationTitle("Notes")
                .listStyle(.automatic)
                .searchable(text: $searchText, prompt: Text("Search Notes"))
                .toolbar{
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gearshape")
                    }
                }
                
                VStack {
                    Spacer()
                    HStack {
                        Button{}label: {
                            Image(systemName: "microphone")
                                .font(.system(size: 32))
                                .frame(width: 80, height: 80)
                                .background(Color.blue)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .shadow(color:Color.blue.opacity(0.8) ,radius: 8)
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
