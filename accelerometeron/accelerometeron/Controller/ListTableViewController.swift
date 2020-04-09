//
//  ViewController.swift
//  accelerometeron
//
//  Created by Islam Gharib on 4/7/20.
//  Copyright © 2020 Gharib. All rights reserved.
//

import UIKit

class ListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var listTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.delegate = self
        listTableView.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Numbers of cells
        return imageArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // return a configured cell with image and name
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell else{return UITableViewCell()}
        cell.configuredCell(withImage: imageArray[indexPath.row], andDescription: nameArray[indexPath.row])
        return cell
    }
}

