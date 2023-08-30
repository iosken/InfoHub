//
//  InfoHubListViewController.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import UIKit

protocol InfoHubListDisplayLogic: AnyObject {
    func display(data: [InfoHubListCellViewModel])
}

final class InfoHubListViewController: UITableViewController {
    
    // MARK: - Public vars
    var infoHubListRouter: InfoHubListRoutingLogic?
    var infoHubListInteractor: InfoHubListBusinessLogic?
    
    var dataToDisplay: [InfoHubListCellViewModel] = []
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nil)
        
        InfoHubListConfigurator.shared.configure(with: self)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        InfoHubListConfigurator.shared.configure(with: self)
    }

    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "InfoHubListCell", bundle: nil), forCellReuseIdentifier: InfoHubListCell.identifier)
        
        infoHubListInteractor?.fetchData()
        
        print(dataToDisplay.last?.infoText ?? "no data coming")
        
        print("data must be loaded")
    }

    // MARK: - TableView data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataToDisplay.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(
                withIdentifier: InfoHubListCell.identifier,
                for: indexPath
            ) as? InfoHubListCell
        else { return UITableViewCell() }
        
        cell.setup(data: dataToDisplay[indexPath.row])

        return cell
    }
    
//    // MARK: - TableView delegate
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        200
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension InfoHubListViewController: InfoHubListDisplayLogic {
    
    func display(data: [InfoHubListCellViewModel]) {
        dataToDisplay.removeAll()
        dataToDisplay.append(contentsOf: data)
        tableView.reloadData()
    }
    
}
