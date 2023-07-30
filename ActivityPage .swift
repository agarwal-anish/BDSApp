import SwiftUI

struct ActivityPage: View {

    var body: some View {
        ZStack {
            Header(title: "BDSFOOD", subtitle: "Activity", image: "clipboard.fill")
                .padding(.bottom, 30) // Add spacing between the header and the rectangle
            
            VStack { // Add padding around the entire rectangle
                ZStack {
                    Rectangle()
                        .frame(width: 1000, height: 600) // Dimensions
                        .foregroundColor(Color.gray.opacity(0.3))
                        .overlay(
                            ZStack { // Everything should be inside this ZStack
                                VStack {
                                    HStack {
                                        Text("Recent")
                                            .bold()
                                            .foregroundColor(.black)
                                            .font(.largeTitle) // Increase font size for the title
                                            .padding(10)
                                            .underline(true, color: .black)
                                        Spacer()
                                    }
                                    .padding(15)
                                    
                                    VStack(alignment: .leading, spacing: 20) {
                                        // First Item
                                        ItemRow(item: "• Spaghetti Chicken Chop cream sauce", date: "24 July 2023, 11.00am", quantity: "X1", price: "$ 1.50")
                                        
                                        // Second Item
                                        ItemRow(item: "• Cheese Ball", date: "24 July 2023, 11.30am", quantity: "X3", price: "$ 2.50")
                                    }
                                    .padding(.horizontal)
                                    
                                    Spacer()
                                    
                                    HStack {
                                        Image(systemName: "cursorarrow.click.badge.clock")
                                            .padding()
                                        Button(action: {
                                            print("View History")
                                        }) {
                                            Text("View History")
                                                .padding()
                                                .bold()
                                                .foregroundColor(Color.blue)
                                        }
                                    }
                                }
                            }
                        )
                }
            }
            .padding(20) // Add padding around the entire rectangle
        }
    }
}

struct ItemRow: View {
    let item: String
    let date: String
    let quantity: String
    let price: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text(item)
                    .bold()
                    .foregroundColor(.black)
                    .font(.title) // Increase font size for the item
                
                Spacer()
                
                Text(quantity)
                    .font(.title2) // Increase font size for quantity
                    .padding(.leading, 20)
                
                Text(price)
                    .font(.title2) // Increase font size for price
                    .padding(.leading, 20)
            }
            
            Text(date)
                .foregroundColor(.black)
                .font(.subheadline) // Increase font size for the date
        }
    }
}
