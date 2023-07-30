import SwiftUI



struct WesternStall_MainDish : View {

    var body: some View{
        ZStack{
            
            VStack{
                
                HStack{
                    
                    Text("Main Dish")
                    
                        .bold()
                    
                        .font(.system(size:35))
                    
                    Spacer()
                    
                }
                
                VStack{
                    
                    HStack{
                        
                        NavigationLink{
                            
//                            MacPage()
                            
                        } label:{
                            
                            VStack{
                                
                                Image("macaroniMain")
                                
                                    .resizable()
                                
                                    .frame(width: 300)
                                
                                    .frame(height: 200)
                                
                                    .border(.black, width: 1)
                                
                                Text("Macaroni")
                                
                                    .font(.system(size: 20))
                                
                                    .foregroundColor(.black)
                                
                                    .padding()
                                
                                    .background(.gray)
                                
                                
                                
                            }
                            
                        }
                        
                        NavigationLink{
                            
//                            SpaPage()
                            
                        } label:{
                            
                            VStack{
                                
                                Image("spaghettiMain")
                                
                                    .resizable()
                                
                                    .frame(width: 300)
                                
                                    .frame(height: 200)
                                
                                    .border(.black, width: 1)
                                
                                Text("Spaghetti")
                                
                                    .font(.system(size: 20))
                                
                                    .foregroundColor(.black)
                                
                                    .padding()
                                
                                    .background(.gray)
                                
                            }
                            
                        }
                        
                        Spacer()
                        
                    }
                    
                    HStack{
                        
                        NavigationLink{
                            
//                            RicePage()
                            
                        } label:{
                            
                            VStack{
                                
                                Image("riceMain")
                                
                                    .resizable()
                                
                                    .frame(width: 300)
                                
                                    .frame(height: 200)
                                
                                    .border(.black, width: 1)
                                
                                Text("Rice")
                                
                                    .font(.system(size: 20))
                                
                                    .foregroundColor(.black)
                                
                                    .padding()
                                
                                    .background(.gray)
                                
                            }
                            
                        }
                        
                        NavigationLink{
                            
//                            BakedPage()
                            
                        } label:{
                            
                            VStack{
                                
                                Image("bakedMain")
                                
                                    .resizable()
                                
                                    .frame(width: 300)
                                
                                    .frame(height: 200)
                                
                                    .border(.black, width: 1)
                                
                                Text("Baked Items")
                                
                                    .font(.system(size: 20))
                                
                                    .foregroundColor(.black)
                                
                                    .padding()
                                
                                    .background(.gray)
                                
                            }
                            
                        }
                        
                        Spacer()
                        
                    }
                    
                }
                
            }
        }

    }

}


