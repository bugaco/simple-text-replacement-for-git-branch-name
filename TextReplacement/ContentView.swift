//
//  ContentView.swift
//  TextReplacement
//
//  Created by BugaCo on 2022/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var originText = ""
    @State var resultText = ""
    
    var body: some View {
        VStack {
            TextField("origin text", text: $originText)
                .lineLimit(3)
            Button("replace") {
                resultText = originText.replacingOccurrences(of: " ", with: "-")
                NSPasteboard.general.clearContents()
                NSPasteboard.general.setString(resultText, forType: .string)
            }
            .buttonStyle(.bordered)
            TextField("result", text: $resultText)
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
