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
        /*
         self.viewModel.$posts.receive(on: DispatchQueue.main).sink(receiveValue: { [weak self] _ in
             self?.tableView.reloadData()
         }).store(in: &self.cancelBag)
         */
//        viewModel.$posts
//            .receive(on: DispatchQueue.main)
//            .sink(receiveValue: { })

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
