import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .gray, .purple, .yellow, .red, .orange, .lightGray, .white, .blue]

/*:
 **Task**: Create an even grid on the `canvas`, made out of squares that each are one third as wide and one third as high as the `canvas`.Use the same colors as in the picture (they are already defined for you above in the `colors` array):
 
 ![Challenge 4](./challenge4.png "Challenge 4")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
// First implementation
let viewWidth = canvas.frame.size.width / 3
let viewHeight = canvas.frame.size.height / 3

for i in 0..<colors.count {
  let view = UIView(frame: CGRect(x: viewWidth * CGFloat(i % 3), y: 0, width: viewWidth, height: viewHeight))
  view.backgroundColor = colors[i]
  
  if i <= 2 {
    view.frame.origin.y = 0
  }
  else if i > 2 && i <= 5 {
    view.frame.origin.y = viewHeight
  }
  else if i > 5 {
    view.frame.origin.y = viewHeight * 2
  }
  canvas.addSubview(view)
}

// Second implementation
/*for i in 0..<colors.count {
 let view = UIView(frame: CGRect.zero)
 view.translatesAutoresizingMaskIntoConstraints = false
 view.backgroundColor = colors[i]
 canvas.addSubview(view)
 
 NSLayoutConstraint(item: view, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
 NSLayoutConstraint(item: view, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
 NSLayoutConstraint(item: view, attribute: .left, relatedBy: .equal, toItem: canvas, attribute: .left, multiplier: 1, constant: viewWidth * CGFloat(i % 3)).isActive = true
 
 if i <= 2 {
 NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: 0).isActive = true
 }
 else if i > 2 && i <= 5 {
 NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: viewHeight).isActive = true
 }
 else if i > 5 {
 NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: viewHeight * 2).isActive = true
 }
 
 }*/
