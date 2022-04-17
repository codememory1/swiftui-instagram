import SwiftUI

struct BaseUserDataView: View {
    public var userPhoto: String
    public var statisticks: (posts: CGFloat, followers: CGFloat, following: CGFloat)
    
    var body: some View {
        HStack {
            BaseLogoView(logo: self.userPhoto).padding(.trailing, 31)
            
            Spacer()
            
            // Статистика
            HStack(spacing: 22) {
                BaseStatisticItemView(name: "Posts", value: self.statisticks.posts)
                BaseStatisticItemView(name: "Followers", value: self.statisticks.followers)
                BaseStatisticItemView(name: "Following", value: self.statisticks.following)
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}
