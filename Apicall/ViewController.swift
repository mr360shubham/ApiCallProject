//
//  ViewController.swift
//  Apicall
//
//  Created by Shubam Vijay Yeme on 15/07/24.
//

import UIKit

class ViewController: UIViewController {
    var viewModel = APIViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.callApi { result in
            switch result {
                
            case .success(let movieResponse):
                print(movieResponse)
            case .failure(let error):
                print(error)
            }
        }
    }
    
}

