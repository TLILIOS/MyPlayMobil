//
//  ViewController.swift
//  MyPlayMobil
//
//  Created by HTLILI on 16/04/2024.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }


}

extension HomeController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlaymobilCategory.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            cell.category = PlaymobilCategory.allCases[indexPath.row]
            return cell
        }
        let cell = UITableViewCell()
        cell.textLabel?.text = PlaymobilCategory.allCases[indexPath.row].rawValue
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tableView.frame.width * 0.8
        
//        return tableView.rowHeight
    }
    
    func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

