//
//  ViewController.swift
//  TableViewExample
//
//  Created by administrador on 12/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewEx: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableViewEx?.dataSource = self
        self.tableViewEx?.delegate = self
        self.tableViewEx?.register(UINib(nibName: "AppleAndroidTableViewCell", bundle: nil), forCellReuseIdentifier: "cellApple")
    }
}

//MARK - TableView
    extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath)-> CGFloat{
            return 240
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellApple", for: indexPath) as! AppleAndroidTableViewCell
        cell.backgroundColor = .brown
        cell.labelNumeroRow.text = ">     \(indexPath.row)   X"
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

