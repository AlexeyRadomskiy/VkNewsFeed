//
//  FeedViewController.swift
//  VkNewsFeed
//
//  Created by Alexey on 24.04.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    private let networkService: Networking = NetworkService()
    private var fetcher: DataFetcher = NetworkDataFetcher(networking: NetworkService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        fetcher.getFeed { feedResponse in
            guard let feedResponse = feedResponse else { return }
            feedResponse.items.map { feedItem in
                print(feedItem.data)
            }
        }
    }
}
