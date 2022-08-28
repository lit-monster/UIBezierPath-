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
        drawView.backgroundColor = UIColor.init(hex: "12004C", alpha: 100)
        view.addSubview(drawView)
    }
}

class DrawView: UIView {
    override func draw(_ rect: CGRect) {
        
        graph(vertex: CGPoint(x: CGFloat(Float.random(in: 0 ..< Float(rect.width))), y: CGFloat(Float.random(in: 0 ..< Float(rect.height)))))
        graph(vertex: CGPoint(x: CGFloat(Float.random(in: 0 ..< Float(rect.width))), y: CGFloat(Float.random(in: 0 ..< Float(rect.height)))))
        graph(vertex: CGPoint(x: CGFloat(Float.random(in: 0 ..< Float(rect.width))), y: CGFloat(Float.random(in: 0 ..< Float(rect.height)))))
        graph(vertex: CGPoint(x: CGFloat(Float.random(in: 0 ..< Float(rect.width))), y: CGFloat(Float.random(in: 0 ..< Float(rect.height)))))
        graph(vertex: CGPoint(x: CGFloat(Float.random(in: 0 ..< Float(rect.width))), y: CGFloat(Float.random(in: 0 ..< Float(rect.height)))))
        graph(vertex: CGPoint(x: CGFloat(Float.random(in: 0 ..< Float(rect.width))), y: CGFloat(Float.random(in: 0 ..< Float(rect.height)))))
        graph(vertex: CGPoint(x: CGFloat(Float.random(in: 0 ..< Float(rect.width))), y: CGFloat(Float.random(in: 0 ..< Float(rect.height)))))
        
    }
    func graph(vertex: CGPoint) {
        let point1 = CGPoint(x: 0, y: 0)
        let point2 = CGPoint(x: 0, y: 150)
        let point3 = CGPoint(x: vertex.x, y: vertex.y - 100)
        let point4 = vertex
        let point5 = CGPoint(x: vertex.x, y: vertex.y + 100)
        let point6 = CGPoint(x: 0, y: self.bounds.height - 150)
        let point7 = CGPoint(x: 0, y: self.bounds.height)
        
        let path = UIBezierPath()
        path.move(to: point1)
        path.addCurve(to: point4, controlPoint1: point2, controlPoint2: point3)
        path.addCurve(to: point7, controlPoint1: point5, controlPoint2: point6)
        path.close()
        path.lineWidth = 5.0
        UIColor.init(hex: "B8E9FF", alpha: 0.25).setFill()
        path.fill()
    }
}
