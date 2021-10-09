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
    @State var result = ""
    @State var camelArray = [String]()
    
    var body: some View {
        VStack{
            TextField("Text", text: $text)
                .padding()
                .multilineTextAlignment(.center)
                .autocapitalization(.none)
            
            Button("toCamel") {
                var sayac = 0
                for element in text {
                    if sayac % 2 == 0 {
                        result += element.lowercased()
                    } else {
                        result += element.uppercased()
                    }
                    
                    sayac += 1
                }
            }
            
            Text(result)
                .padding()
                .foregroundColor(Color.blue)
        }
        
        
    }
}

struct SwiftUIExample_5_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExample_5()
    }
}
