//
//  ViewController.swift
//  Dicee
//
//  Created by david ladowitz on 4/3/18.
//  Copyright © 2018 LittleCatLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    var numberOfChanges : Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button Press Detected....")
        numberOfChanges = Int(arc4random_uniform(10)) + 3

        for _ in 1...numberOfChanges {
            updateDiceImages()
        }


    }

    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6)) + 1
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")

        randomDiceIndex2 = Int(arc4random_uniform(6)) + 1
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
        //        sleep(1)

        print("Rolled: \(randomDiceIndex1) and \(randomDiceIndex2)")
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        print("Motion Detected....")
        updateDiceImages()
    }

}

