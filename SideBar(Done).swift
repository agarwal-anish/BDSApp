
import SwiftUI

struct SideBar: View {
    var body: some View {
        ZStack{
            NavigationView {
                ZStack{
                    Rectangle()
                        .frame(width: 250) 
                        .foregroundColor(Color(red: 196/255, green: 164/255, blue: 132/255)) // Specifying the color to forest green
    
                    // All of the code inside this overlay will appear on the rectangle
                        .overlay(
                            VStack(alignment: .leading) { // Align the content to the left side
                                VStack{
                                    NavigationLink(destination: WesternStall_MainDish()) { // Use destination to specify the destination view
                                        VStack{
                                            Image("MainDish") // Replace "your_image_name" with the actual image name
                                                .resizable()
                                                .frame(width: 170, height: 200)
                                                .border(.black, width: 1)
                                            Text("Main Dishes") // Replace "Your Image Text" with the actual text
                                                .font(.system(size: 20))
                                                .foregroundColor(.black)
                                                .background(Color.gray) // Use Color directly for background
                                        }
                                    }
                                }
                                
                                .padding(.leading, 10)
                                VStack{
                                    NavigationLink(destination: WesternStall_AddOns()) { // Use destination to specify the destination view
                                        VStack{
                                            Image("AddOns") // Replace "your_image_name" with the actual image name
                                                .resizable()
                                                .frame(width: 170, height: 200)
                                                .border(.black, width: 1)
                                            Text("Add Ons") // Replace "Your AddOnPage Text" with the actual text
                                                .font(.system(size: 20))
                                                .foregroundColor(.black)
                                                .background(Color.gray) // Use Color directly for background
                                        }
                                    }
                                }
                            }
                        )
                }
            } // Navigation View Ends
            Header(title: "BDSFoodApp", subtitle: "Western Stall", image: "") // header for the page using sidebar
        }
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
