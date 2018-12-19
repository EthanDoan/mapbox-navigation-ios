import UIKit


@objc(MBLanesStyleKit)
public class LanesStyleKit : NSObject {
    
    //// Drawing Methods
    
    @objc dynamic public class func drawLaneStraightRight(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 30, height: 30), resizing: ResizingBehavior = .aspectFit, primaryColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), size: CGSize = CGSize(width: 32, height: 32)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 30, height: 30), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 30, y: resizedFrame.height / 30)
        
        
        
        //// Variable Declarations
        let expression: CGFloat = min(size.width / 30.0, size.height / 30.0)
        
        //// Frames
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        
        
        //// Group
        context.saveGState()
        context.translateBy(x: frame.minX + 5, y: frame.minY + 2)
        context.scaleBy(x: expression, y: expression)
        
        
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 4, y: 9.5, width: 4, height: 15.5))
        primaryColor.setFill()
        rectanglePath.fill()
        
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 6.02, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 11.86, y: 8.13), controlPoint1: CGPoint(x: 6.06, y: 0.06), controlPoint2: CGPoint(x: 11.74, y: 7.97))
        bezierPath.addCurve(to: CGPoint(x: 12.02, y: 8.52), controlPoint1: CGPoint(x: 11.96, y: 8.23), controlPoint2: CGPoint(x: 12.02, y: 8.37))
        bezierPath.addCurve(to: CGPoint(x: 11.5, y: 9.03), controlPoint1: CGPoint(x: 12.02, y: 8.8), controlPoint2: CGPoint(x: 11.79, y: 9.03))
        bezierPath.addCurve(to: CGPoint(x: 11.31, y: 8.99), controlPoint1: CGPoint(x: 11.44, y: 9.03), controlPoint2: CGPoint(x: 11.37, y: 9.02))
        bezierPath.addCurve(to: CGPoint(x: 8.59, y: 8), controlPoint1: CGPoint(x: 11.2, y: 8.95), controlPoint2: CGPoint(x: 8.69, y: 8.04))
        bezierPath.addCurve(to: CGPoint(x: 8.01, y: 8.52), controlPoint1: CGPoint(x: 8.2, y: 8), controlPoint2: CGPoint(x: 8.01, y: 8.23))
        bezierPath.addCurve(to: CGPoint(x: 8, y: 8.72), controlPoint1: CGPoint(x: 8.01, y: 8.59), controlPoint2: CGPoint(x: 8.01, y: 8.66))
        bezierPath.addCurve(to: CGPoint(x: 8.01, y: 9.99), controlPoint1: CGPoint(x: 8, y: 8.8), controlPoint2: CGPoint(x: 8.01, y: 9.99))
        bezierPath.addLine(to: CGPoint(x: 4.01, y: 9.92))
        bezierPath.addCurve(to: CGPoint(x: 4.02, y: 8.66), controlPoint1: CGPoint(x: 4.01, y: 9.92), controlPoint2: CGPoint(x: 4.02, y: 8.75))
        bezierPath.addCurve(to: CGPoint(x: 4.01, y: 8.46), controlPoint1: CGPoint(x: 4.01, y: 8.6), controlPoint2: CGPoint(x: 4.01, y: 8.53))
        bezierPath.addCurve(to: CGPoint(x: 3.53, y: 7.94), controlPoint1: CGPoint(x: 4.01, y: 8.17), controlPoint2: CGPoint(x: 3.82, y: 7.94))
        bezierPath.addCurve(to: CGPoint(x: 0.71, y: 8.93), controlPoint1: CGPoint(x: 3.32, y: 7.98), controlPoint2: CGPoint(x: 0.82, y: 8.89))
        bezierPath.addCurve(to: CGPoint(x: 0.52, y: 8.97), controlPoint1: CGPoint(x: 0.65, y: 8.96), controlPoint2: CGPoint(x: 0.58, y: 8.97))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 8.46), controlPoint1: CGPoint(x: 0.23, y: 8.97), controlPoint2: CGPoint(x: 0, y: 8.74))
        bezierPath.addCurve(to: CGPoint(x: 0.16, y: 8.08), controlPoint1: CGPoint(x: 0, y: 8.3), controlPoint2: CGPoint(x: 0.06, y: 8.17))
        bezierPath.addCurve(to: CGPoint(x: 6.01, y: 0), controlPoint1: CGPoint(x: 0.28, y: 7.9), controlPoint2: CGPoint(x: 5.97, y: 0.06))
        bezierPath.addLine(to: CGPoint(x: 6.02, y: 0))
        bezierPath.close()
        primaryColor.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 13.05, y: 12.59))
        bezier2Path.addLine(to: CGPoint(x: 14.31, y: 12.59))
        bezier2Path.addLine(to: CGPoint(x: 14.31, y: 12.59))
        bezier2Path.addCurve(to: CGPoint(x: 14.51, y: 12.59), controlPoint1: CGPoint(x: 14.37, y: 12.59), controlPoint2: CGPoint(x: 14.44, y: 12.59))
        bezier2Path.addCurve(to: CGPoint(x: 15.03, y: 12.1), controlPoint1: CGPoint(x: 14.8, y: 12.59), controlPoint2: CGPoint(x: 15.03, y: 12.4))
        bezier2Path.addCurve(to: CGPoint(x: 15.03, y: 12.01), controlPoint1: CGPoint(x: 15.03, y: 12.07), controlPoint2: CGPoint(x: 15.03, y: 12.04))
        bezier2Path.addLine(to: CGPoint(x: 15.03, y: 12.01))
        bezier2Path.addLine(to: CGPoint(x: 14.04, y: 9.28))
        bezier2Path.addLine(to: CGPoint(x: 14.04, y: 9.29))
        bezier2Path.addCurve(to: CGPoint(x: 14, y: 9.09), controlPoint1: CGPoint(x: 14.02, y: 9.23), controlPoint2: CGPoint(x: 14, y: 9.16))
        bezier2Path.addCurve(to: CGPoint(x: 14.52, y: 8.58), controlPoint1: CGPoint(x: 14, y: 8.81), controlPoint2: CGPoint(x: 14.23, y: 8.58))
        bezier2Path.addCurve(to: CGPoint(x: 14.9, y: 8.74), controlPoint1: CGPoint(x: 14.67, y: 8.58), controlPoint2: CGPoint(x: 14.8, y: 8.64))
        bezier2Path.addLine(to: CGPoint(x: 14.9, y: 8.74))
        bezier2Path.addLine(to: CGPoint(x: 21.97, y: 14.59))
        bezier2Path.addLine(to: CGPoint(x: 14.83, y: 20.44))
        bezier2Path.addLine(to: CGPoint(x: 14.84, y: 20.43))
        bezier2Path.addCurve(to: CGPoint(x: 14.46, y: 20.6), controlPoint1: CGPoint(x: 14.74, y: 20.53), controlPoint2: CGPoint(x: 14.6, y: 20.6))
        bezier2Path.addCurve(to: CGPoint(x: 13.94, y: 20.08), controlPoint1: CGPoint(x: 14.17, y: 20.6), controlPoint2: CGPoint(x: 13.94, y: 20.37))
        bezier2Path.addCurve(to: CGPoint(x: 13.98, y: 19.89), controlPoint1: CGPoint(x: 13.94, y: 20.01), controlPoint2: CGPoint(x: 13.95, y: 19.95))
        bezier2Path.addLine(to: CGPoint(x: 13.98, y: 19.89))
        bezier2Path.addLine(to: CGPoint(x: 14.97, y: 17.16))
        bezier2Path.addLine(to: CGPoint(x: 14.97, y: 17.16))
        bezier2Path.addCurve(to: CGPoint(x: 14.97, y: 17.07), controlPoint1: CGPoint(x: 14.97, y: 17.14), controlPoint2: CGPoint(x: 14.97, y: 17.1))
        bezier2Path.addCurve(to: CGPoint(x: 14.45, y: 16.59), controlPoint1: CGPoint(x: 14.97, y: 16.78), controlPoint2: CGPoint(x: 14.74, y: 16.59))
        bezier2Path.addCurve(to: CGPoint(x: 14.25, y: 16.58), controlPoint1: CGPoint(x: 14.38, y: 16.59), controlPoint2: CGPoint(x: 14.31, y: 16.58))
        bezier2Path.addLine(to: CGPoint(x: 14.25, y: 16.58))
        bezier2Path.addLine(to: CGPoint(x: 12.99, y: 16.59))
        bezier2Path.usesEvenOddFillRule = true
        primaryColor.setFill()
        bezier2Path.fill()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 6.03, y: 25))
        bezier3Path.addLine(to: CGPoint(x: 6.03, y: 20.87))
        bezier3Path.addCurve(to: CGPoint(x: 8, y: 16.61), controlPoint1: CGPoint(x: 6.03, y: 19.23), controlPoint2: CGPoint(x: 6.73, y: 17.65))
        bezier3Path.addCurve(to: CGPoint(x: 12.84, y: 14.61), controlPoint1: CGPoint(x: 9.23, y: 15.61), controlPoint2: CGPoint(x: 10.93, y: 14.61))
        bezier3Path.addLine(to: CGPoint(x: 15.03, y: 14.61))
        primaryColor.setStroke()
        bezier3Path.lineWidth = 4
        bezier3Path.stroke()
        
        
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    @objc dynamic public class func drawLaneStraightOnly(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 30, height: 30), resizing: ResizingBehavior = .aspectFit, primaryColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), secondaryColor: UIColor = UIColor(red: 0.618, green: 0.618, blue: 0.618, alpha: 1.000), size: CGSize = CGSize(width: 32, height: 32)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 30, height: 30), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 30, y: resizedFrame.height / 30)
        
        
        
        //// Variable Declarations
        let expression: CGFloat = min(size.width / 30.0, size.height / 30.0)
        
        //// Frames
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        
        
        //// Group
        context.saveGState()
        context.translateBy(x: frame.minX + 5, y: frame.minY + 2)
        context.scaleBy(x: expression, y: expression)
        
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 13.05, y: 12.59))
        bezier2Path.addLine(to: CGPoint(x: 14.31, y: 12.59))
        bezier2Path.addLine(to: CGPoint(x: 14.31, y: 12.59))
        bezier2Path.addCurve(to: CGPoint(x: 14.51, y: 12.59), controlPoint1: CGPoint(x: 14.37, y: 12.59), controlPoint2: CGPoint(x: 14.44, y: 12.59))
        bezier2Path.addCurve(to: CGPoint(x: 15.03, y: 12.1), controlPoint1: CGPoint(x: 14.8, y: 12.59), controlPoint2: CGPoint(x: 15.03, y: 12.4))
        bezier2Path.addCurve(to: CGPoint(x: 15.03, y: 12.01), controlPoint1: CGPoint(x: 15.03, y: 12.07), controlPoint2: CGPoint(x: 15.03, y: 12.04))
        bezier2Path.addLine(to: CGPoint(x: 15.03, y: 12.01))
        bezier2Path.addLine(to: CGPoint(x: 14.04, y: 9.28))
        bezier2Path.addLine(to: CGPoint(x: 14.04, y: 9.29))
        bezier2Path.addCurve(to: CGPoint(x: 14, y: 9.09), controlPoint1: CGPoint(x: 14.02, y: 9.23), controlPoint2: CGPoint(x: 14, y: 9.16))
        bezier2Path.addCurve(to: CGPoint(x: 14.52, y: 8.58), controlPoint1: CGPoint(x: 14, y: 8.81), controlPoint2: CGPoint(x: 14.23, y: 8.58))
        bezier2Path.addCurve(to: CGPoint(x: 14.9, y: 8.74), controlPoint1: CGPoint(x: 14.67, y: 8.58), controlPoint2: CGPoint(x: 14.8, y: 8.64))
        bezier2Path.addLine(to: CGPoint(x: 14.9, y: 8.74))
        bezier2Path.addLine(to: CGPoint(x: 21.97, y: 14.59))
        bezier2Path.addLine(to: CGPoint(x: 14.83, y: 20.44))
        bezier2Path.addLine(to: CGPoint(x: 14.84, y: 20.43))
        bezier2Path.addCurve(to: CGPoint(x: 14.46, y: 20.6), controlPoint1: CGPoint(x: 14.74, y: 20.53), controlPoint2: CGPoint(x: 14.6, y: 20.6))
        bezier2Path.addCurve(to: CGPoint(x: 13.94, y: 20.08), controlPoint1: CGPoint(x: 14.17, y: 20.6), controlPoint2: CGPoint(x: 13.94, y: 20.37))
        bezier2Path.addCurve(to: CGPoint(x: 13.98, y: 19.89), controlPoint1: CGPoint(x: 13.94, y: 20.01), controlPoint2: CGPoint(x: 13.95, y: 19.95))
        bezier2Path.addLine(to: CGPoint(x: 13.98, y: 19.89))
        bezier2Path.addLine(to: CGPoint(x: 14.97, y: 17.16))
        bezier2Path.addLine(to: CGPoint(x: 14.97, y: 17.16))
        bezier2Path.addCurve(to: CGPoint(x: 14.97, y: 17.07), controlPoint1: CGPoint(x: 14.97, y: 17.14), controlPoint2: CGPoint(x: 14.97, y: 17.1))
        bezier2Path.addCurve(to: CGPoint(x: 14.45, y: 16.59), controlPoint1: CGPoint(x: 14.97, y: 16.78), controlPoint2: CGPoint(x: 14.74, y: 16.59))
        bezier2Path.addCurve(to: CGPoint(x: 14.25, y: 16.58), controlPoint1: CGPoint(x: 14.38, y: 16.59), controlPoint2: CGPoint(x: 14.31, y: 16.58))
        bezier2Path.addLine(to: CGPoint(x: 14.25, y: 16.58))
        bezier2Path.addLine(to: CGPoint(x: 12.99, y: 16.59))
        bezier2Path.usesEvenOddFillRule = true
        secondaryColor.setFill()
        bezier2Path.fill()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 6.03, y: 25))
        bezier3Path.addLine(to: CGPoint(x: 6.03, y: 20.87))
        bezier3Path.addCurve(to: CGPoint(x: 8, y: 16.61), controlPoint1: CGPoint(x: 6.03, y: 19.23), controlPoint2: CGPoint(x: 6.73, y: 17.65))
        bezier3Path.addCurve(to: CGPoint(x: 12.84, y: 14.61), controlPoint1: CGPoint(x: 9.23, y: 15.61), controlPoint2: CGPoint(x: 10.93, y: 14.61))
        bezier3Path.addLine(to: CGPoint(x: 15.03, y: 14.61))
        secondaryColor.setStroke()
        bezier3Path.lineWidth = 4
        bezier3Path.stroke()
        
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 4, y: 9, width: 4, height: 16))
        primaryColor.setFill()
        rectanglePath.fill()
        
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 6.02, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 11.86, y: 8.13), controlPoint1: CGPoint(x: 6.06, y: 0.06), controlPoint2: CGPoint(x: 11.74, y: 7.97))
        bezierPath.addCurve(to: CGPoint(x: 12.02, y: 8.52), controlPoint1: CGPoint(x: 11.96, y: 8.23), controlPoint2: CGPoint(x: 12.02, y: 8.37))
        bezierPath.addCurve(to: CGPoint(x: 11.5, y: 9.03), controlPoint1: CGPoint(x: 12.02, y: 8.8), controlPoint2: CGPoint(x: 11.79, y: 9.03))
        bezierPath.addCurve(to: CGPoint(x: 11.31, y: 8.99), controlPoint1: CGPoint(x: 11.44, y: 9.03), controlPoint2: CGPoint(x: 11.37, y: 9.02))
        bezierPath.addCurve(to: CGPoint(x: 8.59, y: 8), controlPoint1: CGPoint(x: 11.2, y: 8.95), controlPoint2: CGPoint(x: 8.69, y: 8.04))
        bezierPath.addCurve(to: CGPoint(x: 8.01, y: 8.52), controlPoint1: CGPoint(x: 8.2, y: 8), controlPoint2: CGPoint(x: 8.01, y: 8.23))
        bezierPath.addCurve(to: CGPoint(x: 8, y: 8.72), controlPoint1: CGPoint(x: 8.01, y: 8.59), controlPoint2: CGPoint(x: 8.01, y: 8.66))
        bezierPath.addCurve(to: CGPoint(x: 8.01, y: 9.99), controlPoint1: CGPoint(x: 8, y: 8.8), controlPoint2: CGPoint(x: 8.01, y: 9.99))
        bezierPath.addLine(to: CGPoint(x: 4.01, y: 9.92))
        bezierPath.addCurve(to: CGPoint(x: 4.02, y: 8.66), controlPoint1: CGPoint(x: 4.01, y: 9.92), controlPoint2: CGPoint(x: 4.02, y: 8.75))
        bezierPath.addCurve(to: CGPoint(x: 4.01, y: 8.46), controlPoint1: CGPoint(x: 4.01, y: 8.6), controlPoint2: CGPoint(x: 4.01, y: 8.53))
        bezierPath.addCurve(to: CGPoint(x: 3.53, y: 7.94), controlPoint1: CGPoint(x: 4.01, y: 8.17), controlPoint2: CGPoint(x: 3.82, y: 7.94))
        bezierPath.addCurve(to: CGPoint(x: 0.71, y: 8.93), controlPoint1: CGPoint(x: 3.32, y: 7.98), controlPoint2: CGPoint(x: 0.82, y: 8.89))
        bezierPath.addCurve(to: CGPoint(x: 0.52, y: 8.97), controlPoint1: CGPoint(x: 0.65, y: 8.96), controlPoint2: CGPoint(x: 0.58, y: 8.97))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 8.46), controlPoint1: CGPoint(x: 0.23, y: 8.97), controlPoint2: CGPoint(x: 0, y: 8.74))
        bezierPath.addCurve(to: CGPoint(x: 0.16, y: 8.08), controlPoint1: CGPoint(x: 0, y: 8.3), controlPoint2: CGPoint(x: 0.06, y: 8.17))
        bezierPath.addCurve(to: CGPoint(x: 6.01, y: 0), controlPoint1: CGPoint(x: 0.28, y: 7.9), controlPoint2: CGPoint(x: 5.97, y: 0.06))
        bezierPath.addLine(to: CGPoint(x: 6.02, y: 0))
        bezierPath.close()
        primaryColor.setFill()
        bezierPath.fill()
        
        
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    @objc dynamic public class func drawLaneRight(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 30, height: 30), resizing: ResizingBehavior = .aspectFit, primaryColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), size: CGSize = CGSize(width: 32, height: 32)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 30, height: 30), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 30, y: resizedFrame.height / 30)
        
        
        
        //// Variable Declarations
        let expression: CGFloat = min(size.width / 30.0, size.height / 30.0)
        
        //// Frames
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        
        
        //// Group
        context.saveGState()
        context.translateBy(x: frame.minX + 9, y: frame.minY + 4)
        context.scaleBy(x: expression, y: expression)
        
        
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 7.46, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 7.77, y: 0.16), controlPoint1: CGPoint(x: 7.55, y: 0), controlPoint2: CGPoint(x: 7.68, y: 0.06))
        bezierPath.addCurve(to: CGPoint(x: 14.85, y: 6.01), controlPoint1: CGPoint(x: 7.93, y: 0.29), controlPoint2: CGPoint(x: 14.85, y: 6.01))
        bezierPath.addCurve(to: CGPoint(x: 7.72, y: 11.86), controlPoint1: CGPoint(x: 14.85, y: 6.01), controlPoint2: CGPoint(x: 7.87, y: 11.73))
        bezierPath.addCurve(to: CGPoint(x: 7.34, y: 12.02), controlPoint1: CGPoint(x: 7.62, y: 11.96), controlPoint2: CGPoint(x: 7.48, y: 12.02))
        bezierPath.addCurve(to: CGPoint(x: 6.82, y: 11.5), controlPoint1: CGPoint(x: 7.05, y: 12.02), controlPoint2: CGPoint(x: 6.82, y: 11.79))
        bezierPath.addCurve(to: CGPoint(x: 6.86, y: 11.31), controlPoint1: CGPoint(x: 6.82, y: 11.44), controlPoint2: CGPoint(x: 6.83, y: 11.37))
        bezierPath.addCurve(to: CGPoint(x: 7.85, y: 8.59), controlPoint1: CGPoint(x: 6.9, y: 11.2), controlPoint2: CGPoint(x: 7.81, y: 8.69))
        bezierPath.addCurve(to: CGPoint(x: 7.33, y: 8.01), controlPoint1: CGPoint(x: 7.85, y: 8.2), controlPoint2: CGPoint(x: 7.62, y: 8.01))
        bezierPath.addCurve(to: CGPoint(x: 7.13, y: 8), controlPoint1: CGPoint(x: 7.26, y: 8.01), controlPoint2: CGPoint(x: 7.19, y: 8.01))
        bezierPath.addCurve(to: CGPoint(x: 5.87, y: 8.01), controlPoint1: CGPoint(x: 7.05, y: 8), controlPoint2: CGPoint(x: 5.87, y: 8.01))
        bezierPath.addLine(to: CGPoint(x: 5.93, y: 4.01))
        bezierPath.addCurve(to: CGPoint(x: 7.19, y: 4.02), controlPoint1: CGPoint(x: 5.93, y: 4.01), controlPoint2: CGPoint(x: 7.1, y: 4.02))
        bezierPath.addCurve(to: CGPoint(x: 7.39, y: 4.01), controlPoint1: CGPoint(x: 7.25, y: 4.01), controlPoint2: CGPoint(x: 7.32, y: 4.01))
        bezierPath.addCurve(to: CGPoint(x: 7.91, y: 3.53), controlPoint1: CGPoint(x: 7.68, y: 4.01), controlPoint2: CGPoint(x: 7.91, y: 3.82))
        bezierPath.addCurve(to: CGPoint(x: 6.92, y: 0.71), controlPoint1: CGPoint(x: 7.87, y: 3.32), controlPoint2: CGPoint(x: 6.96, y: 0.82))
        bezierPath.addCurve(to: CGPoint(x: 6.88, y: 0.52), controlPoint1: CGPoint(x: 6.9, y: 0.65), controlPoint2: CGPoint(x: 6.88, y: 0.58))
        bezierPath.addCurve(to: CGPoint(x: 7.39, y: 0), controlPoint1: CGPoint(x: 6.88, y: 0.23), controlPoint2: CGPoint(x: 7.11, y: 0))
        bezierPath.addLine(to: CGPoint(x: 7.46, y: 0))
        bezierPath.close()
        primaryColor.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 0, y: 23))
        bezier2Path.addLine(to: CGPoint(x: 0.06, y: 9.56))
        bezier2Path.addCurve(to: CGPoint(x: 3.94, y: 6.03), controlPoint1: CGPoint(x: 0.06, y: 9.56), controlPoint2: CGPoint(x: 0.34, y: 6.03))
        bezier2Path.addLine(to: CGPoint(x: 11.03, y: 6.03))
        primaryColor.setStroke()
        bezier2Path.lineWidth = 4
        bezier2Path.stroke()
        
        
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    @objc dynamic public class func drawLaneRightOnly(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 30, height: 30), resizing: ResizingBehavior = .aspectFit, primaryColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), secondaryColor: UIColor = UIColor(red: 0.618, green: 0.618, blue: 0.618, alpha: 1.000), size: CGSize = CGSize(width: 32, height: 32)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 30, height: 30), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 30, y: resizedFrame.height / 30)
        
        
        
        //// Variable Declarations
        let expression: CGFloat = min(size.width / 30.0, size.height / 30.0)
        
        //// Frames
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        
        
        //// Group
        context.saveGState()
        context.translateBy(x: frame.minX + 5, y: frame.minY + 2)
        context.scaleBy(x: expression, y: expression)
        
        
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 4, y: 9, width: 4, height: 16))
        secondaryColor.setFill()
        rectanglePath.fill()
        
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 6.02, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 11.86, y: 8.13), controlPoint1: CGPoint(x: 6.06, y: 0.06), controlPoint2: CGPoint(x: 11.74, y: 7.97))
        bezierPath.addCurve(to: CGPoint(x: 12.02, y: 8.52), controlPoint1: CGPoint(x: 11.96, y: 8.23), controlPoint2: CGPoint(x: 12.02, y: 8.37))
        bezierPath.addCurve(to: CGPoint(x: 11.5, y: 9.03), controlPoint1: CGPoint(x: 12.02, y: 8.8), controlPoint2: CGPoint(x: 11.79, y: 9.03))
        bezierPath.addCurve(to: CGPoint(x: 11.31, y: 8.99), controlPoint1: CGPoint(x: 11.44, y: 9.03), controlPoint2: CGPoint(x: 11.37, y: 9.02))
        bezierPath.addCurve(to: CGPoint(x: 8.59, y: 8), controlPoint1: CGPoint(x: 11.2, y: 8.95), controlPoint2: CGPoint(x: 8.69, y: 8.04))
        bezierPath.addCurve(to: CGPoint(x: 8.01, y: 8.52), controlPoint1: CGPoint(x: 8.2, y: 8), controlPoint2: CGPoint(x: 8.01, y: 8.23))
        bezierPath.addCurve(to: CGPoint(x: 8, y: 8.72), controlPoint1: CGPoint(x: 8.01, y: 8.59), controlPoint2: CGPoint(x: 8.01, y: 8.66))
        bezierPath.addCurve(to: CGPoint(x: 8.01, y: 9.99), controlPoint1: CGPoint(x: 8, y: 8.8), controlPoint2: CGPoint(x: 8.01, y: 9.99))
        bezierPath.addLine(to: CGPoint(x: 4.01, y: 9.92))
        bezierPath.addCurve(to: CGPoint(x: 4.02, y: 8.66), controlPoint1: CGPoint(x: 4.01, y: 9.92), controlPoint2: CGPoint(x: 4.02, y: 8.75))
        bezierPath.addCurve(to: CGPoint(x: 4.01, y: 8.46), controlPoint1: CGPoint(x: 4.01, y: 8.6), controlPoint2: CGPoint(x: 4.01, y: 8.53))
        bezierPath.addCurve(to: CGPoint(x: 3.53, y: 7.94), controlPoint1: CGPoint(x: 4.01, y: 8.17), controlPoint2: CGPoint(x: 3.82, y: 7.94))
        bezierPath.addCurve(to: CGPoint(x: 0.71, y: 8.93), controlPoint1: CGPoint(x: 3.32, y: 7.98), controlPoint2: CGPoint(x: 0.82, y: 8.89))
        bezierPath.addCurve(to: CGPoint(x: 0.52, y: 8.97), controlPoint1: CGPoint(x: 0.65, y: 8.96), controlPoint2: CGPoint(x: 0.58, y: 8.97))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 8.46), controlPoint1: CGPoint(x: 0.23, y: 8.97), controlPoint2: CGPoint(x: 0, y: 8.74))
        bezierPath.addCurve(to: CGPoint(x: 0.16, y: 8.08), controlPoint1: CGPoint(x: 0, y: 8.3), controlPoint2: CGPoint(x: 0.06, y: 8.17))
        bezierPath.addCurve(to: CGPoint(x: 6.01, y: 0), controlPoint1: CGPoint(x: 0.28, y: 7.9), controlPoint2: CGPoint(x: 5.97, y: 0.06))
        bezierPath.addLine(to: CGPoint(x: 6.02, y: 0))
        bezierPath.close()
        secondaryColor.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 13.05, y: 12.59))
        bezier2Path.addLine(to: CGPoint(x: 14.31, y: 12.59))
        bezier2Path.addLine(to: CGPoint(x: 14.31, y: 12.59))
        bezier2Path.addCurve(to: CGPoint(x: 14.51, y: 12.59), controlPoint1: CGPoint(x: 14.37, y: 12.59), controlPoint2: CGPoint(x: 14.44, y: 12.59))
        bezier2Path.addCurve(to: CGPoint(x: 15.03, y: 12.1), controlPoint1: CGPoint(x: 14.8, y: 12.59), controlPoint2: CGPoint(x: 15.03, y: 12.4))
        bezier2Path.addCurve(to: CGPoint(x: 15.03, y: 12.01), controlPoint1: CGPoint(x: 15.03, y: 12.07), controlPoint2: CGPoint(x: 15.03, y: 12.04))
        bezier2Path.addLine(to: CGPoint(x: 15.03, y: 12.01))
        bezier2Path.addLine(to: CGPoint(x: 14.04, y: 9.28))
        bezier2Path.addLine(to: CGPoint(x: 14.04, y: 9.29))
        bezier2Path.addCurve(to: CGPoint(x: 14, y: 9.09), controlPoint1: CGPoint(x: 14.02, y: 9.23), controlPoint2: CGPoint(x: 14, y: 9.16))
        bezier2Path.addCurve(to: CGPoint(x: 14.52, y: 8.58), controlPoint1: CGPoint(x: 14, y: 8.81), controlPoint2: CGPoint(x: 14.23, y: 8.58))
        bezier2Path.addCurve(to: CGPoint(x: 14.9, y: 8.74), controlPoint1: CGPoint(x: 14.67, y: 8.58), controlPoint2: CGPoint(x: 14.8, y: 8.64))
        bezier2Path.addLine(to: CGPoint(x: 14.9, y: 8.74))
        bezier2Path.addLine(to: CGPoint(x: 21.97, y: 14.59))
        bezier2Path.addLine(to: CGPoint(x: 14.83, y: 20.44))
        bezier2Path.addLine(to: CGPoint(x: 14.84, y: 20.43))
        bezier2Path.addCurve(to: CGPoint(x: 14.46, y: 20.6), controlPoint1: CGPoint(x: 14.74, y: 20.53), controlPoint2: CGPoint(x: 14.6, y: 20.6))
        bezier2Path.addCurve(to: CGPoint(x: 13.94, y: 20.08), controlPoint1: CGPoint(x: 14.17, y: 20.6), controlPoint2: CGPoint(x: 13.94, y: 20.37))
        bezier2Path.addCurve(to: CGPoint(x: 13.98, y: 19.89), controlPoint1: CGPoint(x: 13.94, y: 20.01), controlPoint2: CGPoint(x: 13.95, y: 19.95))
        bezier2Path.addLine(to: CGPoint(x: 13.98, y: 19.89))
        bezier2Path.addLine(to: CGPoint(x: 14.97, y: 17.16))
        bezier2Path.addLine(to: CGPoint(x: 14.97, y: 17.16))
        bezier2Path.addCurve(to: CGPoint(x: 14.97, y: 17.07), controlPoint1: CGPoint(x: 14.97, y: 17.14), controlPoint2: CGPoint(x: 14.97, y: 17.1))
        bezier2Path.addCurve(to: CGPoint(x: 14.45, y: 16.59), controlPoint1: CGPoint(x: 14.97, y: 16.78), controlPoint2: CGPoint(x: 14.74, y: 16.59))
        bezier2Path.addCurve(to: CGPoint(x: 14.25, y: 16.58), controlPoint1: CGPoint(x: 14.38, y: 16.59), controlPoint2: CGPoint(x: 14.31, y: 16.58))
        bezier2Path.addLine(to: CGPoint(x: 14.25, y: 16.58))
        bezier2Path.addLine(to: CGPoint(x: 12.99, y: 16.59))
        bezier2Path.usesEvenOddFillRule = true
        primaryColor.setFill()
        bezier2Path.fill()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 6.03, y: 25))
        bezier3Path.addLine(to: CGPoint(x: 6.03, y: 20.87))
        bezier3Path.addCurve(to: CGPoint(x: 8, y: 16.61), controlPoint1: CGPoint(x: 6.03, y: 19.23), controlPoint2: CGPoint(x: 6.73, y: 17.65))
        bezier3Path.addCurve(to: CGPoint(x: 12.84, y: 14.61), controlPoint1: CGPoint(x: 9.23, y: 15.61), controlPoint2: CGPoint(x: 10.93, y: 14.61))
        bezier3Path.addLine(to: CGPoint(x: 15.03, y: 14.61))
        primaryColor.setStroke()
        bezier3Path.lineWidth = 4
        bezier3Path.stroke()
        
        
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    @objc dynamic public class func drawLaneStraight(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 30, height: 30), resizing: ResizingBehavior = .aspectFit, primaryColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), size: CGSize = CGSize(width: 32, height: 32)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 30, height: 30), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 30, y: resizedFrame.height / 30)
        
        
        
        //// Variable Declarations
        let expression: CGFloat = min(size.width / 30.0, size.height / 30.0)
        
        //// Frames
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        
        
        //// Group
        context.saveGState()
        context.translateBy(x: frame.minX + 9, y: frame.minY + 3)
        context.scaleBy(x: expression, y: expression)
        
        
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 4, y: 8, width: 4, height: 16))
        primaryColor.setFill()
        rectanglePath.fill()
        
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 4.01, y: 9.92))
        bezierPath.addLine(to: CGPoint(x: 4.02, y: 8.66))
        bezierPath.addLine(to: CGPoint(x: 4.01, y: 8.66))
        bezierPath.addCurve(to: CGPoint(x: 4.01, y: 8.46), controlPoint1: CGPoint(x: 4.01, y: 8.6), controlPoint2: CGPoint(x: 4.01, y: 8.53))
        bezierPath.addCurve(to: CGPoint(x: 3.53, y: 7.94), controlPoint1: CGPoint(x: 4.01, y: 8.17), controlPoint2: CGPoint(x: 3.82, y: 7.94))
        bezierPath.addCurve(to: CGPoint(x: 3.43, y: 7.94), controlPoint1: CGPoint(x: 3.5, y: 7.94), controlPoint2: CGPoint(x: 3.46, y: 7.94))
        bezierPath.addLine(to: CGPoint(x: 3.44, y: 7.94))
        bezierPath.addLine(to: CGPoint(x: 0.71, y: 8.93))
        bezierPath.addLine(to: CGPoint(x: 0.71, y: 8.93))
        bezierPath.addCurve(to: CGPoint(x: 0.52, y: 8.97), controlPoint1: CGPoint(x: 0.65, y: 8.96), controlPoint2: CGPoint(x: 0.58, y: 8.97))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 8.45), controlPoint1: CGPoint(x: 0.23, y: 8.97), controlPoint2: CGPoint(x: 0, y: 8.74))
        bezierPath.addCurve(to: CGPoint(x: 0.16, y: 8.07), controlPoint1: CGPoint(x: 0, y: 8.3), controlPoint2: CGPoint(x: 0.06, y: 8.17))
        bezierPath.addLine(to: CGPoint(x: 0.16, y: 8.08))
        bezierPath.addLine(to: CGPoint(x: 6.02, y: 0))
        bezierPath.addLine(to: CGPoint(x: 11.86, y: 8.14))
        bezierPath.addLine(to: CGPoint(x: 11.86, y: 8.14))
        bezierPath.addCurve(to: CGPoint(x: 12.02, y: 8.52), controlPoint1: CGPoint(x: 11.96, y: 8.23), controlPoint2: CGPoint(x: 12.02, y: 8.37))
        bezierPath.addCurve(to: CGPoint(x: 11.5, y: 9.03), controlPoint1: CGPoint(x: 12.02, y: 8.8), controlPoint2: CGPoint(x: 11.79, y: 9.03))
        bezierPath.addCurve(to: CGPoint(x: 11.31, y: 8.99), controlPoint1: CGPoint(x: 11.43, y: 9.03), controlPoint2: CGPoint(x: 11.37, y: 9.02))
        bezierPath.addLine(to: CGPoint(x: 11.31, y: 8.99))
        bezierPath.addLine(to: CGPoint(x: 8.58, y: 8))
        bezierPath.addLine(to: CGPoint(x: 8.59, y: 8.01))
        bezierPath.addCurve(to: CGPoint(x: 8.49, y: 8), controlPoint1: CGPoint(x: 8.56, y: 8), controlPoint2: CGPoint(x: 8.52, y: 8))
        bezierPath.addCurve(to: CGPoint(x: 8.01, y: 8.53), controlPoint1: CGPoint(x: 8.2, y: 8), controlPoint2: CGPoint(x: 8.01, y: 8.23))
        bezierPath.addCurve(to: CGPoint(x: 8.01, y: 8.73), controlPoint1: CGPoint(x: 8.01, y: 8.59), controlPoint2: CGPoint(x: 8.01, y: 8.66))
        bezierPath.addLine(to: CGPoint(x: 8, y: 8.72))
        bezierPath.addLine(to: CGPoint(x: 8.01, y: 9.99))
        bezierPath.usesEvenOddFillRule = true
        primaryColor.setFill()
        bezierPath.fill()
        
        
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    @objc dynamic public class func drawLaneUturn(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 30, height: 30), resizing: ResizingBehavior = .aspectFit, primaryColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), size: CGSize = CGSize(width: 32, height: 32)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 30, height: 30), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 30, y: resizedFrame.height / 30)
        
        
        
        //// Variable Declarations
        let expression: CGFloat = min(size.width / 30.0, size.height / 30.0)
        
        //// Frames
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        
        
        //// Group
        context.saveGState()
        context.translateBy(x: frame.minX + 9, y: frame.minY + 5)
        context.scaleBy(x: expression, y: expression)
        
        
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 10, y: 15))
        bezierPath.addLine(to: CGPoint(x: 10, y: 6.26))
        bezierPath.addCurve(to: CGPoint(x: 5, y: 0), controlPoint1: CGPoint(x: 10, y: 4.62), controlPoint2: CGPoint(x: 10, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 6), controlPoint1: CGPoint(x: 0, y: 0), controlPoint2: CGPoint(x: 0, y: 6))
        bezierPath.addLine(to: CGPoint(x: 0, y: 22))
        primaryColor.setStroke()
        bezierPath.lineWidth = 4
        bezierPath.stroke()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 12.02, y: 13.05))
        bezier2Path.addCurve(to: CGPoint(x: 12.01, y: 14.31), controlPoint1: CGPoint(x: 12.02, y: 13.05), controlPoint2: CGPoint(x: 12.01, y: 14.22))
        bezier2Path.addCurve(to: CGPoint(x: 12.02, y: 14.51), controlPoint1: CGPoint(x: 12.02, y: 14.37), controlPoint2: CGPoint(x: 12.02, y: 14.44))
        bezier2Path.addCurve(to: CGPoint(x: 12.5, y: 15.03), controlPoint1: CGPoint(x: 12.02, y: 14.8), controlPoint2: CGPoint(x: 12.21, y: 15.03))
        bezier2Path.addCurve(to: CGPoint(x: 15.32, y: 14.04), controlPoint1: CGPoint(x: 12.71, y: 14.99), controlPoint2: CGPoint(x: 15.21, y: 14.08))
        bezier2Path.addCurve(to: CGPoint(x: 15.51, y: 14), controlPoint1: CGPoint(x: 15.38, y: 14.02), controlPoint2: CGPoint(x: 15.45, y: 14))
        bezier2Path.addCurve(to: CGPoint(x: 16, y: 14.34), controlPoint1: CGPoint(x: 15.74, y: 14), controlPoint2: CGPoint(x: 15.93, y: 14.15))
        bezier2Path.addLine(to: CGPoint(x: 16, y: 14.52))
        bezier2Path.addLine(to: CGPoint(x: 16, y: 14.69))
        bezier2Path.addCurve(to: CGPoint(x: 15.87, y: 14.89), controlPoint1: CGPoint(x: 15.97, y: 14.77), controlPoint2: CGPoint(x: 15.93, y: 14.84))
        bezier2Path.addCurve(to: CGPoint(x: 10.02, y: 21.97), controlPoint1: CGPoint(x: 15.74, y: 15.05), controlPoint2: CGPoint(x: 10.02, y: 21.97))
        bezier2Path.addCurve(to: CGPoint(x: 6.31, y: 17.44), controlPoint1: CGPoint(x: 10.02, y: 21.97), controlPoint2: CGPoint(x: 7.98, y: 19.48))
        bezier2Path.addCurve(to: CGPoint(x: 4.17, y: 14.84), controlPoint1: CGPoint(x: 5.18, y: 16.07), controlPoint2: CGPoint(x: 4.23, y: 14.9))
        bezier2Path.addCurve(to: CGPoint(x: 4.01, y: 14.46), controlPoint1: CGPoint(x: 4.07, y: 14.74), controlPoint2: CGPoint(x: 4.01, y: 14.6))
        bezier2Path.addCurve(to: CGPoint(x: 4.53, y: 13.94), controlPoint1: CGPoint(x: 4.01, y: 14.17), controlPoint2: CGPoint(x: 4.24, y: 13.94))
        bezier2Path.addCurve(to: CGPoint(x: 4.72, y: 13.98), controlPoint1: CGPoint(x: 4.6, y: 13.94), controlPoint2: CGPoint(x: 4.66, y: 13.95))
        bezier2Path.addCurve(to: CGPoint(x: 7.44, y: 14.97), controlPoint1: CGPoint(x: 4.83, y: 14.02), controlPoint2: CGPoint(x: 7.34, y: 14.93))
        bezier2Path.addCurve(to: CGPoint(x: 8.02, y: 14.45), controlPoint1: CGPoint(x: 7.83, y: 14.97), controlPoint2: CGPoint(x: 8.02, y: 14.74))
        bezier2Path.addCurve(to: CGPoint(x: 8.03, y: 14.25), controlPoint1: CGPoint(x: 8.02, y: 14.38), controlPoint2: CGPoint(x: 8.03, y: 14.31))
        bezier2Path.addCurve(to: CGPoint(x: 8.02, y: 12.99), controlPoint1: CGPoint(x: 8.03, y: 14.17), controlPoint2: CGPoint(x: 8.02, y: 12.99))
        bezier2Path.addLine(to: CGPoint(x: 12.02, y: 13.05))
        bezier2Path.close()
        primaryColor.setFill()
        bezier2Path.fill()
        
        
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    @objc dynamic public class func drawLaneSlightRight(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 30, height: 30), resizing: ResizingBehavior = .aspectFit, primaryColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000), size: CGSize = CGSize(width: 32, height: 32)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 30, height: 30), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 30, y: resizedFrame.height / 30)
        
        
        
        //// Variable Declarations
        let expression: CGFloat = min(size.width / 30.0, size.height / 30.0)
        
        //// Group
        context.saveGState()
        context.translateBy(x: 9.28, y: -0.86)
        context.scaleBy(x: expression, y: expression)
        
        
        
        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 7.17, y: 10.61))
        bezier3Path.addLine(to: CGPoint(x: 1.47, y: 15.89))
        bezier3Path.addCurve(to: CGPoint(x: 0, y: 20.47), controlPoint1: CGPoint(x: 0.6, y: 17.21), controlPoint2: CGPoint(x: 0, y: 18.82))
        bezier3Path.addLine(to: CGPoint(x: 0, y: 27.6))
        primaryColor.setStroke()
        bezier3Path.lineWidth = 4
        bezier3Path.lineJoinStyle = .round
        bezier3Path.stroke()
        
        
        //// Bezier Drawing
        context.saveGState()
        context.translateBy(x: 10.25, y: 0)
        context.rotate(by: 49 * CGFloat.pi/180)
        
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 4.01, y: 9.92))
        bezierPath.addLine(to: CGPoint(x: 4.02, y: 8.66))
        bezierPath.addLine(to: CGPoint(x: 4.01, y: 8.66))
        bezierPath.addCurve(to: CGPoint(x: 4.01, y: 8.46), controlPoint1: CGPoint(x: 4.01, y: 8.6), controlPoint2: CGPoint(x: 4.01, y: 8.53))
        bezierPath.addCurve(to: CGPoint(x: 3.53, y: 7.94), controlPoint1: CGPoint(x: 4.01, y: 8.17), controlPoint2: CGPoint(x: 3.82, y: 7.94))
        bezierPath.addCurve(to: CGPoint(x: 3.43, y: 7.94), controlPoint1: CGPoint(x: 3.5, y: 7.94), controlPoint2: CGPoint(x: 3.46, y: 7.94))
        bezierPath.addLine(to: CGPoint(x: 3.44, y: 7.94))
        bezierPath.addLine(to: CGPoint(x: 0.71, y: 8.93))
        bezierPath.addLine(to: CGPoint(x: 0.71, y: 8.93))
        bezierPath.addCurve(to: CGPoint(x: 0.52, y: 8.97), controlPoint1: CGPoint(x: 0.65, y: 8.96), controlPoint2: CGPoint(x: 0.58, y: 8.97))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 8.45), controlPoint1: CGPoint(x: 0.23, y: 8.97), controlPoint2: CGPoint(x: 0, y: 8.74))
        bezierPath.addCurve(to: CGPoint(x: 0.16, y: 8.07), controlPoint1: CGPoint(x: 0, y: 8.3), controlPoint2: CGPoint(x: 0.06, y: 8.17))
        bezierPath.addLine(to: CGPoint(x: 0.16, y: 8.08))
        bezierPath.addLine(to: CGPoint(x: 6.02, y: 0))
        bezierPath.addLine(to: CGPoint(x: 11.86, y: 8.14))
        bezierPath.addLine(to: CGPoint(x: 11.86, y: 8.14))
        bezierPath.addCurve(to: CGPoint(x: 12.02, y: 8.52), controlPoint1: CGPoint(x: 11.96, y: 8.23), controlPoint2: CGPoint(x: 12.02, y: 8.37))
        bezierPath.addCurve(to: CGPoint(x: 11.5, y: 9.03), controlPoint1: CGPoint(x: 12.02, y: 8.8), controlPoint2: CGPoint(x: 11.79, y: 9.03))
        bezierPath.addCurve(to: CGPoint(x: 11.31, y: 8.99), controlPoint1: CGPoint(x: 11.43, y: 9.03), controlPoint2: CGPoint(x: 11.37, y: 9.02))
        bezierPath.addLine(to: CGPoint(x: 11.31, y: 8.99))
        bezierPath.addLine(to: CGPoint(x: 8.58, y: 8))
        bezierPath.addLine(to: CGPoint(x: 8.59, y: 8.01))
        bezierPath.addCurve(to: CGPoint(x: 8.49, y: 8), controlPoint1: CGPoint(x: 8.56, y: 8), controlPoint2: CGPoint(x: 8.52, y: 8))
        bezierPath.addCurve(to: CGPoint(x: 8.01, y: 8.53), controlPoint1: CGPoint(x: 8.2, y: 8), controlPoint2: CGPoint(x: 8.01, y: 8.23))
        bezierPath.addCurve(to: CGPoint(x: 8.01, y: 8.73), controlPoint1: CGPoint(x: 8.01, y: 8.59), controlPoint2: CGPoint(x: 8.01, y: 8.66))
        bezierPath.addLine(to: CGPoint(x: 8, y: 8.72))
        bezierPath.addLine(to: CGPoint(x: 8.01, y: 9.99))
        bezierPath.usesEvenOddFillRule = true
        primaryColor.setFill()
        bezierPath.fill()
        
        context.restoreGState()
        
        
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    
    
    
    @objc(LanesStyleKitResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
