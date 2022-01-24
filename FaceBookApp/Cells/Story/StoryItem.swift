import SwiftUI

struct StoryItem: View {
    var body: some View {
        
        Button(action: {
            
        }, label: {
            ZStack(alignment: .topLeading){
                
                Image("image1").resizable()
                    .frame(width: 150, height: 250)
                    .scaledToFit()
                
                // Profile Image
                VStack(alignment: .leading){
                    Image("image0").resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                        .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.blue,lineWidth: 5))
                    
                    Spacer()
                    
                    // Profile Name
                    Text("iMtRo")
                        .fontWeight(.bold)
                        .font(.system(size: 17))
                        .foregroundColor(Color.white)
                }.padding()
            }
            .frame(width: 150, height: 250)
            .cornerRadius(20)
        })
        
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
