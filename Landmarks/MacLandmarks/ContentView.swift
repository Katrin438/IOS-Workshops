//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Catherine on 25/03/2022.
//  Copyright © 2022 none. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
