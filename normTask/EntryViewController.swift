//
//  EntryViewController.swift
//  normTask
//
//  Created by it0046 on 12/20/18.
//  Copyright © 2018 it0046. All rights reserved.
//

import Foundation
import UIKit
import RxSwift


class EntryViewController: UIViewController, BindableType {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    
    
    var viewModel: EntryViewModel!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createViewModelBinding();
        createCallbacks()
    }
    
    func createViewModelBinding() {
        
        usernameTextField.rx.text.orEmpty
            .bind(to: viewModel.usernameViewModel.data)
            .disposed(by: disposeBag)
        
        passwordTextField.rx.text.orEmpty
            .bind(to: viewModel.passwordViewModel.data)
            .disposed(by: disposeBag)
        
        signInButton.rx.tap.do(onNext:  { [unowned self] in
            self.usernameTextField.resignFirstResponder()
            self.passwordTextField.resignFirstResponder()
        }).subscribe(onNext: { [unowned self] in
            if self.viewModel.validateCredentials() {
                self.viewModel.loginUser()
            }
        }).disposed(by: disposeBag)
        
    }
    
    func createCallbacks () {
        
        // success
        viewModel.isSuccess.asObservable()
            .bind{ value in
                NSLog("Successfull")
            }.disposed(by: disposeBag)
        
        // errors
        viewModel.errorMsg.asObservable()
            .bind { errorMessage in
                // Show error
                NSLog("Failure")
            }.disposed(by: disposeBag)
        
    }
    
    func bindViewModel() {
        
    }
}
