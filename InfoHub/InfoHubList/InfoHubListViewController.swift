//
//  InfoHubListViewController.swift
//  InfoHub
//
//  Created by Yuri Volegov on 29.08.2023.
//

import UIKit

protocol InfoHubListDisplayLogic: AnyObject {
    func displayInfo(viewModel: InfoHubList.ShowInfoHubList.viewModel)
}

final class InfoHubListViewController: UITableViewController {
    
    // MARK: - Public vars
    var infoHubListRouter: InfoHubListRoutingLogic?
    var infoHubListInteractor: InfoHubListBusinessLogic?
    
    var rows: [InfoHubListCellViewModelProtocol] = []
    
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
    }
    
    // MARK: - TableView data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellViewModel = rows[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: InfoHubListCell.identifier,
            for: indexPath
        ) as? InfoHubListCell else {
            return UITableViewCell()
        }
        
        cell.delegate = self
        cell.setup(data: cellViewModel)
        
        return cell
    }
    
    // MARK: - TableView delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

// MARK: InfoHubListCellDelegate
extension InfoHubListViewController: InfoHubListCellDelegate {
    func infoHubListCellTaped(with id: Int) {
        infoHubListRouter?.navigateToListDetails(infoHubCellID: id)
    }
}

// MARK: InfoHubListDisplayLogic
extension InfoHubListViewController: InfoHubListDisplayLogic {
    func displayInfo(viewModel: InfoHubList.ShowInfoHubList.viewModel) {
        rows = viewModel.rows
        tableView.reloadData()
    }
}
