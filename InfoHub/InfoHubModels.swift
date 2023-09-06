//
//  InfoHubModels.swift
//  InfoHub
//
//  Created by Yuri Volegov on 01.09.2023.
//

import Foundation

enum InfoHub {
    
    // MARK: - ShowInfo Use Case
    enum ShowInfo {
        
        struct Response {
            let infoNewsCount: Int?
            let lastInfoTitle: String?
        }
        
        struct ViewModel {
            let infoNewsCount: String?
            let lastInfoTitle: String?
        }
        
    }
    
}
