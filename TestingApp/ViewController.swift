//
//  ViewController.swift
//  TestingApp
//
//  Created by David Cornelius on 18/10/18.
//  Copyright © 2018 David Cornelius. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var myTextField: UITextField!
    var hasilPenjumlahan : Int!
    var hasilPengurangan : Int!

    var items : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myTextField.delegate = self
        myTable.delegate = self
        myTable.dataSource = self
        items.append("David")
    }
    
    
    func menjumlahkan(_ a:Int, _ b:Int) {
        hasilPenjumlahan = a+b
    }
    
    func pengurangan(_ a:Int, _ b:Int) {
        hasilPenjumlahan = a - b
    }
    
    
    
    
}


extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = items[indexPath.row]
        
        return cell!
    }
}

extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text{
            myTable.beginUpdates()
            items.append(text)
            
            let indexPath = IndexPath(item: items.count - 1 , section: 0)
            myTable.insertRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
            myTable.endUpdates()
        }
        
        return true
    }
}

