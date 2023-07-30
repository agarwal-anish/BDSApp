//
//  TabBar.swift
//  BDSFoodApp
//
//  Created by Anish Agarwal on 5/7/23.


import SwiftUI

struct TabBar: View {
    @State private var selection: Tab = .home
     
    
    ///  Enum so the tab bar doesn't duplicate
    enum Tab {
        case home
        case account
        case activity
        case cart
        case western
        
    }
    var body: some View {
        TabView(selection: $selection) {
            
            // Home TabBar Icon
            homePage()
            
            // So it appears in the tab bar
                .tabItem {
                    
                    Image(systemName: "house.fill") // Icon
                    Text("Home")
                    
                }
            
            // Enum Tag for home
                .tag(Tab.home)
            
            // Account TabBar Icon
            accountPage()
            // So it appears in the tab bar
                .tabItem {
                    
                    Image(systemName: "person.fill") // Icon
                    Text("Account")
                    
                }
             
            // Enum Tag for account
                .tag(Tab.account)
            
            // Activity TabBar Icon
            ActivityPage()
            
            // So it appears in the tab bar
                .tabItem {
                    
                    Image(systemName: "clipboard.fill") // Icon
                    Text("Activity")
                    
                }
            
            // Enum Tag for actvity
                .tag(Tab.activity)
            
            // Cart TabBar Icon
            cartPage()
            
            // So    in the tab bar
                .tabItem {
                    
                    Image(systemName: "cart.fill") // Icon
                    Text("Cart")
                    
                }
            
            // Enum Tag for cart
                .tag(Tab.cart)
            
            SideBar()
            
            // So it appears in the tab bar
                .tabItem {
                    
                    Image(systemName: "fork.knife") // Icon
                    Text("Western Stall")
                    
                }
            
            // Enum Tag for western stall
                .tag(Tab.western)
            
            
        }
        
        // Colour when you press on the icon
        .accentColor(.blue)
    }
}



struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
