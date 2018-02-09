//  ViewController.swift
//  VendingMachine
//  Created by Pasan Premaratne on 12/1/16.
//  Copyright © 2016 Treehouse Island, Inc. All rights reserved.

import UIKit

fileprivate let reuseIdentifier = "vendingItem"
fileprivate let screenWidth = UIScreen.main.bounds.width

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var quantityStepper: UIStepper!
    
    
    let vendingMachine: VendingMachine
    var currentSelection: VendingSelection?
    
    required init?(coder aDecoder: NSCoder) {
        do {
            let dictionary = try PlistConverter.dictionary(fromFile: "VendingInventory", ofType: "plist")
            let inventory = try inventoryUnarchiver.vendingInventory(fromDictionary: dictionary)
            self.vendingMachine = FoodVendingMachine(inventory: inventory)
        } catch let error {
            fatalError("\(error)") // If we reach this block, app will crash
        }
        super.init(coder: aDecoder) // Fixes this error : "self used before super.init call"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupCollectionViewCells()
        
        balanceLabel.text = "$\(vendingMachine.amountDeposited)"
        totalLabel.text = "$00.00"
        priceLabel.text = "$0.00"
        quantityLabel.text = "1"
    }

    
    // MARK: - Setup

    func setupCollectionViewCells() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
        
        let padding: CGFloat = 10
        let itemWidth = screenWidth/3 - padding
        let itemHeight = screenWidth/3 - padding
        
        layout.itemSize = CGSize(width: itemWidth, height: itemHeight)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        
        collectionView.collectionViewLayout = layout
    }
    
    // MARK: - Vending Machine
    @IBAction func purchase() {
        if let currentSelection = currentSelection {
            do {
                try vendingMachine.vend(selection: currentSelection, quantity: Int(quantityStepper.value))
                updateDisplayWith(balance: vendingMachine.amountDeposited, totalPrice: 0.0, itemPrice: 0, itemQuantity: 1)
            } catch VendingMachineError.outOfStock {
                showAlertWith(title: "Out of Stock", message: "This item is unavailable, please make another selection", style: .alert)
                
            } catch VendingMachineError.invalidSelection {
                // FIXME: Error handling code
                showAlertWith(title: "Invalid Selection", message: "Please make another selection", style: .alert)
                
            } catch VendingMachineError.insufficientFunds(let required) {
                // FIXME: Error handling code
                let message = "You need \(required) to complete the transaction"
                showAlertWith(title: "Insufficient funds", message: message, style: .alert)
            } catch let error {
                fatalError("\(error)")
            }
            
            if let indexPath = collectionView.indexPathsForSelectedItems?.first {
                collectionView.deselectItem(at: indexPath, animated: true)
                updateCell(having: indexPath, selected: false)
            }
            
        } else {
            // FIXME: Alert user to no selection
            
        }
    }
    
    func updateDisplayWith(balance: Double? = nil, totalPrice: Double? = nil, itemPrice: Double? = nil, itemQuantity: Int? = nil) {
        
        if let balanceValue = balance {
           balanceLabel.text = "$\(balanceValue)"
        }
        if let totalValue = totalPrice {
            totalLabel.text = "$\(totalValue)"
        }
        if let itemValue = itemPrice {
            priceLabel.text = "$\(itemValue)"
        }
        if let quantityValue = itemQuantity {
            quantityLabel.text = "\(quantityValue)"
        }
    }
    
    func updateTotalPrice(for item: VendingItem) {
        
        updateDisplayWith(totalPrice: item.price * quantityStepper.value)
    }
    
    
    @IBAction func updateQuantity(_ sender: UIStepper) {
        
        quantityLabel.text = "\(Int(quantityStepper.value))"
        
        if let currentSelection = currentSelection, let item = vendingMachine.item(forSelection: currentSelection) {
            updateTotalPrice(for: item)
        }
    }
    
    // MARK: Alert View Controller
    func showAlertWith(title: String, message: String, style: UIAlertControllerStyle = .alert) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: dismissAlert)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func dismissAlert(sender: UIAlertAction) -> Void {
        // reset all the values to the default values
        updateDisplayWith(balance: 0, totalPrice: 0, itemPrice: 0, itemQuantity: 1)
    }
    
    
    @IBAction func depositFunds() {
        vendingMachine.deposit(5.0)
        updateDisplayWith(balance: vendingMachine.amountDeposited)
    }
    
    
    // MARK: UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // sets the display to show number of items in the selection
        return vendingMachine.selection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? VendingItemCell else { fatalError() }
        
        let item = vendingMachine.selection[indexPath.row]
        cell.iconView.image = item.icon()
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        updateCell(having: indexPath, selected: true)
        
        // Update the quantity each time a new item is selected
        quantityStepper.value = 1
        quantityLabel.text = "1"
        totalLabel.text = "0.00"
        
        // Shows which item has been selected
        currentSelection = vendingMachine.selection[indexPath.row]
        if let currentSelection = currentSelection, let item = vendingMachine.item(forSelection: currentSelection) {
            priceLabel.text = "$\(item.price)"
            totalLabel.text = "$\(item.price * quantityStepper.value)"
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        updateCell(having: indexPath, selected: false)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        updateCell(having: indexPath, selected: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        updateCell(having: indexPath, selected: false)
    }
    
    func updateCell(having indexPath: IndexPath, selected: Bool) {
        
        let selectedBackgroundColor = UIColor(red: 41/255.0, green: 211/255.0, blue: 241/255.0, alpha: 1.0)
        let defaultBackgroundColor = UIColor(red: 27/255.0, green: 32/255.0, blue: 36/255.0, alpha: 1.0)
        
        if let cell = collectionView.cellForItem(at: indexPath) {
            cell.contentView.backgroundColor = selected ? selectedBackgroundColor : defaultBackgroundColor
        }
    }
}

