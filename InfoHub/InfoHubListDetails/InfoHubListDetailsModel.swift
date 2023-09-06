//
//  InfoHubListDetailsModel.swift
//  InfoHub
//
//  Created by Yuri Volegov on 05.09.2023.
//

import Foundation

enum InfoHubListDetails {
    
    enum ShowInfoHubListDetails {
        
        struct Response {
            let infoHubSubject: InfoHubSubject
        }
        
        struct ViewModel {
            let title: String
            let text: String
        }
        
    }
    
}
