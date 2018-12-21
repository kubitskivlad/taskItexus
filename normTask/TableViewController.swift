//
//  TableViewController.swift
//  normTask
//
//  Created by it0046 on 12/20/18.
//  Copyright © 2018 it0046. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Action
import NSObject_Rx

class TableViewController: UIViewController, BindableType {
    
//    @IBOutlet var titleView: UITextView!
//    @IBOutlet var okButton: UIBarButtonItem!
//    @IBOutlet var cancelButton: UIBarButtonItem!
    @IBAction func loginAction(_ sender: Any) {
        
    }
    
    var viewModel: TableViewModel!
    
    func bindViewModel() {
        
        
//        cancelButton.rx.action = viewModel.onCancel
//
//        okButton.rx.tap
//            .withLatestFrom(titleView.rx.text.orEmpty)
//            .subscribe(viewModel.onUpdate.inputs)
//            .disposed(by: self.rx.disposeBag)
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        titleView.becomeFirstResponder()
//    }
    
}
