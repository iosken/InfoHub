//
//  DataStore.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import Foundation

protocol DataStoreOutputFormat {
    var infoId: String { get }
    var title: String { get }
    var subTitle: String { get }
    var author: String { get }
    var siteLink: String { get }
    var image: String? { get } // link
}

struct DataStoreModel: DataStoreOutputFormat {
    var infoId: String
    var title: String
    var subTitle: String
    var author: String
    var siteLink: String
    var image: String?
}

class DataStore {
    static let shared = DataStore()
    
    private init() {}
    
    func getTenInfoForHub() -> [DataStoreModel] {
        var result: [DataStoreModel] = []
        for currentId in 1...10 {
            result.append(DataStoreModel(
                infoId: currentId.formatted(),
                title: "Абзац 1.10.32 de Finibus Bonorum et Malorum, написанный Цицероном в 45 году н.э.",
                subTitle: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
                author: "Цицерон",
                siteLink: "https://ru.lipsum.com",
                image: nil)
            )
        }
        
        return result
    }
}
