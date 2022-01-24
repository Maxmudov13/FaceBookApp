import SwiftUI

struct HomePage: View {
    var body: some View {
        
        NavigationView{
            
            ScrollView(showsIndicators: false){
                // Gray Line
                HStack{}.frame(height: 1).frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.6))
                
                
                // Profile Image
                VStack{
                    
                    HStack{
                        Image("image0")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        
                        Text("What's on your mind?")
                            .font(.system(size: 17))
                    }
                    .frame(height: 90)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading,10) .padding(.trailing,10)
                }
                
                
                // Gray Line
                HStack{}.frame(height: 1).frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.6))
                
                
                // Live, Photo, Room
                HStack{
                    Spacer()
                    // Live Button
                    HStack{
                        Button(action: {}, label: {
                            Image(systemName: "video.fill")
                            Text("Live")
                        })
                    }
                    
                    Spacer()
                    // Photo Button
                    HStack{
                        Button(action: {}, label: {
                            Image(systemName: "photo.fill")
                            Text("Photo")
                        })
                    }
                    
                    Spacer()
                    // Room Button
                    HStack{
                        Button(action: {}, label: {
                            Image(systemName: "video.fill.badge.plus")
                            Text("Room")
                        })
                    }
                    
                    Spacer()
                }
                .foregroundColor(Color.black)
                .frame(height: 50)
                
                
                // Gray Line
                HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                
                
                // Create Room
                VStack{
                    
                    HStack {
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack(spacing: 20){
                                CreateRoom()
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                            }
                        }
                    }
                    .frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .padding(.leading,10)
                }
                
                
                // Gray Line
                HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                
                
                // Create Story
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        CreateStory()
                        StoryItem()
                        StoryItem()
                        StoryItem()
                        StoryItem()
                        StoryItem()
                        StoryItem()
                        StoryItem()
                    }
                }
                .padding(.leading, 10)
                .padding(.top, 10)
                .padding(.bottom, 10)
                
                
                // Post Image
                VStack{
                    PostItem(imgName: "image1")
                    PostItem(imgName: "image2")
                    ProfilePost(imgName: "image0")
                    TwoImagePost(imgName: "image4")
                }
                
            }
            // Navigation Bar Items
            .navigationBarItems(
                leading: Text("facebook")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .foregroundColor(Color.blue),
                trailing: HStack{
                            Button(action: {
                                
                            }, label: {
                                ZStack{
                                    Circle().fill(Color.gray.opacity(0.3))
                                        .frame(width: 36, height: 36)
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(Color.black)
                                }
                            })
                            Button(action: {
                                
                            }, label: {
                                ZStack{
                                    Circle().fill(Color.gray.opacity(0.3))
                                        .frame(width: 36, height: 36)
                                    Image(systemName: "bolt.horizontal.circle")
                                        .foregroundColor(Color.black)
                                }
                            })
            })
            .navigationBarTitle("", displayMode: .inline)
        }
        
        
    }
}
 
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
