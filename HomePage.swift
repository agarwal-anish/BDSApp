//
//  HomePage.swift
//  BDSFoodApp
//
//  Created by Anish Agarwal on 5/7/23.
//

import SwiftUI

struct homePage: View {
    var body: some View {
        ZStack{
            
            // VStack for the heading, do not add anything inside
            Header(title: "BDSFOOD", subtitle: "Bedok South Secondary School", image: "")
            
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}
