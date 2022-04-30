//
//  ContentView.swift
//  MessageSender
//
//  Created by Catherine on 25/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State var NumberToMessage = ""
    @State var Message = ""
    
    var body: some View {
        VStack{
            TextField("Enter a number", text: $NumberToMessage)
            TextField("Enter Message", text: $Message)
            Button(action: {sendMessage()
                
            }, label: {
                Text("Send Message").font(.title).foregroundColor(Color.blue)
            })
        }
    }
    func sendMessage(){
        let sms: String = "sms:\(NumberToMessage)&body=\(Message)"
        let strURL: String = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        UIApplication.shared.open(URL.init(string: strURL)!,options:[:],completionHandler: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
