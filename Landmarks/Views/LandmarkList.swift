//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jorge Macías García on 14/1/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
      NavigationView {
        List(landmarks) { landmark in
          NavigationLink(
            destination: LandmarkDetail(landmark: landmark)) {
            LandmarkRow(landmark: landmark)
          }
        }
        .navigationTitle("Landmarks")
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
      ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
        LandmarkList()
          .previewDevice(PreviewDevice(rawValue: deviceName))
          .previewDisplayName(deviceName)
      }
    }
}
