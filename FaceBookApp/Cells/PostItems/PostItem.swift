import SwiftUI

struct PostItem: View {
    var imgName = "image1"
    
    // Like Button
    @State var handLike = false
    @State var hand = "hand.thumbsup"
    @State var heartLike = false
    
    var body: some View {
        
        
        VStack{
            // Gray Line
            HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
            
            // header
            HStack{
                // Profile Image
                ZStack(alignment: .bottomTrailing){
                    Image("image0").resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                    
                    
                    // Is Online
                    ZStack{
                        Circle().frame(width: 22, height: 22)
                            .foregroundColor(Color.white)
                        
                        Circle().frame(width: 16, height: 16)
                            .foregroundColor(Color.green)
                    }
                }
                
                
                // Profile Name and Post Time
                VStack(alignment: .leading, spacing: 5){
                    
                    Text("iMtRo").fontWeight(.bold)
                    
                    HStack{
                        Text("18 minuts ago")
                        
                        Image(systemName: "globe.americas.fill")
                            .font(.system(size: 22))
                    }
                }
                
                Spacer()
                
                // More Button
                Button(action: {}, label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(Color.black)
                }).font(.system(size: 25))
            }
            .padding(.leading,10)
            .padding(.trailing,10)
            .padding(.top, 10)
            
            // Post Image
            Image(imgName)
                .resizable()
                .scaledToFit()
            
            // Love , Like , counts for comment and share
            HStack(spacing: 5){
                
                // Love And Like Button
                HStack(spacing: -10){
                    Image(systemName: "hand.thumbsup.fill")
                        .font(.system(size: 23))
                        .foregroundColor(Color.blue)
                    
                    Image(systemName: "heart.fill")
                        .font(.system(size: 23))
                        .foregroundColor(Color.red)
                }
                Text("999.9K")
                Spacer()
                Text("99.9K Comments" + "  ")
                Text("9.9K Shares")
            }
            .padding(.leading,10).padding(.trailing,10).padding(.top,10).padding(.bottom,5)
            
            // Gray Line
            HStack{}.frame(height: 1).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5))
            
            HStack{
                Spacer()
                
                // Like Button
                HStack{
                    Button(action: {
                        handLike.toggle()
                        if handLike {
                            hand = "hand.thumbsup.fill"
                        }else{
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

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
