import SwiftUI

struct OrderItem: View {

    let item: String

    let remarks: String

    let cost: String

    let isCompleted: Bool

    

    var body: some View {

        RoundedRectangle(cornerRadius: 30)

            .frame(width: 900, height: 125) // Adjust the size as needed

            .foregroundColor(Color.gray.opacity(0.5))

            .frame(maxWidth: .infinity, alignment: .leading)

            .overlay(

                ZStack {

                    HStack {

                        VStack {
                            
                            Text("Item")
                            
                                .bold()
                            
                                .italic()
                            
                                .foregroundColor(.black)
                            
                                .padding(.bottom)
                            
                                .underline()
                            
                                .frame(maxWidth: .infinity) // TO align the text
                                
                                .font(.title2)
                            
                            Text(item)
                            
                                .bold()
                            
                                .font(.system(size: 20))
                            
                                .foregroundColor(.black) /// CHANGE COLOR
                            
                            
                            
                            
                        }

                        

                        .frame(minHeight: 125, alignment: .top)

                        

                        Divider()

                        VStack {

                            Text("Remarks")

                                .bold()

                                .italic()

                                .foregroundColor(.black)

                                .padding(.bottom)

                                .underline()

                                .fixedSize(horizontal: true, vertical: true)

                                .frame(maxWidth: .infinity) // align the text
                            
                                .font(.title2)
                            
                                

                            Text(remarks)

                                .bold()

                                .font(.system(size: 20))

                                .foregroundColor(.indigo)

                                .fixedSize(horizontal: true, vertical: true)
                        
                        }

                        

                        

                        .frame(minHeight: 125, alignment: .top)

                        

                        Divider()

                        VStack {

                            Text("Cost")

                                .bold()

                                .foregroundColor(.black)

                                .padding(.bottom)

                                .underline()

                                .italic()
                            
                                .frame(maxWidth: .infinity)
                            
                                .font(.title2)
                            

                            Text(cost)

                                .bold()

                                .foregroundColor(.red)
                            
                                .font(.system(size: 20))

                            

                        }

                        .frame(minHeight: 125, alignment: .top)

                        

                        HStack {

                            Image(systemName: isCompleted ? "checkmark.circle" : "xmark.circle")

                                .bold()

                                .foregroundColor(isCompleted ? .green : .gray)

                                .font(.system(size: 84))

                                .padding()

                                .frame(maxWidth: .infinity, alignment: .trailing)

                            Spacer()

                        }

                    }

                }

            )

            .padding(.leading, 10)

    }

}



struct OrderQueue: View {

    var body: some View {

        ZStack {

            VStack { // VStack is for the header

                HStack {

                    Image(systemName: "arrowshape.turn.up.left.fill")

                        .font(.system(size: 35))

                        .foregroundColor(.black)

                    Spacer()

                    VStack {

                        Text("BDSFOOD")

                            .italic()

                            .bold()

                            .foregroundColor(.red)
                                           
                        
                        Text("ORDER QUEUES")

                            .bold()

                            .font(.system(size: 30))

                            .foregroundColor(.black)

                    }

                    Spacer()

                }

                .scaledToFit()

                .padding()

                .background(.brown)

                

                ScrollView {

                    VStack {

                        OrderItem(item: "x1 macaroni chicken cutlet cream sauce x1 potato mini", remarks: "collecting at 9 am", cost: "$ 3.70", isCompleted: true)

                        OrderItem(item: "x1 macaroni black sauce fish dowry x1 mashed potato", remarks: "collecting at 9 am", cost: "$ 4.00", isCompleted: false)

                        OrderItem(item: "x1 mac and cheese cream sauce x1 cheese sticks", remarks: "collecting at 9 am", cost: "$ 4.50", isCompleted: true)

                        OrderItem(item: "x1 pasta chicken with tomato sauce", remarks: "collecting at 9.30 am", cost: "$ 2.50", isCompleted: true)

                        OrderItem(item: "x1 macarnoi cream pasta", remarks: "collecting at 9.30 am", cost: "$ 2.50", isCompleted: true)

                    }

                }

            }

        }

    } // ScrollView CLOSE bracket

}



struct OrderQueue_Previews: PreviewProvider {

    static var previews: some View {

        OrderQueue()

    }

}
