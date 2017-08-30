//
//  InitialViewController.swift
//  UITableViewCell_Delegate
//
//  Created by dev09 on 26/08/17.
//  Copyright © 2017 dev09. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func friendRequest(sender: UIButton){
        
        let requestVc: ViewController = self.storyboard?.instantiateViewController(withIdentifier: "RequestPage") as! ViewController
        self.navigationController?.pushViewController(requestVc, animated: true)
    }
 

}

