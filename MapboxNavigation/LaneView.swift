import UIKit
import MapboxDirections

/// :nodoc:
@objc(MBLaneView)
open class LaneView: UIView {
    @IBInspectable
    var scale: CGFloat = 1
    let invalidAlpha: CGFloat = 0.4
    
    var lane: Lane?
    var maneuverDirection: ManeuverDirection?
    var isValid: Bool = false
    
    override open var intrinsicContentSize: CGSize {
        return bounds.size
    }
    
    @objc public dynamic var primaryColor: UIColor = .defaultLaneArrowPrimary {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @objc public dynamic var secondaryColor: UIColor = .defaultLaneArrowSecondary {
        didSet {
            setNeedsDisplay()
        }
    }
    
    var appropriatePrimaryColor: UIColor {
        return isValid ? primaryColor : secondaryColor
    }
    
    static let defaultFrame: CGRect = CGRect(origin: .zero, size: 30.0)
    
    convenience init(component: LaneIndicationComponent) {
        self.init(frame: LaneView.defaultFrame)
        backgroundColor = .clear
        lane = Lane(indications: component.indications)
        maneuverDirection = ManeuverDirection(description: component.indications.description)
        isValid = component.isUsable
    }
    
    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let resizing: LanesStyleKit.ResizingBehavior = .aspectFit
        
        if let lane = lane {
            var flipLane: Bool
            if lane.indications.isSuperset(of: [.straightAhead, .sharpRight]) || lane.indications.isSuperset(of: [.straightAhead, .right]) || lane.indications.isSuperset(of: [.straightAhead, .slightRight]) {
                flipLane = false
                if !isValid {
                    if lane.indications == .slightRight {
                        LanesStyleKit.drawLaneSlightRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    } else {
                        LanesStyleKit.drawLaneStraightRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    }
                    alpha = invalidAlpha
                } else if maneuverDirection == .straightAhead {
                    LanesStyleKit.drawLaneStraightOnly(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, secondaryColor: secondaryColor, size: bounds.size)
                } else if maneuverDirection == .sharpLeft || maneuverDirection == .left || maneuverDirection == .slightLeft {
                    if lane.indications == .slightLeft {
                        LanesStyleKit.drawLaneSlightRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    } else {
                        LanesStyleKit.drawLaneRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    }
                    flipLane = true
                } else {
                    LanesStyleKit.drawLaneRightOnly(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, secondaryColor: secondaryColor, size: bounds.size)
                }
            } else if lane.indications.isSuperset(of: [.straightAhead, .sharpLeft]) || lane.indications.isSuperset(of: [.straightAhead, .left]) || lane.indications.isSuperset(of: [.straightAhead, .slightLeft]) {
                flipLane = true
                if !isValid {
                    if lane.indications == .slightLeft {
                        LanesStyleKit.drawLaneSlightRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    } else {
                        LanesStyleKit.drawLaneStraightRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    }
                    
                    alpha = invalidAlpha
                } else if maneuverDirection == .straightAhead {
                    LanesStyleKit.drawLaneStraightOnly(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, secondaryColor: secondaryColor, size: bounds.size)
                } else if maneuverDirection == .sharpRight || maneuverDirection == .right {
                    LanesStyleKit.drawLaneRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    flipLane = false
                } else if maneuverDirection == .slightRight {
                    LanesStyleKit.drawLaneSlightRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    flipLane = false
                } else {
                    LanesStyleKit.drawLaneRightOnly(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, secondaryColor: secondaryColor, size: bounds.size)
                }
            } else if lane.indications.description.components(separatedBy: ",").count >= 2 {
                // Hack:
                // Account for a configuation where there is no straight lane
                // but there are at least 2 indications.
                // In this situation, just draw a left/right arrow
                if maneuverDirection == .sharpRight || maneuverDirection == .right {
                    LanesStyleKit.drawLaneRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    flipLane = false
                } else if maneuverDirection == .slightRight {
                    LanesStyleKit.drawLaneSlightRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    flipLane = false
                } else {
                    LanesStyleKit.drawLaneRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    flipLane = true
                }
                alpha = isValid ? 1 : invalidAlpha
            } else if lane.indications.isSuperset(of: [.sharpRight]) || lane.indications.isSuperset(of: [.right]) || lane.indications.isSuperset(of: [.slightRight]) {
                if lane.indications == .slightRight {
                    LanesStyleKit.drawLaneSlightRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                } else {
                    LanesStyleKit.drawLaneRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                }
                flipLane = false
                alpha = isValid ? 1 : invalidAlpha
            } else if lane.indications.isSuperset(of: [.sharpLeft]) || lane.indications.isSuperset(of: [.left]) || lane.indications.isSuperset(of: [.slightLeft]) {
                if lane.indications == .slightLeft {
                    LanesStyleKit.drawLaneSlightRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                } else {
                    LanesStyleKit.drawLaneRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                }
                flipLane = true
                alpha = isValid ? 1 : invalidAlpha
            } else if lane.indications.isSuperset(of: [.straightAhead]) {
                LanesStyleKit.drawLaneStraight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                flipLane = false
                alpha = isValid ? 1 : invalidAlpha
            } else if lane.indications.isSuperset(of: [.uTurn]) {
                LanesStyleKit.drawLaneUturn(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                flipLane = false
                alpha = isValid ? 1 : invalidAlpha
            } else if lane.indications.isEmpty && isValid {
                // If the lane indication is `none` and the maneuver modifier has a turn in it,
                // show the turn in the lane image.
                if maneuverDirection == .sharpRight || maneuverDirection == .right || maneuverDirection == .slightRight {
                    if maneuverDirection == .slightRight {
                        LanesStyleKit.drawLaneSlightRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    } else {
                        LanesStyleKit.drawLaneRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    }
                    flipLane = false
                } else if maneuverDirection == .sharpLeft || maneuverDirection == .left || maneuverDirection == .slightLeft {
                    if maneuverDirection == .slightLeft {
                        LanesStyleKit.drawLaneSlightRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    } else {
                        LanesStyleKit.drawLaneRight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    }
                    flipLane = true
                } else {
                    LanesStyleKit.drawLaneStraight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                    flipLane = false
                }
            } else {
                LanesStyleKit.drawLaneStraight(frame: bounds, resizing: resizing, primaryColor: appropriatePrimaryColor, size: bounds.size)
                flipLane = false
                alpha = isValid ? 1 : invalidAlpha
            }
            
            transform = CGAffineTransform(scaleX: flipLane ? -1 : 1, y: 1)
        }
        
        #if TARGET_INTERFACE_BUILDER
            isValid = true
            LanesStyleKit.drawLane_right_only(primaryColor: appropriatePrimaryColor, secondaryColor: secondaryColor)
        #endif
    }
}
