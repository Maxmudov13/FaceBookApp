import SwiftUI

struct ProfilePost: View {
    
    var imgName = "image0"
    
    // Like Button
    @State var handLike = false
    @State var hand = "hand.thumbsup"
    
    @State var num: Int = 9
    
    var body: some View {
        
        VStack{
            // Gray Line
            HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
            
            // header
            HStack{
                
                // Profile Image
                Image("image0").resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                
                // Profile Name and Post Time
                VStack{
                    HStack{
                        Text("iMtRo")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        Text("updated his profile picture.")
                    }
                    
                    HStack{
                        Text("1d" + "  * ")
                            .font(.system(size: 18))
                        Image(systemName: "globe")
                            .font(.system(size: 19))
                    }
                }
                
                Spacer()
                
                // More Button
                Button(action: {}, label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(Color.black)
                })
                    .font(.system(size: 25))
                    .padding(.trailing,8)
            }
            .padding(.leading,10)
            .padding(.trailing,10)
            .padding(.top, 10)
            
            // Post Image
            ZStack{
                Circle()
                    .frame(width: 390, height: 390)
                    .foregroundColor(Color.gray.opacity(0.2))
                    .overlay(RoundedRectangle(cornerRadius: 200)
                    .stroke(Color.gray,lineWidth: 1))
                
                Image(imgName)
                    .resizable()
                    .frame(width: 375, height: 375)
                    .scaledToFit()
                    .clipShape(Circle())
            }
            
            // Like Numbers
            HStack{
                Image(systemName: "hand.thumbsup.fill")
                    .font(.system(size: 23))
                    .foregroundColor(Color.blue)
                
                Text("\(num)")
            }
            
            // Gray Line
            HStack{}.frame(height: 1).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5))
            
            
            HStack{
                Spacer()
                
                // Like Button
                HStack{
                    Button(action: {
                        handLike.toggle()
                        if handLike {
                            num += 1
                            hand = "hand.thumbsup.fill"
                        }else{
                            num -= 1
                            hand = "hand.thumbsup"
                        }
                    }, label: {
                        Image(systemName: "\(hand)")
                    }).font(.system(size: 20))
                        .foregroundColor(Color.black)
                    
                    Text("Like")
                }
                
                Spacer()
                
                // Comment Button
                HStack{
                    Button(action: {}, label: {
                        Image(systemName: "text.bubble.fill")
                    }).foregroundColor(Color.black)
                    Text("Comment")
                }
                
                Spacer()
                
                // Share Button
                HStack{
                    Button(action: {}, label: {
                        Image(systemName: "arrowshape.turn.up.left.fill")
                    }).foregroundColor(Color.black)
                    Text("Comment")
                }
                Spacer()
            }
            .frame(height: 40).padding(.top, 5)
            
        }
        
        
    }
}

struct ProfilePost_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePost()
    }
}
