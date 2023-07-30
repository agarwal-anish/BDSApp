import SwiftUI

struct OrderConfirmation: View {
    var body: some View {
        
        ZStack{
            VStack(spacing: 30){
                
                HStack{
                    
                    Image(systemName: "arrowshape.turn.up.left.fill")
                    
                        .font(.system(size: 35))
                    
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    VStack{
                        
                        Text("BDSFOOD")
                        
                            .frame( maxWidth: .infinity, alignment: .center)
                        
                            .italic()
                        
                            .bold()
                        
                            .foregroundColor(.red)
                        
                        Text("ORDER CONFIRMATION")
                        
                            .font(.system(size: 35))
                        
                            .foregroundColor(.black)
                        
                        
                        
                    }
                    
                }
                
                .frame(width: 1048, height: 117)
                
                .background(.brown)
                
                
                
                VStack(spacing: 30){
                    
                    Text("thank you for your order!")
                    
                        .foregroundColor(.black)
                    
                        .frame(width: 300, height: 10, alignment: .topLeading)
                    
                        .padding(10)
                    
                        .font(.system(size: 20))
                    
                        .bold()
                    
                        .multilineTextAlignment(.center)
                    
                    
                    
                    Image(systemName: "checkmark.circle.fill")
                    
                        .foregroundColor(.green)
                    
                        .font(.system(size: 30))
                    
                    
                    
                    Text("queue number: #3")
                    
                        .foregroundColor(.black)
                    
                    
                    
                    
                    
                    Text("~ O r d e r  s u m m a r y ~")
                    
                        .bold()
                    
                        .foregroundColor(.black)
                    
                    // spaced on purpose
                    
                    
                    
                }
                
                
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 10)// receipt
                    
                        .fill(Color(red: 219/255, green: 219/255, blue: 219/255))
                    
                        .frame(width: 900, height: 180, alignment: .center)
                    
                        .shadow(color: .black, radius: 10, x: 0, y: 0)
                    
                        .overlay(
                            
                            VStack(alignment: .center){
                                
                                HStack(spacing: 200){
                                    
                                    Text("item")
                                    
                                        .bold()
                                    
                                        .foregroundColor(.black)
                                    
                                    Text("quantity")
                                    
                                        .bold()
                                    
                                        .foregroundColor(.black)
                                    
                                    Text("cost")
                                    
                                        .bold()
                                    
                                        .foregroundColor(.black)
                                    
                                }
                                
                                HStack(spacing: 120){
                                    
                                    Text("mac and cheese cream sauce")
                                    
                                        .foregroundColor(.black)
                                    
                                        .bold()
                                    
                                        .padding(.horizontal, -80)
                                    
                                    Text("x1")
                                    
                                        .foregroundColor(.black)
                                    
                                        .padding(.horizontal, 70)
                                    
                                    Text("$2.50")
                                    
                                        .foregroundColor(.black)
                                    
                                        .padding(.horizontal, 10)
                                    
                                }
                                
                                HStack{
                                    
                                    Text("remarks: collecting at 9.30am")
                                    
                                        .foregroundColor(.blue)
                                    
                                }
                                
                                HStack(spacing: 120){
                                    
                                    Text("cheese stick")
                                    
                                        .foregroundColor(.black)
                                    
                                        .padding(.horizontal, -15)
                                    
                                        .bold()
                                    
                                    Text("x2")
                                    
                                        .foregroundColor(.black)
                                    
                                        .padding(.horizontal, 80)
                                    
                                    Text("$2.00")
                                    
                                        .foregroundColor(.black)
                                    
                                        .padding(.horizontal, 10)
                                    
                                }
                                
                                HStack{
                                    
                                    Text("remarks: collecting at 9.30am")
                                    
                                        .foregroundColor(.blue)
                                    
                                }
                                
                                HStack(spacing: 400){
                                    
                                    Text("status: ready for collection")
                                    
                                        .foregroundColor(.red)
                                    
                                        .bold()
                                    
                                    Text("Total: $4.50")
                                    
                                    
                                    
                                        .bold()
                                    
                                        .foregroundColor(.black)
                                    
                                    
                                    
                                }
                                
                                
                                
                            }
                            
                        )
                    
                    
                    
                }
                
                Rectangle()
                
                    .frame(width: 1048, height: 117)
                
                    .foregroundColor(.gray)
                
                
                
                
                
            }
            
            .background(Color.yellow)
            
        }
    }
}

struct OrderConfirmation_Previews: PreviewProvider {
    static var previews: some View {
        OrderConfirmation()
    }
}

