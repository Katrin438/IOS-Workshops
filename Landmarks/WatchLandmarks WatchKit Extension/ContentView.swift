//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Catherine on 25/03/2022.
//  Copyright © 2022 none. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
