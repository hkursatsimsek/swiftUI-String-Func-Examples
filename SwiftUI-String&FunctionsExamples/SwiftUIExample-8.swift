//
//  SwiftUIExample-8.swift
//  SwiftUI-String&FunctionsExamples
//
//  Created by Kürşat Şimşek on 8.10.2021.
//

import SwiftUI

// Bir string dizi oluştur. Dizideki elemanların ilk 2 harfini alıp yeni diziye ata.  Örneğin [“ali”,”veli”,”ayşe”] => [“al”,”ve”,”ay”] şeklinde

struct SwiftUIExample_8: View {
    @State var stringArr = ["ali","veli","deli"]
    @State var resultArr = [String]()
    @State var firstText = ""
    @State var firstOther = ""
    @State var result = ""
    
    func toUpperFirstText(text: String) -> String {
        firstText = String(stringArr[0].prefix(2))
        firstOther = String(text.dropFirst(2))
        return firstText + firstOther
    }

    func toUpperFirstLastChar() {
        for str in stringArr {
            result = String(str.prefix(2))
            resultArr.append(result)
            print(resultArr)
        }
    }
    
    var body: some View {
        VStack{
            Button("toUpperFirstLastChar") {
                toUpperFirstLastChar()
            }
            .padding()
            .foregroundColor(Color.red)
            
            List(resultArr,id:\.self) { string in
                Text(string)
            }
        }
    }
}

struct SwiftUIExample_8_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExample_8()
    }
}
