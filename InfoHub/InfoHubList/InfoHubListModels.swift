//
//  InfoHubListModels.swift
//  InfoHub
//
//  Created by Yuri Volegov on 04.09.2023.
//

import Foundation

protocol InfoHubListCellViewModelProtocol {
    var infoId: Int { get }
    var infoTitle: String { get }
    var infoText: String { get }
    var infoAutor: String { get }
    
    init(infoHubSubject: InfoHubSubject)
}

enum InfoHubList {
    
    // MARK: - ShowInfoHubList Usecase
    enum ShowInfoHubList {
        struct Response {
            let infoHubSubjects: [InfoHubSubject]
        }
        
        struct viewModel {
            struct InfoHubListCellViewModel: InfoHubListCellViewModelProtocol {
                var infoId: Int {
                    Int(infoHubSubject.id) ?? 0
                }
                var infoTitle: String {
                    infoHubSubject.title
                }
                var infoText: String {
                    infoHubSubject.subTitle
                }
                var infoAutor: String {
                    infoHubSubject.author
                }
                
                private let infoHubSubject: InfoHubSubject
                
                init(infoHubSubject: InfoHubSubject) {
                    self.infoHubSubject = infoHubSubject
                }
            }
        
        let rows: [InfoHubListCellViewModelProtocol]
        }
    }
    
}
