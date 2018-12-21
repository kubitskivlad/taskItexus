//
//  Scene+ViewController.swift
//  normTask
//
//  Created by it0046 on 12/20/18.
//  Copyright © 2018 it0046. All rights reserved.
//

import UIKit

extension Scene {
    func viewController() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        switch self {
        case .entry(let viewModel):
            let nc = storyboard.instantiateViewController(withIdentifier: "EntryViewController") as! UINavigationController
            var vc = nc.viewControllers.first as! EntryViewController
            vc.bindViewModel(to: viewModel)
            return nc
        }
    }
}
