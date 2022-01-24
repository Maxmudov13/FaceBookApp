import SwiftUI

struct CreateRoom: View {
    var body: some View {
        Button(action: {}, label: {
            HStack{
                Image(systemName: "video.fill.badge.plus")
                    .font(.system(size: 30))
                    .foregroundColor(Color("color"))
                    .padding(.leading,10)
                    .padding(.trailing,5)
                    .padding(.top,10)
                    .padding(.bottom,10)
                
                Text("Creat Room")
                    .font(.system(size: 16))
                    .foregroundColor(Color.blue)
                    .padding(.trailing,10)
                    .padding(.top,10)
                    .padding(.bottom,10)
                
            }.overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.blue,lineWidth: 5))
            .cornerRadius(100)
            .frame(width: 140, height: 80)
        })
    }
}

struct CreateRoom_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoom()
    }
}
