import UIKit

public protocol Jiggly: class {
    func startBouncing()
    func stopBouncing()

    var transform: CGAffineTransform { get set }
    var layer: CALayer { get }
}

public extension Jiggly {

    fileprivate func degreesToRadians(_ degrees: Double) -> Double {
        return Double.pi * degrees / 180.0
    }

    func startBouncing() {
        let animationRotationDegrees = 1.25
        let random = Double(arc4random_uniform(500))
        let r = (random / 500.0) + 0.5

        let leftWobble = CGAffineTransform(rotationAngle: CGFloat(degreesToRadians((animationRotationDegrees * -1.0) - r)))
        let rightWobble = CGAffineTransform(rotationAngle: CGFloat(degreesToRadians(animationRotationDegrees + r)))

        transform = leftWobble
        layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)

        let options = UIView.AnimationOptions(arrayLiteral: .allowUserInteraction, .repeat, .autoreverse)
        UIView.animate(withDuration: 0.15, delay: 0.0, options: options, animations: {
            self.transform = rightWobble
        }, completion: { _ in

        })
    }

    func stopBouncing() {
        layer.removeAllAnimations()
        transform = .identity
    }
}
