//
//  ViewController.swift
//  UIBezierPath
//
//  Created by 増田ひなた on 2022/05/05.
//
import UIKit

//背景
//UIColor(red: 18/255, green: 0/255, blue: 76/255, alpha: 100)
//モニョ
//UIColor(red: 184/255, green: 233/255, blue: 255/255, alpha: 25.0)

class ViewController: UIViewController {
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
           let drawView = DrawView(frame: view.bounds)
        drawView.backgroundColor = UIColor(red: 18/255, green: 0/255, blue: 76/255, alpha: 100)
           view.addSubview(drawView)
       }
}

class DrawView: UIView {
    let point1 = CGPoint(x: 100, y: 200)
    let point2 = CGPoint(x: 200, y: 100)
    let point3 = CGPoint(x: 300, y: 200)
    
    override func draw(_ rect: CGRect) {
           let count = 100
           let path = UIBezierPath()
           path.move(to: point1)
           (0...count).forEach {
               let point4 = CGPoint(
                   x: point1.x + (point2.x - point1.x) * CGFloat($0) / CGFloat(count),
                   y: point1.y + (point2.y - point1.y) * CGFloat($0) / CGFloat(count)
               )
               let point5 = CGPoint(
                   x: point2.x + (point3.x - point2.x) * CGFloat($0) / CGFloat(count),
                   y: point2.y + (point3.y - point2.y) * CGFloat($0) / CGFloat(count)
               )
               let point6 = CGPoint(
                   x: point4.x + (point5.x - point4.x) * CGFloat($0) / CGFloat(count),
                   y: point4.y + (point5.y - point4.y) * CGFloat($0) / CGFloat(count)
               )
               path.addLine(to: point6)
           }
           path.addLine(to: point3)
           path.lineWidth = 5.0
           UIColor(red: 184/255, green: 233/255, blue: 255/255, alpha: 0.25).setFill()
           path.fill()
       }
}

