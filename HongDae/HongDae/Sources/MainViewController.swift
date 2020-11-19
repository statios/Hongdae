//
//  MainViewController.swift
//  HongDae
//
//  Created by Stat.So on 2020/11/18.
//

import Foundation
import UIKit

typealias DataSource = (name: String, introduce: String)

class MainViewController: UIViewController {
  
  let dataSources: [DataSource] = [
    (name: "Stat", introduce: "introduce"),
    (name: "Stat", introduce: "introduce"),
    (name: "Stat", introduce: "introduce"),
    (name: "Stat", introduce: "introduce"),
    (name: "Stat", introduce: "introduce"),
    (name: "Stat", introduce: "introduce")
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func tappedLogoutButton(_ sender: Any) {
    self.navigationController?.popViewController(animated: true)
  }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataSources.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "MainTableViewCell",
            for: indexPath) as? MainTableViewCell else { return UITableViewCell() }
    cell.configure(dataSources[indexPath.row])
    return cell
  }
}
