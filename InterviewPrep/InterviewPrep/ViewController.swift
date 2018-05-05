//
//  ViewController.swift
//  InterviewPrep
//
//  Created by Phyllis Wong on 5/4/18.
//  Copyright © 2018 Phyllis Wong. All rights reserved.
//

/*
 
 Given an array of arrays.
 For each element in the array create a row of boxes with one box for each item in the next array.
 
 Give this array:
 
 [[3,3,3], [2,2], [4,4,4,4], [1]]
 
 */

import UIKit

class ViewController: UIViewController {

    // Might be useful to pass the grid into the function!
    // Something like
 // func makeBoxes(grid: [[Int]]) { 
    func makeBoxes() {
        let grid = [[3,3,3], [2,2], [4,4,4,4], [1]]
        // These are the same, might be able to use one value
     // var yPos = padding
        let padding = CGFloat(20) // why not -> padding: CGFloat = 20 // Reads better for me. 
        var yPos: CGFloat = 20.0
        
        // Get the height of the grid
        // This is the height in rows not height in points I would have named this rows
        let h = CGFloat(grid.count)
        
        // Set the box height minus the margin and padding
        // This line seems a little long and hard to grok. It might not be problem.
        let height = (self.view.frame.height - ((h + CGFloat(1)) * 20)) / h
        
        for column in 0..<grid.count {
            for row in 0..<grid[column].count {
                
                // Set the width by the number of boxes on each row - margin and padding
                // This line is also long and hard to understand. Might not be a problem. 
                // then again it might add clarity or help in the future is this were broken into 
                // a couple lines with some intermediate vars. 
                let width = ((self.view.frame.width - padding) - CGFloat(grid[column].count * 20)) / CGFloat(grid[column].count)
                let xPos = (width + padding) * CGFloat(row) + padding
                let rect = CGRect(x: xPos, y: yPos, width: width, height: height)
        
                let box = UIView(frame: rect)
                box.backgroundColor = .lightGray
                self.view.addSubview(box)
            }
            
            // Set the position of the next row down
            yPos += height + padding
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeBoxes()
    }
    

}

