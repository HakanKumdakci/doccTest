//
//  File.swift
//  doccTest
//
//  Created by Hakan Kumdakçı on 19.03.2024.
//

import Foundation
import UIKit

/**
 A `ViewController` that demonstrates various types of comments including documentation comments, inline comments, and block comments. test123

 This class is responsible for managing the user interface of a simple application that showcases text display and a button action.

 - Author: Your Name
 - Version: 1.0
 */
class ExampleViewController: UIViewController {
    
    // MARK: - Properties
    
    /// The main label used to display text.
    /// This label is centrally placed in the view controller.
    private var mainLabel: UILabel!
    
    // MARK: - View Lifecycle
    
    /**
     Called after the controller's view is loaded into memory.
     dwd
     It's responsible for initial setup of the UI components and any necessary configuration that needs to be done right after the view loads. test 1123
     ![Alt text](testImg)
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setting up the main view
        view.backgroundColor = .white
        setupMainLabel()
        setupActionButton()
    }
    
    /// Eat the provided specialty sloth food.
    ///
    /// Sloths love to eat while they move very slowly through their rainforest
    /// habitats. They're especially happy to consume leaves and twigs, which they
    /// digest over long periods of time, mostly while they sleep.
    ///
    /// When they eat food, a sloth's `energyLevel` increases by the food's `energy`.
    ///
    /// - Parameters:
    ///   - food: The food for the sloth to eat.
    ///   - quantity: The quantity of the food for the sloth to eat.
    ///
    /// - Returns: The sloth's energy level after eating.
    ///
    /// - Throws: `SlothError.tooMuchFood` if the quantity is more than 100. Something updated
    func testFunction() {
        
    }
    
    // MARK: - Setup Methods
    
    /**
     Sets up the main label with default text.
     
     This method demonstrates how to setup UI components programmatically including setting constraints without Auto Layout.
     */
    private func setupMainLabel() {
        mainLabel = UILabel()
        mainLabel.text = "Hello, World!"
        mainLabel.textAlignment = .center
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainLabel)
        
        // Positioning the label in the center of the view
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    /**
     Creates and sets up an action button.
     
     Demonstrates creating a button that responds to user interaction by changing the text of the main label.
     */
    private func setupActionButton() {
        let actionButton = UIButton(type: .system)
        actionButton.setTitle("Change Text", for: .normal)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(actionButton)
        
        // Positioning the button below the main label
        actionButton.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 20).isActive = true
        actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // Adding action to the button
        actionButton.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
    }
    
    // MARK: - Actions
    
    /**
     Responds to the action button tap.
     
     This method is triggered when the action button is tapped and updates the main label's text to a new value.
     */
    @objc private func actionButtonTapped() {
        // Update the main label's text
        mainLabel.text = "Text Changed!"
    }
}
