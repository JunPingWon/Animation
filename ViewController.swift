//
//  ViewController.swift
//  Animation
//
//  Created by JunpingWon on 15/9/14.
//  Copyright (c) 2015年 JunpingWon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.container.frame = CGRect(x: 60,y: 60,width: 200,height: 200)
//        self.view .addSubview(container)
//        
//        self.redSquare.frame = CGRect(x: 0,y: 0,width: 200,height: 200)
//        self.blueSquare.frame = redSquare.frame
//        
//        self.redSquare.backgroundColor = UIColor.redColor()
//        self.blueSquare.backgroundColor = UIColor.cyanColor()
//        
//        self.container.addSubview(self.redSquare)
        
        for i in 0...5{
            
            //贝塞尔曲线动画
//            let square = UIView()
//            square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
//            square.backgroundColor = UIColor.orangeColor()
//            self.view.addSubview(square)
            
            let square = UIImageView()
            square.frame =  CGRect(x: 55, y: 300, width: 40, height: 35)
            square.image = UIImage(named:"fish.png");
            self.view.addSubview(square)
            
            let randomYOffset = CGFloat(arc4random_uniform(300))
            
            let path = UIBezierPath()
            path.moveToPoint(CGPoint(x: 16, y: 200 + randomYOffset))
            path.addCurveToPoint(CGPoint(x: 301, y: 239 + randomYOffset), controlPoint1: CGPoint(x: 136, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 178, y: 110 + randomYOffset))
            let anim = CAKeyframeAnimation(keyPath: "position")
            anim.path = path.CGPath
            anim.rotationMode = kCAAnimationRotateAuto
            anim.repeatCount = Float.infinity
//            anim.duration = 5.0
            anim.duration = Double(arc4random_uniform(40)+30)/10
            anim.timeOffset = Double(arc4random_uniform(290))
            
            
            square.layer.addAnimation(anim, forKey: "animate position along path")
            
            
        }
        
//        //贝塞尔曲线动画
//        let square = UIView()
//        square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
//        square.backgroundColor = UIColor.orangeColor()
//        self.view.addSubview(square)
//        
//        let path = UIBezierPath()
//        path.moveToPoint(CGPoint(x: 16, y: 239))
//        path.addCurveToPoint(CGPoint(x: 301, y: 239), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
//        let anim = CAKeyframeAnimation(keyPath: "position")
//        anim.path = path.CGPath
//        anim.rotationMode = kCAAnimationRotateAuto
//        anim.repeatCount = Float.infinity
//        anim.duration = 5.0
//        
//        square.layer.addAnimation(anim, forKey: "animate position along path")
        
        
    }
    

    @IBAction func animationTapAction(sender: UIButton) {
        
//        let views = (frontView:self.redSquare,backView:self.blueSquare)
        
        
        
//        //动画相间播放
//        var views:(frontView:UIView,backView:UIView)
//        
//        
//        if((self.redSquare.superview) != nil){
//            views = (frontView: self.redSquare, backView: self.blueSquare)
//        }
//        else {
//            views = (frontView: self.blueSquare, backView: self.redSquare)
//        }
//        
//        //可变化多重不同效果
//        let transitionOptions = UIViewAnimationOptions.TransitionCurlUp//向上翻页
//      
//        UIView.transitionWithView(self.container, duration: 1.0, options: transitionOptions, animations: {
//            views.frontView.removeFromSuperview()
//            self.container.addSubview(views.backView)
//         
//            }, completion: { finished in
//        
//        })
//     
       
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

