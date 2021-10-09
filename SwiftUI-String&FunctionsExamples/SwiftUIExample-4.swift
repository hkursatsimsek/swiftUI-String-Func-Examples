//
//  SwiftUIExample-4.swift
//  SwiftUI-String&FunctionsExamples
//
//  Created by Kürşat Şimşek on 8.10.2021.
//

import SwiftUI

// Ekrana bir textfield bir buton ve bir text koy. Butona tıkladığında metni tersten yazdırsın. Çağatay ı Yatağaç şeklinde yazdırsın

struct SwiftUIExample_4: View {
    @State var text = ""
    @State var reversedText = ""
    @State var reversedString = ""
    
    func reversingText(text:String) -> String {
        return String(text.reversed())
    }
    func reversingTextWithLoop(text: String) -> String {
        for t in text {
            reversedString = "\(t)" + reversedString
        }
        return reversedString
    }
    
    var body: some View {
        VStack{
            TextField("Text", text: $text)
                .padding()
                .multilineTextAlignment(.center)
            
            Button("Reverse Text") {
//                reversedText = reversingText(text: text)
                reversedText = reversingTextWithLoop(text: text)
            }
            
            Text(reversedText)
                .padding()
                .multilineTextAlignment(.center)
        }
    }
}

struct SwiftUIExample_4_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExample_4()
    }
}
