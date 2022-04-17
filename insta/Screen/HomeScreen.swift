import SwiftUI

struct HomeScreen: View {
    @State private var isClickEditProfile: Bool = false
    @State private var activeTab: Int = 0
    
    public var body: some View {
        VStack {
            VStack {
                BaseUserHeaderView(username: "codememory")
            }
            .padding(.horizontal, 16)
            
            ScrollView {
                VStack {
                    BaseUserDataView(
                        userPhoto: "user1",
                        statisticks: (posts: 0.000, followers: 0.000, following: 0.000)
                    )
                    .padding(.vertical, 7)
                    .padding(.leading, 7)
                    
                    BaseAboutView(
                        username: "codememory",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt #hashtag"
                    ).padding(.bottom, 12)
                    
                    EditProfileButtonView(isClick: $isClickEditProfile)
                    
                    MyStoryView(items: StoryTraysData.data).padding(.top, 17)
                }
                .padding(.horizontal, 16)
                
                VStack(spacing: 0) {
                    TabBarView(items: [
                        TabItemView(image: "grid"),
                        TabItemView(image: "union")
                    ], activeTab: $activeTab)
                    
                    ProfileStoryTraysView(items: ProfileStoryTraysData.data)
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro Max")
    }
}
