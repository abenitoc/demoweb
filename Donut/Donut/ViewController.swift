//
//  ViewController.swift
//  Donut
//
//  Created by Daniel Revilla Twose on 14/10/15.
//  Copyright © 2015 UPM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var donutView: DonutView!

    @IBOutlet weak var radioLabel: UILabel!
    @IBOutlet weak var diferenciaLabel: UILabel!
    
    @IBOutlet weak var radioSlider: UISlider!
    @IBOutlet weak var diferenciaSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Estos métodos son los que hacen que nada más arrancar la aplicación los valores por defectos de los sliders pasen directamente a los distintos métodos y dibuje la trayectoria inicial. Porque sino tuvieramos estas líneas no se vería la velocidad y la posicion nada más arrancar hasta que no movieramos los sliders.
        radioSlider.sendActionsForControlEvents(.ValueChanged)
        diferenciaSlider.sendActionsForControlEvents(.ValueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func radioSlider(sender: UISlider) {
        
        donutView.radio = Double(sender.value)
        
        radioLabel.text = String(format: "%.2f m ", arguments: [sender.value] )
        
        donutView.setNeedsDisplay()
    }
    
    
    @IBAction func diferenciaSlider(sender: UISlider) {
        
        donutView.diferencia = Double(sender.value)
        
        diferenciaLabel.text = String(format: "%.2f m ", arguments: [sender.value] )
        
        donutView.setNeedsDisplay()
    }
    
    

}

