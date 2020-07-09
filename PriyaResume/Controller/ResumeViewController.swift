//
//  ViewController.swift
//  PriyaResume
//
//  Created by Priyadharshini Tamilarasan on 25/06/20.
//  Copyright © 2020 Priyadharshini Tamilarasan. All rights reserved.
//

import UIKit

class ResumeViewController: UIViewController {

    @IBOutlet weak var resumeTableView: UITableView!
    
    var chosenIdx: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resumeTableView.backgroundColor = .clear
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == K.Segues.resumeToDetail {
            if let destinationVC = segue.destination as? DetailViewController {
                
                destinationVC.titleLabel = K.Resume.headingTitle[chosenIdx!]
                
                switch chosenIdx {
                case 0:
                    destinationVC.rowArray = [K.Detail.snapshot]
                    destinationVC.sectionArray = [""]
                case 1:
                    destinationVC.rowArray = K.Detail.educationRow
                    destinationVC.sectionArray = K.Detail.educationSection
                case 2:
                    destinationVC.rowArray = K.Detail.workRow
                    destinationVC.sectionArray = K.Detail.workSection
                case 3:
                    destinationVC.rowArray = K.Detail.itRow
                    destinationVC.sectionArray = K.Detail.itSection
                case 4:
                    destinationVC.rowArray = [K.Detail.certRow]
                    destinationVC.sectionArray = [""]
                default:
                    destinationVC.rowArray = K.Detail.workRow
                    destinationVC.sectionArray = K.Detail.workSection
                }
                
            }
        }
    }

}

extension ResumeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return K.Resume.headingTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = resumeTableView.dequeueReusableCell(withIdentifier: K.Resume.resumeCellIdentifier) as! HeadingTableViewCell
        
        cell.headingLabel.text = K.Resume.headingTitle[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = .clear
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return K.Resume.rowHeight
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenIdx = indexPath.row
        performSegue(withIdentifier: K.Segues.resumeToDetail, sender: self)
    }
    
}

