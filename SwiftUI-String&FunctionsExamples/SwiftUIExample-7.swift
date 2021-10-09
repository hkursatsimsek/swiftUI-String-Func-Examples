//
//  SwiftUIExample-7.swift
//  SwiftUI-String&FunctionsExamples
//
//  Created by Kürşat Şimşek on 8.10.2021.
//

import SwiftUI

// Bir string dizi oluştur. Dizideki elemanların hepsini büyük harf yapıp başka bir diziye ata

struct SwiftUIExample_7: View {
    @State var stringArr = ["a","b","c","d","e"]
    @State var upperedStringArr = [String]()
    @State var resultArr = [String]()
    
    var body: some View {
        VStack{
            Button("Click") {
                for chr in stringArr {
                    resultArr.append(chr.uppercased())
                }
                print(resultArr)
            }
            .padding()
            .multilineTextAlignment(.center)
            
            ForEach(resultArr,id:\.self) { chr in
                Text(chr)
                    .background(Color.red)
            }
            
        }
    }
}

struct SwiftUIExample_7_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExample_7()
    }
}
