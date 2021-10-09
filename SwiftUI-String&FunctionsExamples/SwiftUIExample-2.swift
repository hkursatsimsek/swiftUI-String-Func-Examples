//
//  SwiftUIExample-2.swift
//  SwiftUI-String&FunctionsExamples
//
//  Created by Kürşat Şimşek on 8.10.2021.
//

import SwiftUI

// Ekrana iki textfield bir buton ve bir text koy. Girilen metinlerin ilk iki harfini büyütüp ekrana yazsın. Örneğin  çağatay yıldız yazıldı. ÇAğatay YIldız yazacak gibi.

struct SwiftUIExample_2: View {
    @State var textFirst = ""
    @State var textSecond = ""
    @State var resultText = ""
    @State var firstText = ""
    @State var firstOther = ""
    @State var secondText = ""
    @State var secondOther = ""
    
    func toUpperFirstText(text: String) -> String {
        firstText = String(text.prefix(2)).uppercased()
        firstOther = String(text.dropFirst(2))
        return firstText + firstOther
    }
    
    func toUpperSecondText(text: String) -> String {
        secondText = String(text.prefix(2)).uppercased()
        secondOther = String(text.dropFirst(2))
        return secondText + secondOther
    }
    
    
    var body: some View {
        VStack{
            TextField("Name", text: $textFirst)
                .padding()
                .multilineTextAlignment(.center)
                .autocapitalization(.none)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Surname", text: $textSecond)
                .padding()
                .multilineTextAlignment(.center)
                .autocapitalization(.none)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("toUpperFirstChars") {

                resultText = toUpperFirstText(text: textFirst) + " " + toUpperSecondText(text: textSecond)
            }
            .padding()
            .foregroundColor(Color.blue)
            .textFieldStyle(.roundedBorder)
            
            Text(resultText)
                .padding()
                .multilineTextAlignment(.center)
        }
    }
}

struct SwiftUIExample_2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExample_2()
    }
}
