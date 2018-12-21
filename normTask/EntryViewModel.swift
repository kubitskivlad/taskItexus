//
//  EntryViewModel.swift
//  normTask
//
//  Created by it0046 on 12/20/18.
//  Copyright © 2018 it0046. All rights reserved.
//

import Foundation
import RxSwift
import Action

struct EntryViewModel {
    
    let model : LoginModel = LoginModel()
    let disposebag = DisposeBag()
    let sceneCoordinator: SceneCoordinatorType
    
    // Initialise ViewModel's
    let usernameViewModel = EmailIdViewModel()
    let passwordViewModel = PasswordViewModel()
    
    // Fields that bind to our view's
    let isSuccess : BehaviorRelay<Bool> = BehaviorRelay<Bool>(value: false)
    let isLoading : Variable<Bool> = Variable(false)
    let errorMsg : Variable<String> = Variable("")
    
    func validateCredentials() -> Bool{
        return usernameViewModel.validateCredentials() && passwordViewModel.validateCredentials();
    }
    
    init(coordinator: SceneCoordinatorType) {
        self.sceneCoordinator = coordinator
    }
    
    func loginUser(){
        
        // Initialise model with filed values
        model.email = usernameViewModel.data.value
        model.password = passwordViewModel.data.value
        
        self.isLoading.value = true
        
//        let result = Request(email: model.email , password : model.password)
//        ApiService.execute(result)
//            .subscribe(onNext : {response in
//                self.isLoading.value = false
//                self.isSuccess.value = true
//            }, onError : { error in
//                self.isLoading.value = false
//                self.errorMsg.value = error.message
//            }).disposed(by : disposebag)
        self.isSuccess.value = true
    }
}
