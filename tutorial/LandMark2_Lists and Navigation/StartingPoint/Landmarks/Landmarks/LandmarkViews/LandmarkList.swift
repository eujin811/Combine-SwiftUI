//
//  LandmarkList.swift
//  Landmarks
//
//  Created by YoujinMac on 2020/07/22.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData, id: \.id) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationBarTitle(Text("LandMarks"))
        }
        
        
        /*
         List(landmarkData) { LandmarkRow(landmark: $0 ) }
         */
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkList().previewDevice(PreviewDevice(rawValue: "iPhone X"))
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) {
            LandmarkList().previewDevice(PreviewDevice(rawValue: $0))
        }
    }
}
