//
//  SettingsTableViewController-SetupTextFieldUI.swift
//  Kegal Timer
//
//  Created by Alex Marchant on 27/11/2020.
//  Copyright © 2020 Alex Marchant. All rights reserved.
//

import Foundation
import MaterialComponents.MaterialTextFields

extension SettingsTableViewController {
    
    func setupTextFields() {
        
        self.hideKeyboardWhenTappedAround()
        
        repsPerSetTextBox.delegate = self
        repLengthTextBox.delegate = self
        restLengthTextBox.delegate = self
        
        repsPerSetTextBox.tintColor = .white
        repsPerSetTextBox.textColor = .white
        repLengthTextBox.tintColor = .white
        repLengthTextBox.textColor = .white
        restLengthTextBox.tintColor = .white
        restLengthTextBox.textColor = .white
        
        repsPerSetTextBox.setupToolbar(view: self.view)
        repLengthTextBox.setupToolbar(view: self.view)
        restLengthTextBox.setupToolbar(view: self.view)
        
        repsPerSetTextBox.delegate = self
        repLengthTextBox.delegate = self
        restLengthTextBox.delegate = self

        repsPerSetTextBoxController = MDCTextInputControllerOutlined(textInput: repsPerSetTextBox)
        repsPerSetTextBoxController.setupKTTextFieldController()
        repsPerSetTextBoxController.placeholderText = localizedString(forKey: "reps_per_set")
        repsPerSetTextBox.keyboardType = .numberPad
        
        repLengthTextBoxController = MDCTextInputControllerOutlined(textInput: repLengthTextBox)
        repLengthTextBoxController.setupKTTextFieldController()
        repLengthTextBoxController.placeholderText = "\(localizedString(forKey: "rep_length")) (\(localizedString(forKey: "seconds")))"
        repLengthTextBox.keyboardType = .numberPad
        
        restLengthTextBoxController = MDCTextInputControllerOutlined(textInput: restLengthTextBox)
        restLengthTextBoxController.setupKTTextFieldController()
        restLengthTextBoxController.placeholderText = "\(localizedString(forKey: "rest_length")) (\(localizedString(forKey: "seconds")))"
        restLengthTextBox.keyboardType = .numberPad
    }
}
