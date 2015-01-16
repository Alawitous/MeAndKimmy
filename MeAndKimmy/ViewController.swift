//
//  ViewController.swift
//  MeAndKimmy
//
//  Created by Marcus Dunlap on 1/15/15.
//  Copyright (c) 2015 Marcus Dunlap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var sceneLabel: UILabel!
    @IBOutlet weak var randomFactLabel: UILabel!
    
    var crystal:[Kimmy] = []
    var currentIndex = 0
    
    var rainbow = []
    var currentRainbow = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    var firKimmy = Kimmy()
        firKimmy.image = UIImage(named: "BundleUp.JPG")
        firKimmy.name = "Kimmy The Pooh"
        firKimmy.age = 24
        firKimmy.scene = "Bundle Up"
        firKimmy.name = firKimmy.sheIsMy(firKimmy.name)
        
        
    var secKimmy = Kimmy()
        secKimmy.image = UIImage(named: "Cheesy.JPG")
        secKimmy.name = "Babaaaa"
        secKimmy.age = 21
        secKimmy.scene = "Cheesing"
        secKimmy.name = secKimmy.sheIsMy(secKimmy.name)
        
    var thiKimmy = Kimmy()
        thiKimmy.image = UIImage(named: "Clubin.JPG")
        thiKimmy.name = "Pookaa"
        thiKimmy.age = 22
        thiKimmy.scene = "My Girl Likes To PArty all the time"
        thiKimmy.name = thiKimmy.sheIsMy(thiKimmy.name)
        
    var fouKimmy = Kimmy()
        fouKimmy.image = UIImage(named: "CoolChick.JPG")
        fouKimmy.name = "Baby Cakes"
        fouKimmy.age = 23
        fouKimmy.scene = "Cool Chick Frontin"
        fouKimmy.name = fouKimmy.sheIsMy(fouKimmy.name)
        
    var fifKimmy = Kimmy()
        fifKimmy.image = UIImage(named: "Gorgeous.JPG")
        fifKimmy.name = "Buga Suga"
        fifKimmy.age = 25
        fifKimmy.scene = "She So Damn Hot"
        fifKimmy.name = fifKimmy.sheIsMy(fifKimmy.name)
        
    var sixKimmy = Kimmy()
        sixKimmy.image = UIImage(named: "ImCute.JPG")
        sixKimmy.name = "Popo"
        sixKimmy.age = 26
        sixKimmy.scene = "Isn't She Cute"
        sixKimmy.name = sixKimmy.sheIsMy(sixKimmy.name)
        
    crystal = [firKimmy, secKimmy, thiKimmy, fouKimmy, fifKimmy, sixKimmy]
        
        
        self.myImageView.image = firKimmy.image
        self.nameLabel.text = firKimmy.name
        self.ageLabel.text = "\(firKimmy.age)"
        self.sceneLabel.text = firKimmy.scene
        self.nameLabel.textColor = UIColor.redColor()
        self.randomFactLabel.text = firKimmy.randomFact()
                
    rainbow = [UIColor.greenColor(), UIColor.redColor(), UIColor.blueColor(), UIColor.yellowColor(), UIColor.purpleColor()]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
        
        var randomIndex:Int
        var randomRainbowIndex:Int
        
        
        do {
            randomIndex = Int(arc4random_uniform(UInt32(crystal.count)))
        }
        while currentIndex == randomIndex
        currentIndex = randomIndex
        let kimmyPoo = crystal[randomIndex]
        
        do {
            randomRainbowIndex = Int(arc4random_uniform(UInt32(rainbow.count)))
        }
        while currentRainbow == randomRainbowIndex
        currentRainbow = randomRainbowIndex
        let luckyCharm: AnyObject = rainbow[randomRainbowIndex]
        
        
        
        
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
        
            self.myImageView.image = kimmyPoo.image
            self.nameLabel.text = kimmyPoo.name
            self.ageLabel.text = "\(kimmyPoo.age)"
            self.sceneLabel.text = kimmyPoo.scene
            self.ageLabel.textColor = luckyCharm as UIColor
            self.nameLabel.textColor = luckyCharm as UIColor
            self.sceneLabel.textColor = luckyCharm as UIColor
            self.randomFactLabel.text = kimmyPoo.randomFact()
            self.randomFactLabel.textColor = luckyCharm as UIColor
            
            }, completion: {(finished: Bool) -> () in
            })
       
    }


}

