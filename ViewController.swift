//
//  ViewController.swift
//  nmtsvetnikovPW1
//
//  Created by Matvey Vasilyev on 23.10.2023.
//

import UIKit

class ViewController: UIViewController {
    func randomColorRadius() {
        view_01.backgroundColor = UIColor(
            displayP3Red: .random(in:0...1),
            green: .random(in:0...1),
            blue: .random(in:0...1),
            alpha: 1
        )
        view_02.backgroundColor = UIColor(
            displayP3Red: .random(in:0...1),
            green: .random(in:0...1),
            blue: .random(in:0...1),
            alpha: 1
        )
        view_03.backgroundColor = UIColor(
            displayP3Red: .random(in:0...1),
            green: .random(in:0...1),
            blue: .random(in:0...1),
            alpha: 1
        )
        view_01.layer.cornerRadius = .random(in: 0...25)
        view_02.layer.cornerRadius = .random(in: 0...25)
        view_03.layer.cornerRadius = .random(in: 0...25)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomColorRadius()
    }
    @IBOutlet weak var view_01: UIView!
    @IBOutlet weak var view_02: UIView!
    @IBOutlet weak var view_03: UIView!

    @IBAction func buttonWasPressed(_ sender: Any) {
        let button = sender as? UIButton
        UIView.animate(withDuration: 0.1, animations: { [self] in randomColorRadius()
            
            },
           completion: {_ in button?.isEnabled = true})
       
    
    }
}

