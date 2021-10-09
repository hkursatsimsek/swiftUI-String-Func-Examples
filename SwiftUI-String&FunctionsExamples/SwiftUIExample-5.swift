//
//  SwiftUIExample-5.swift
//  SwiftUI-String&FunctionsExamples
//
//  Created by Kürşat Şimşek on 8.10.2021.
//

import SwiftUI

// Ekrana bir textfield bir buton koy. Butona tıkladığında girilen metnin ilk harfi büyük diğer harfi küçük şeklinde yazsın. Çağatay girdiğinde çAğAtAy

struct SwiftUIExample_5: View {
    @State var text = ""
    @State var camelText = ""
    @State var resutl = ""
    @State var charArray = [String]()
    
    func toCamelString(text: String) -> String {
        for i in stride(from: 0, to: text.count, by: 2) {
            
        }
        return ""
    }
    
    var body: some View {
        TextField("Text", text: $text)
            .padding()
            .multilineTextAlignment(.center)
        
        Button("toCamel") {
            
        }
        
        
    }
}

struct SwiftUIExample_5_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExample_5()
    }
}
