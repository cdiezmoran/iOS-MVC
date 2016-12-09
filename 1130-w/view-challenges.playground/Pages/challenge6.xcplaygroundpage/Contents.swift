import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 400, height: 200)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor


/*:
 **Task**: Add two `UIView`s to the `canvas`. The positioning and size of the two views have the following requirements:
 
 - the **blue** view should have a _margin_ of 20 points each to the _top_ and to the _leading_ (left) edge; it should further be square and have half the `height` as the `canvas`
 - the **green** view should have a _margin_ of 20 points each to the _bottom_ and to the _trailing_ (right) edge; it should further be square and have half the `height` as the `canvas`
 
 ![Challenge 6](./challenge6.png "Challenge 6")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//let squareSize = canvas.frame.size.height / 2
let margin: CGFloat = 20

/*let blueFrame = CGRect(x: margin, y: margin, width: squareSize, height: squareSize)

let blueView = UIView(frame: blueFrame)
blueView.backgroundColor = .blue
canvas.addSubview(blueView)

let greenY = canvas.frame.size.height - squareSize - margin
let greenX = canvas.frame.size.width - squareSize - margin

let greenFrame = CGRect(x: greenX, y: greenY, width: squareSize, height: squareSize)

let greenView = UIView(frame: greenFrame)
greenView.backgroundColor = .green
canvas.addSubview(greenView)*/

// Second implementation

let blueView = UIView(frame: CGRect.zero)
blueView.translatesAutoresizingMaskIntoConstraints = false
blueView.backgroundColor = .blue
canvas.addSubview(blueView)

NSLayoutConstraint(item: blueView, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/2, constant: 0).isActive = true
NSLayoutConstraint(item: blueView, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/2, constant: 0).isActive = true
NSLayoutConstraint(item: blueView, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: margin).isActive = true
NSLayoutConstraint(item: blueView, attribute: .left, relatedBy: .equal, toItem: canvas, attribute: .left, multiplier: 1, constant: margin).isActive = true

let greenView = UIView(frame: CGRect.zero)
greenView.translatesAutoresizingMaskIntoConstraints = false
greenView.backgroundColor = .green
canvas.addSubview(greenView)

NSLayoutConstraint(item: greenView, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/2, constant: 0).isActive = true
NSLayoutConstraint(item: greenView, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/2, constant: 0).isActive = true
NSLayoutConstraint(item: greenView, attribute: .bottom, relatedBy: .equal, toItem: canvas, attribute: .bottom, multiplier: 1, constant: -margin).isActive = true
NSLayoutConstraint(item: greenView, attribute: .right, relatedBy: .equal, toItem: canvas, attribute: .right, multiplier: 1, constant: -margin).isActive = true



