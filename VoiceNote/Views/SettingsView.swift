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
                
                Section(header: Text("General")){
                    
                    Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Language")) {
                            Text("English").tag(1)
                            Text("Persian").tag(2)
                        }
                    .frame(height:48)
                    
                    Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Transcription Accuracy")) {
                        Text("High").tag(1)
                        Text("Low").tag(2)
                    }
                    .frame(height:48)
                    
                    HStack {
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                            Text("Notifications")
                        }
                        .frame(height:48)
                    }
                }
                
                Section(header: Text("Feedback")){
                    
                    NavigationLink(destination:Text("Profile")){
                       Text("Send Feedback")
                    }
                    .frame(height:48)
                    
                    NavigationLink(destination:Text("Rate")){
                       Text("Rate us")
                    }
                    .frame(height:48)
                }
                
                
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
