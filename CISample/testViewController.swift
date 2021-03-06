//
//  testViewController.swift
//  CISample
//
//  Created by faifo on 5/5/16.
//  Copyright (c) 2016 od. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol testViewControllerInput
{
  func displaySomething(viewModel: testViewModel)
}

protocol testViewControllerOutput
{
  func doSomething(request: testRequest)
}

class testViewController: UIViewController, testViewControllerInput
{
  var output: testViewControllerOutput!
  var router: testRouter!
  
  // MARK: Object lifecycle
  
  override func awakeFromNib()
  {
    super.awakeFromNib()
    testConfigurator.sharedInstance.configure(self)
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    doSomethingOnLoad()
  }
  
  // MARK: Event handling
  
  func doSomethingOnLoad()
  {
    // NOTE: Ask the Interactor to do some work
    
    let request = testRequest()
    output.doSomething(request)
  }
  
  // MARK: Display logic
  
  func displaySomething(viewModel: testViewModel)
  {
    // NOTE: Display the result from the Presenter
    
    // nameTextField.text = viewModel.name
  }
}
