//
//  OptionsViewController.swift
//  P_03_RPSGame
//
//  Created by EDUARDO MEJIA on 16/04/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnClick(_ sender: UIButton) {
        let controller: ResultsViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        //pasa datos al view controller destino. ResultsViewController
        controller.rpsSelected = sender.tag //pass data.
        present(controller, animated: true, completion: nil)
    }
}
