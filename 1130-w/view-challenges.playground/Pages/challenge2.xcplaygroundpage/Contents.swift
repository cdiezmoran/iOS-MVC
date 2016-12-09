
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have a third of the `canvas`' `width` and `height`. 
 
 
 ![Challenge 2](./challenge2.png "Challenge 2")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//First implementation
let viewWidth = canvas.frame.size.width / 3
let viewHeight = canvas.frame.size.height / 3
/*let redView1 = UIView(frame: CGRect(x: 0, y: 0, width: viewWidth, height: viewHeight))
redView1.backgroundColor = .red
canvas.addSubview(redView1)

let redView2 = UIView(frame: CGRect(x: viewWidth, y: viewHeight, width: viewWidth, height: viewHeight))
redView2.backgroundColor = .red
canvas.addSubview(redView2)

let redView3 = UIView(frame: CGRect(x: viewWidth * 2, y: viewHeight * 2, width: viewWidth, height: viewHeight))
redView3.backgroundColor = .red
canvas.addSubview(redView3)
*/

// Secon implementation
let redView = UIView(frame: CGRect.zero)
redView.translatesAutoresizingMaskIntoConstraints = false
redView.backgroundColor = .red
canvas.addSubview(redView)

NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: 0).isActive = true
NSLayoutConstraint(item: redView, attribute: .left, relatedBy: .equal, toItem: canvas, attribute: .left, multiplier: 1, constant: 0).isActive = true

let redView2 = UIView(frame: CGRect.zero)
redView2.translatesAutoresizingMaskIntoConstraints = false
redView2.backgroundColor = .red
canvas.addSubview(redView2)

NSLayoutConstraint(item: redView2, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView2, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView2, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: viewHeight).isActive = true
NSLayoutConstraint(item: redView2, attribute: .left, relatedBy: .equal, toItem: canvas, attribute: .left, multiplier: 1, constant: viewWidth).isActive = true

let redView3 = UIView(frame: CGRect.zero)
redView3.translatesAutoresizingMaskIntoConstraints = false
redView3.backgroundColor = .red
canvas.addSubview(redView3)

NSLayoutConstraint(item: redView3, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView3, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: redView3, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: viewHeight*2).isActive = true
NSLayoutConstraint(item: redView3, attribute: .left, relatedBy: .equal, toItem: canvas, attribute: .left, multiplier: 1, constant: viewWidth*2).isActive = true









