//
//  DonutView.swift
//  Donut
//
//  Created by Daniel Revilla Twose on 14/10/15.
//  Copyright © 2015 UPM. All rights reserved.
//

import UIKit


// Interfaz Builder para poder cambiar determinadas propiedades de la interfaz.
@IBDesignable
class DonutView: UIView {

    @IBInspectable
    var lineWidth : Double = 2.0
    
    @IBInspectable
    var circuloColor : UIColor = UIColor.blueColor()
    
    // Variables del radio y de la diferencia entre los circulos del donut
    var radio: Double = 10.0
    var diferencia: Double = 5.0
    
    override func drawRect(rect: CGRect) {
        drawAxis()
        drawTrajectory()
    }
    
    private func drawAxis(){
        
        // Sacamos las variables de la anchura y altura de la view.
        let width = bounds.size.width
        let height = bounds.size.height
        
        // Dibujamos el eje vertical
        let path1 = UIBezierPath()
        path1.moveToPoint(CGPointMake(width/2, 0))
        path1.addLineToPoint(CGPointMake(width/2, height))
        
        // Dibujamos el eje horizontal
        let path2 = UIBezierPath()
        path2.moveToPoint(CGPointMake(0, height/2))
        path2.addLineToPoint(CGPointMake(width, height/2))
        
        // Ponemos que los ejes se pinten en negro
        UIColor.blackColor().setStroke()
        
        // Tamaño de la letra que dibujaremos el titulo de los ejes.
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(14)]
        
        // Titulo del eje X
        let tituloEjeX = "x"
        let pointX = CGPointMake(width - 25, height/2 - 20)
        tituloEjeX.drawAtPoint(pointX, withAttributes: attrs)
        
        // Titulo del eje Y
        let tituloEjeY = "y"
        let pointY = CGPointMake(width/2 + 5, 2)
        tituloEjeY.drawAtPoint(pointY, withAttributes: attrs)
        
        // Ponemos un cierto grosor a la linea y pintamos
        path1.lineWidth = 1
        path1.stroke()
        path2.lineWidth = 1
        path2.stroke()
        
    }
    
    private func drawTrajectory () {
        
        // Sacamos las variables de la anchura y altura de la view.
        let width = bounds.size.width
        let height = bounds.size.height
        
        // Creamos un path para dibujar
        let path2 = UIBezierPath()
        let path3 = UIBezierPath()
        
        // El centro de la vista
        let centro = CGPointMake(width/2, height/2)
        
        // Dibujamos el círculo interno
        path2.addArcWithCenter(centro, radius: CGFloat(radio - diferencia), startAngle: 0, endAngle: CGFloat(M_PI * 2), clockwise: true)
        
        // Dibujamos el ciruclo externo
        path3.addArcWithCenter(centro, radius: CGFloat(radio), startAngle: 0, endAngle: CGFloat(M_PI * 2), clockwise: true)
        
        // Añadimos el grosor de linea
        path2.lineWidth = CGFloat(lineWidth)
        path3.lineWidth = CGFloat(lineWidth)
        
        // Ponemos color al ciruclo
        circuloColor.setStroke()
        
        // Dibujamos el círculo exterior
        UIColor.blueColor().setFill()
        path3.fill()
        path3.stroke()
        
        // Dibujamos el circulo interior
        UIColor.whiteColor().setFill()
        path2.fill()
        path2.stroke()
        
    }
        
}
