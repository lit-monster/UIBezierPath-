//
//  ViewController.swift
//  UIBezierPath
//
//  Created by 増田ひなた on 2022/05/05.
//
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let drawView = DrawView(frame: self.view.bounds)
        self.view.addSubview(drawView)
    }
    
     
    class DrawView: UIView {
     
        override init(frame: CGRect) {
            super.init(frame: frame);
            self.backgroundColor = UIColor.clear;
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func draw(_ rect: CGRect) {
            
            // ここにUIBezierPathを記述する
            // 円弧
            let circle = UIBezierPath(arcCenter: CGPoint(x: 0, y: 300), radius:280, startAngle: 180, endAngle: CGFloat(Double.pi)*2/3, clockwise: true)
            // 線の色
            UIColor(red: 189, green: 233, blue: 255, alpha: 1).setFill()
            // 線の太さ
            circle.lineWidth = 2.0
            // 線を塗りつぶす
            circle.fill()
            
        }
     
    }
    
}

