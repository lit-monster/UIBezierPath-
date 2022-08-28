//
//  TestDraw.swift
//  UIBezierPath
//
//  Created by hinata on 2022/08/28.
//

import UIKit

class TestDraw: UIView {
    
    override func draw(_ rect: CGRect) {
//        // UIBezierPath のインスタンス生成
//        let line = UIBezierPath();
//        // 起点
//        line.move(to: CGPoint(x: 50, y: 160));
//        // 帰着点
//        line.addLine(to: CGPoint(x: 200, y: 600));
//        line.addLine(to: CGPoint(x: 300, y: 280));
//        // ラインを結ぶ
//        line.close()
//        // 塗りつぶし色の設定
//        UIColor.init(hex: "B8E9FF",alpha: 0.25).setFill()
//        // 内側の塗りつぶし
//        line.fill()
//        // 色の設定
//        UIColor.init(hex: "B8E9FF",alpha: 0.25).setStroke()
//        // ライン幅
//        line.lineWidth = 4
//        // 描画
//        line.stroke();
        
        // 円弧 -------------------------------------
        let arc = UIBezierPath(arcCenter: CGPoint(x:180, y:170), radius: 85,  startAngle: 0, endAngle: CGFloat(Double.pi)*4/3, clockwise: true)
        // 透明色設定
        let aColor = UIColor(red: 1, green: 1, blue: 0.6, alpha: 0.8)
        aColor.setStroke()
        arc.lineWidth = 10
        
        
        // 点線のパターンをセット
        let dashPattern:[CGFloat] = [ 1 , 4 ]
        arc.setLineDash(dashPattern, count: 2, phase: 0)
        arc.stroke()
    }


}
