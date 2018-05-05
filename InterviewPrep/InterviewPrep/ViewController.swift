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

    
    func makeBoxes() {
        let grid = [[3,3,3], [2,2], [4,4,4,4], [1]]
        let padding = CGFloat(20)
        var yPos: CGFloat = 20.0
        
        // Get the height of the grid
        let h = CGFloat(grid.count)
        
        // Set the box height minus the margin and padding
        let height = (self.view.frame.height - ((h + CGFloat(1)) * 20)) / h
        
        for column in 0..<grid.count {
            for row in 0..<grid[column].count {
                
                // Set the width by the number of boxes on each row - margin and padding
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
    
    // MARK: - Lifecycle
    
    // Add the container to the screen before the view appears
    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeBoxes()
    }
    

}

