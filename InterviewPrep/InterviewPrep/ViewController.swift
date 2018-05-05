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

    // Get the initial width and height
    lazy var width = self.view.frame.width - 20
    lazy var height = self.view.frame.height - 20
    lazy var xPos: CGFloat = 20.0
    lazy var yPos: CGFloat = 20.0
    
    
    func makeBoxes() {
        let grid = [[3,3,3], [2,2], [4,4,4,4], [1]]
        self.height = (self.view.frame.height / CGFloat(grid.count)) - 30
        
        // 0, 1, 2, 3
        for column in 0..<grid.count {
            
            for row in 0..<grid[column].count {

                let width = (self.view.frame.width / CGFloat(grid[column].count)) - 40
                let xPos = (width * CGFloat(row)) + 20
                let rect = CGRect(x: xPos, y: yPos, width: width, height: height)
        
                let box = UIView(frame: rect)
                box.backgroundColor = .lightGray
                self.view.addSubview(box)
            }
            
            yPos += height + CGFloat(20)
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

