//
//  SwiftUIExample-3.swift
//  SwiftUI-String&FunctionsExamples
//
//  Created by Kürşat Şimşek on 8.10.2021.
//

import SwiftUI

//    Ekrana iki textfield bir buton ve bir text koy. Butona tıkladığında iki textfield da toplam kaç karakter girmiş onu hesaplasın ve text e yazsın.

struct SwiftUIExample_3: View {
    
    @State var text1: String = ""
    @State var text2: String = ""
    @State var result = ""
    @State var size = 0
    
    func calculateStringSize(text1: String, text2: String) -> Int {
        size = text1.count + text2.count
        return size
    }
    
    var body: some View {
        VStack{
            TextField("First Text", text: $text1)
                .padding()
                .multilineTextAlignment(.center)
            
            TextField("Second Text", text: $text2)
                .padding()
                .multilineTextAlignment(.center)
            
            Button("Sum Text Count") {
                result = String(calculateStringSize(text1: text1, text2: text2))
            }
            
            Text(result)
                .padding()
                .multilineTextAlignment(.center)
        }
    }
}

struct SwiftUIExample_3_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExample_3()
    }
}
