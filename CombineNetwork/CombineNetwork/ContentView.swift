//
//  ContentView.swift
//  CombineNetwork
//
//  Created by Youjin on 2020/08/24.
//  Copyright © 2020 Youjin. All rights reserved.
//
import Combine
import SwiftUI

import UIKit

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel
    var cancelBag = Set<AnyCancellable>()
    
    var body: some View {
        List(viewModel.posts) {
            Text($0.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())

    }
}
