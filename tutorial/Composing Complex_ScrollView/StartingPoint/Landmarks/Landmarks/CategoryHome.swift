//
//  CategoryHome.swift
//  Landmarks
//
//  Created by YoujinMac on 2020/07/23.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    @State var showingProfile = false
    
    var body: some View {
        NavigationView {
            List {
                FeaturedLandmakrs(landmarks: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                    
                }.listRowInsets(EdgeInsets())
                
                // view를 열때 네비게이션 바를 씌워준다.
                NavigationLink(destination: LandmarkList()) {
                    Text("See All")
                }
                
            }.navigationBarTitle(Text("Featured"))
                .navigationBarItems(trailing: profileButton)
                .sheet(isPresented: $showingProfile) {
                    Text("User Profile")
            }
            
        }
        
    }
    
}

// data
extension CategoryHome {
    // Landmark 그룹핑해서 Dictionary에
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var featured: [Landmark] {
        landmarkData.filter
            { $0.isFeatured }
        
    }
    
    
    
}

// UI
extension CategoryHome {
    
    // 맨위 사진
    struct FeaturedLandmakrs: View {
        var landmarks: [Landmark]
        var body: some View {
            landmarks[0].image.resizable()
        }
    }
    
    //프로필 버튼 관련
    var profileButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }
}


struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
