//
//  ViewController.swift
//  cambiarColor
//
//  Created by Raquel Noblejas on 14/10/15.
//  Copyright © 2015 UPM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botonCambiar: UIButton!
    @IBOutlet weak var cambiarColorView: CambiarColorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        botonCambiar.sendActionsForControlEvents(.ValueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func botonCambiar(sender: UIButton) {
        
        cambiarColorView.getRandomColor()
        cambiarColorView.setNeedsDisplay()
        
    }

}

