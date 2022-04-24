//
//  FeedViewController.swift
//  VkNewsFeed
//
//  Created by Alexey on 24.04.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    private let networkService = NetworkService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        networkService.getFeed()
    }
}
