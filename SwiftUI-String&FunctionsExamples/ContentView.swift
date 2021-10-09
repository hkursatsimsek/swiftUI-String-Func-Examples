//
//  ContentView.swift
//  SwiftUI-String&FunctionsExamples
//
//  Created by Kürşat Şimşek on 8.10.2021.
//

import SwiftUI

// Ekrana bir textfield bir buton ve bir text koy. Butona tıkladığında textfield dan aldığı metni tamamen büyütsün ve aralarına bir boşluk koysun. Örneğin çağatay girsin Ç A Ğ A T A Y çıktı alalım

struct ContentView: View {
    @State var entryText: String = ""
    @State var resultText: String = ""
    @State var lastText: String = ""
    
    func toUpperText(text: String) -> String {
        for t in text {
            resultText += t.uppercased() + " "
        }
        return resultText
    }
    
    
    var body: some View {
        VStack{
            TextField("Text Giriniz", text: $entryText)
                .padding()
                .multilineTextAlignment(.center)
            
            Button("toUpper") {
                lastText = toUpperText(text: entryText)
                resultText = ""
                entryText = ""
            }
            .padding()
            .foregroundColor(Color.gray)

            Text(lastText)
                .padding()
                .multilineTextAlignment(.center)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
