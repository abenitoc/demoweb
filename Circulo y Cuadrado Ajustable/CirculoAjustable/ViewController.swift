//
//  ViewController.swift
//  CirculoAjustable
//
//  Created by Daniel Revilla Twose on 14/10/15.
//  Copyright © 2015 UPM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var radioValue: UILabel!
    
    @IBOutlet weak var RadioSlider: UISlider!
    
    @IBOutlet weak var circuloView: CirculoView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Estos métodos son los que hacen que nada más arrancar la aplicación los valores por defectos de los sliders pasen directamente a los distintos métodos y dibuje la trayectoria inicial. Porque sino tuvieramos estas líneas no se vería la velocidad y la posicion nada más arrancar hasta que no movieramos los sliders.
        RadioSlider.sendActionsForControlEvents(.ValueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func radioSlider(sender: UISlider) {
        
        circuloView.radio = Double(sender.value)
        
        radioValue.text = String(format: "%.2f m ", arguments: [sender.value] )
        
        circuloView.setNeedsDisplay()
    }

}

