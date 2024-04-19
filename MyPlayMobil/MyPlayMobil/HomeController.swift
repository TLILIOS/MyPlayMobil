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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "toDetails" else { return }
        guard let controller = segue.destination as? PlayMobilController else { return }
        controller.category = sender as? PlaymobilCategory
    }
    
    @IBAction func cartPressed(_ sender: UIBarButtonItem) {
        let selection = CartController()
      present(selection, animated: true, completion: nil)
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
        let category = PlaymobilCategory.allCases[indexPath.row]
        performSegue(withIdentifier: "toDetails", sender: category)
        
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

