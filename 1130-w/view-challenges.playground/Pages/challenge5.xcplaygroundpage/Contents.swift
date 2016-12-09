import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 400, height: 200)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor


/*:
 **Task**: Add two `UIView`s to the `canvas`. The positioning and size of the two views have the following requirements:
 
 - the **blue** view should have a _margin_ of 20 points each to the _top_ and to the _bottom_ edge; it has no margin on the _leading_ (left) edge; its `width` should further be one fourth of the `width` of the `canvas`
 - the **green** view has no _margin_ to the _trailing_ (right) edge; its `width` should further be half the `width` of the `canvas` and its `height` should be half the `height` of the **blue** view (not the `canvas`); on the y-axis it should have the same _center_ as **blue**
 
 ![Challenge 5](./challenge5.png "Challenge 5")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
/*let margin = 20
let blueWidth = canvas.frame.size.width / 4
let blueHeight = canvas.frame.size.height - CGFloat(margin * 2)
let blueFrame = CGRect(x: 0, y: CGFloat(margin), width: blueWidth, height: blueHeight)

let blueView = UIView(frame: blueFrame)
blueView.backgroundColor = .blue
canvas.addSubview(blueView)

let greenWidth = canvas.frame.size.width / 2
let greenHeight = blueView.frame.size.height / 2
let greenX = canvas.frame.size.width - greenWidth
let centerY = blueView.center.y
let greenFrame = CGRect(x: greenX, y: 0, width: greenWidth, height: greenHeight)

let greenView = UIView(frame: greenFrame)
greenView.backgroundColor = .green
greenView.center.y = centerY
canvas.addSubview(greenView)
*/

// Second implementation
let blueView = UIView(frame: CGRect.zero)
blueView.translatesAutoresizingMaskIntoConstraints = false
blueView.backgroundColor = .blue
canvas.addSubview(blueView)
//
let margin: CGFloat = 20
NSLayoutConstraint(item: blueView, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: (-margin-margin)).isActive = true
NSLayoutConstraint(item: blueView, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/4, constant: 0).isActive = true
NSLayoutConstraint(item: blueView, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: margin).isActive = true
NSLayoutConstraint(item: blueView, attribute: .bottom, relatedBy: .equal, toItem: canvas, attribute: .bottom, multiplier: 1, constant: margin).isActive = true

let greenView = UIView(frame: CGRect.zero)
greenView.translatesAutoresizingMaskIntoConstraints = false
greenView.backgroundColor = .green
canvas.addSubview(greenView)
//
NSLayoutConstraint(item: greenView, attribute: .trailing, relatedBy: .equal, toItem: canvas, attribute: .trailing, multiplier: 1, constant: 0).isActive = true
NSLayoutConstraint(item: greenView, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 0.5, constant: 0).isActive = true
NSLayoutConstraint(item: greenView, attribute: .height, relatedBy: .equal, toItem: blueView, attribute: .height, multiplier: 0.5, constant: 0).isActive = true
NSLayoutConstraint(item: greenView, attribute: .centerY, relatedBy: .equal, toItem: blueView, attribute: .centerY, multiplier: 1, constant: 0).isActive = true


