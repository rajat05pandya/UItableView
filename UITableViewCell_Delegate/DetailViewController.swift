//
//  DetailViewController.swift
//  UITableViewCell_Delegate
//
//  Created by dev09 on 25/08/17.
//  Copyright © 2017 dev09. All rights reserved.
//

import UIKit
    
class DetailViewController: UIViewController {
    @IBOutlet var fullName: UILabel!
    @IBOutlet var eMailID: UILabel!
    @IBOutlet var contactNumber: UILabel!
    var dataAcceptorDict: NSDictionary = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.fullName.text = dataAcceptorDict.value(forKey: "emp_Name") as? String
        self.eMailID.text = dataAcceptorDict.value(forKey: "email") as? String
        self.contactNumber.text = dataAcceptorDict.value(forKey: "con_Number") as? String

    }


}
