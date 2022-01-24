import SwiftUI

struct RoomItem: View {
    
    var isOnline = true
    
    var body: some View {
        
        Button(action: {}, label: {
            ZStack(alignment: .bottomTrailing ){
                Image("image0")
                    .resizable()
                    .frame(width: 60, height: 60 )
                    .cornerRadius(30)
                
                if isOnline {
                    ZStack{
                        Circle().frame(width: 24, height: 24)
                            .foregroundColor(Color.white)
                        
                        Circle().frame(width: 18, height: 18)
                            .foregroundColor(Color.green)
                    }
                }
            }
        })
        
    }
}

struct RoomItem_Previews: PreviewProvider {
    static var previews: some View {
        RoomItem()
    }
}
