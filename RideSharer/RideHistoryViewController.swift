//
//  RideHistoryViewController.swift
//  RideSharer
//
//

import UIKit

class RideHistoryViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let rideHistory = [("Driver: Joe, 12/29/2021", "$26.50"), ("Driver: Sandra, 01/03/2022", "$13.10"), ("Driver: Hank, 01/11/2022", "$16.20"), ("Driver: Michelle, 01/19/2022", "$8.50")]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rideHistory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        let itemInfo = rideHistory[indexPath.row]
        cell.textLabel?.text = "\(itemInfo.0), \(itemInfo.1)"
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "History"
        
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "tableCell")
    }
}
