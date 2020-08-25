//
//  ViewController.swift
//  CombineNetwork
//
//  Created by Youjin on 2020/08/25.
//  Copyright © 2020 Youjin. All rights reserved.
//

import Foundation
import UIKit
import Combine
import SwiftUI

class ViewController: UIViewController {
    var tableView = UITableView()
    
    @ObservedObject var viewModel = ViewModel()
    var cancelBag = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(viewModel.posts)
        
        self.tableView.dataSource = self
        self.viewModel.request()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CellID")
        tableView.frame = view.frame
        view.addSubview(tableView)
        
        self.viewModel.$posts.receive(on: DispatchQueue.main).sink(receiveValue: { [weak self] _ in
            self?.tableView.reloadData()
        }).store(in: &self.cancelBag)
    }
    

    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath)
        cell.textLabel?.text = self.viewModel.posts[indexPath.row].title
        return cell
    }


}

