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
                    
                    MyStoryView(items: [
                        MyStoryItemView(image: "my-story-1", name: "Story 1"),
                        MyStoryItemView(image: "my-story-2", name: "Story 2"),
                        MyStoryItemView(image: "my-story-3", name: "Story 3"),
                        MyStoryItemView(image: "my-story-4", name: "Story 4"),
                        MyStoryItemView(image: "my-story-2", name: "Story 5"),
                        MyStoryItemView(image: "my-story-4", name: "Story 6"),
                        MyStoryItemView(image: "my-story-1", name: "Story 7"),
                        MyStoryItemView(image: "my-story-2", name: "Story 8"),
                        MyStoryItemView(image: "my-story-3", name: "Story 9"),
                        MyStoryItemView(image: "my-story-4", name: "Story 10"),
                        MyStoryItemView(image: "my-story-2", name: "Story 11"),
                        MyStoryItemView(image: "my-story-1", name: "Story 12"),
                    ]).padding(.top, 17)
                }
                .padding(.horizontal, 16)
                
                VStack(spacing: 0) {
                    TabBarView(items: [
                        TabItemView(image: "grid"),
                        TabItemView(image: "union")
                    ], activeTab: $activeTab)
                    
                    ProfileStoryTraysView(items: [
                        ProfileStrotyTraysItemView(image: "my-story-trays1"),
                        ProfileStrotyTraysItemView(image: "my-story-trays2"),
                        ProfileStrotyTraysItemView(image: "my-story-trays3"),
                        ProfileStrotyTraysItemView(image: "my-story-trays4"),
                        ProfileStrotyTraysItemView(image: "my-story-trays5"),
                        ProfileStrotyTraysItemView(image: "my-story-trays6"),
                        ProfileStrotyTraysItemView(image: "my-story-trays7"),
                        ProfileStrotyTraysItemView(image: "my-story-trays8"),
                        ProfileStrotyTraysItemView(image: "my-story-trays9"),
                        ProfileStrotyTraysItemView(image: "my-story-trays1"),
                        ProfileStrotyTraysItemView(image: "my-story-trays2"),
                        ProfileStrotyTraysItemView(image: "my-story-trays3"),
                        ProfileStrotyTraysItemView(image: "my-story-trays4"),
                        ProfileStrotyTraysItemView(image: "my-story-trays5"),
                        ProfileStrotyTraysItemView(image: "my-story-trays6"),
                        ProfileStrotyTraysItemView(image: "my-story-trays7"),
                        ProfileStrotyTraysItemView(image: "my-story-trays8"),
                        ProfileStrotyTraysItemView(image: "my-story-trays9")
                    ])
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
