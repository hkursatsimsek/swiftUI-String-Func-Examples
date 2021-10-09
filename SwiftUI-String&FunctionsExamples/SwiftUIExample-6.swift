//
//  SwiftUIExample-6.swift
//  SwiftUI-String&FunctionsExamples
//
//  Created by Kürşat Şimşek on 8.10.2021.
//

import SwiftUI

// Bir sayı dizisi oluştur. Dizide kaç eleman olduğunu print et
// Dizideki sayıların toplamını ekrana yaz. [5,4,1] dizisinin toplamı 10 gibi

struct SwiftUIExample_6: View {
    
    var numberArray = [1,3,4,5,7,12,33]
    @State var total = 0
    
    func sumOfElements() -> Int {
        total = 0
        for number in numberArray {
            total += number
        }
        return total
    }
    
    var body: some View {
        VStack{
            Text("Dizide \(numberArray.count) eleman vardır.")
                .padding()
            
            Button("Calculate") {
                total = sumOfElements()
            }
            
            Text("Dizideki elemanların toplamı :  \(total)")
                .padding()
        }
    }
}

struct SwiftUIExample_6_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExample_6()
    }
}
