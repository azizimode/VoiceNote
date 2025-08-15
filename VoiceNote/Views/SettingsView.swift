//
//  SettingsView.swift
//  VoiceNote
//
//  Created by Mohammad on 8/15/25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            List{
                
                Section(header: Text("About")){
                        Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Language")) {
                            Text("English").tag(1)
                            Text("Persian").tag(2)
                        }
                    
                    Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Transcription Accuracy")) {
                        Text("High").tag(1)
                        Text("Low").tag(2)
                    }
                    
                    Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                        Text("Notifications")
                    }
                }
                .padding(.vertical,6)
                
                Section(header: Text("Feedback")){
                    
                    NavigationLink(destination:Text("Profile")){
                       Text("Send Feedback")
                    }
                    
                    NavigationLink(destination:Text("Rate")){
                       Text("Rate us")
                    }
                }
                
                
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
