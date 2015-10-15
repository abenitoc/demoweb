//
//  CambiarColorView.swift
//  cambiarColor
//
//  Created by Raquel Noblejas on 14/10/15.
//  Copyright © 2015 UPM. All rights reserved.
//


import UIKit


@IBDesignable
class CambiarColorView: UIView {
    
    var radio: Double = 50.0
    
    var color = UIColor.blueColor()
    
    func getRandomColor(){

        let randomRed: CGFloat = CGFloat(drand48())
        let randomBlue: CGFloat = CGFloat(drand48())
        let randomGreen: CGFloat = CGFloat(drand48())
        
        color = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    override func drawRect(rect: CGRect) {
        
        let width = bounds.size.width
        let height = bounds.size.height
        
        let path = UIBezierPath()
        
        let centro = CGPointMake(width/2, height/2)
        
        path.addArcWithCenter(centro, radius: CGFloat(radio), startAngle: 0, endAngle: CGFloat(M_PI*2), clockwise: true)
        
        path.lineWidth = 2.0
        
        color.setStroke()
        color.setFill()
        path.stroke()
        path.fill()
        
        
    }
    
}