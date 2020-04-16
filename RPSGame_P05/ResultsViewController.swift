//
//  ResultsViewController.swift
//  P_03_RPSGame
//
//  Created by EDUARDO MEJIA on 16/04/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var rpsSelected: Int!
    // 1 Rock, 2 Paper, 3 Scissors

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var Detail: UILabel!
    @IBOutlet weak var imageR: UIImageView!
    @IBOutlet weak var imageGP: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let cpu = Int.random(in: 1...3) //funcion random para obtener la eleccion del cpu
        
        //casos de juego
        if self.rpsSelected == cpu {
            self.result.text = "DRAW"
            self.imageGP.image = UIImage(systemName: "cube.fill")
           self.imageGP.tintColor = UIColor.gray
            self.Detail.text = "The cpu and you chose the same"
        }
        
        
        if self.rpsSelected == 1 && cpu == 2 {
            self.result.text = "YOU LOSE"
            self.imageGP.image = UIImage(systemName: "xmark.circle.fill")
            self.imageGP.tintColor = UIColor.red
            self.Detail.text = "The cpu choice was PAPER and yours was ROCK"
            self.imageR.image = UIImage(named: "PaperCoversRock")
        }
        if self.rpsSelected == 1 && cpu == 3 {
            self.result.text = "YOU WIN"
            self.imageGP.image = UIImage(systemName: "checkmark.circle.fill")
            self.imageGP.tintColor = UIColor.green
            self.Detail.text = "The cpu choice was SCISSORS and yours was ROCK"
            self.imageR.image = UIImage(named: "RockCrushesScissors")
        }
        if self.rpsSelected == 2 && cpu == 1 {
            self.result.text = "YOU WIN"
            self.imageGP.image = UIImage(systemName: "checkmark.circle.fill")
            self.imageGP.tintColor = UIColor.green
            self.Detail.text = "The cpu choice was ROCK and yours was PAPER"
            self.imageR.image = UIImage(named: "PaperCoversRock")
        }
        if self.rpsSelected == 2 && cpu == 3 {
            self.result.text = "YOU LOSE"
            self.imageGP.image = UIImage(systemName: "xmark.circle.fill")
            self.imageGP.tintColor = UIColor.red
            self.Detail.text = "The cpu choice was SCISSORS and yours was PAPER"
            self.imageR.image = UIImage(named: "ScissorsCutPaper")
        }
        if self.rpsSelected == 3 && cpu == 1 {
            self.result.text = "YOU LOSE"
            self.imageGP.image = UIImage(systemName: "xmark.circle.fill")
            self.imageGP.tintColor = UIColor.red
            self.Detail.text = "The cpu choice was ROCK and yours was SCISSORS"
            self.imageR.image = UIImage(named: "RockCrushesScissors")
        }
        if self.rpsSelected == 3 && cpu == 2 {
            self.result.text = "YOU WIN"
            self.imageGP.image = UIImage(systemName: "checkmark.circle.fill")
            self.imageGP.tintColor = UIColor.green
            self.Detail.text = "The cpu choice was PAPER and yours was SCISSORS"
            self.imageR.image = UIImage(named: "ScissorsCutPaper")
        }
        
    }
    
    //boton para regresar a las opciones RPS
    @IBAction func returnOptions(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
 
    

}

