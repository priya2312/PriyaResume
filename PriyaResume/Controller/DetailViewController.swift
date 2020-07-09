//
//  DetailViewController.swift
//  PriyaResume
//
//  Created by Priyadharshini Tamilarasan on 09/07/20.
//  Copyright © 2020 Priyadharshini Tamilarasan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailTableView: UITableView!
    
    var rowArray: [[String]] = []
    var sectionArray: [String] = []
    var titleLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationItem.title = titleLabel
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowArray[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = detailTableView.dequeueReusableCell(withIdentifier: K.Detail.detailCellIdentifier) as! HeadingTableViewCell
        
        cell.headingLabel.text = rowArray[indexPath.section][indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("DetailSectionHeaderTableViewCell", owner: self, options: nil)?.first as! DetailSectionHeaderTableViewCell
        
        headerView.labelText.text = sectionArray[section]
        
        return headerView.contentView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if sectionArray.count > 1 {
            return 100
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        footerView.backgroundColor = UIColor.init(named: "DarkGrey")
        return footerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if sectionArray.count > 1 {
            return 1
        } else {
            return 0
        }
    }
    
}
