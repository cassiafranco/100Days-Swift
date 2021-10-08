//
//  ViewController.swift
//  Project7
//
//  Created by cassia franco on 06/08/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var petitions = [Petition]()
    var  filteredPetitions = [Petition]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        performSelector(inBackground: #selector(fetchJson), with: nil)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Credits", style: .plain, target: self, action: #selector(showCredits))
        
        let filter = UIBarButtonItem(title: "Filter", style: .plain, target: self, action: #selector(filterPetitions))
        let reset = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(resetFilter))
        reset.tintColor = UIColor.red
        
        reset.isEnabled = false
        
        navigationItem.leftBarButtonItems = [filter,reset]
        
    }
    
    @objc func fetchJson(){
        var urlString:String
        
        if navigationController?.tabBarItem.tag == 0{
            //urlString = "https://api.whitehouse.gov/v1/petitions.json?limit=100"
            urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        } else {
            //urlString = "https://api.whitehouse.gov/v1/petitions.json?signatureCountFloor=10000&limit=100"
            urlString = "https://www.hackingwithswift.com/samples/petitions-2.json"
        }
        
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                parse(json: data)
                return
            }
        }
        performSelector(onMainThread: #selector(showError), with: nil, waitUntilDone: false)
    }
    
    @objc func showError() {
        let ac = UIAlertController(title: "Loading error", message: "There was a problem loading the feed/ please check your connection and try again", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonPetitions = try? decoder.decode(Petitions.self, from: json) {
            petitions = jsonPetitions.results
            tableView.performSelector(onMainThread: #selector(UITableView.reloadData), with: nil, waitUntilDone: false)
        } else {
            performSelector(onMainThread: #selector(showError), with: nil, waitUntilDone: false)
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredPetitions.isEmpty ? petitions.count : filteredPetitions.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //        let petition = petitions[indexPath.row]
        //        cell.textLabel?.text = petition.title
        //        cell.detailTextLabel?.text = petition.body
        
        let petiton : Petition
        if filteredPetitions.isEmpty{
            petiton = petitions[indexPath.row]
        }else {
            petiton = filteredPetitions[indexPath.row]
        }
        cell.textLabel?.text = petiton.title
        cell.detailTextLabel?.text = petiton.body
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.detailItem = petitions[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func showCredits(){
        let ac = UIAlertController(title: "Credits", message: "These petitions come from the \n We The People API of the Whitehouse", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(ac, animated: true)
    }
    @objc func filterPetitions(){
        let ac = UIAlertController(title: "Filter Petitions", message: "Enter a Keyword" , preferredStyle: .alert)
        ac.addTextField()
        
        let filterAction = UIAlertAction(title: "Submit", style: .default){ [weak ac, self] _ in
            guard let keyword = ac?.textFields?[0].text else {return}
            self.filter(keyword)
        }
        ac.addAction(filterAction)
        present(ac, animated: true)
        
    }
    @objc func resetFilter(){
        filteredPetitions.removeAll()
        tableView.reloadData()
        self.navigationItem.leftBarButtonItems?.last?.isEnabled = false
        
    }
    func filter(_ keyword: String){
        for index in 0...petitions.count - 1{
            if petitions[index].title.lowercased().contains(keyword.lowercased()){
                filteredPetitions.append(petitions[index])
            }
        }
        if filteredPetitions.isEmpty{
            let ac = UIAlertController(title: "Error", message: "No much found!", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true)
        }else{
            self.navigationItem.leftBarButtonItems?.last?.isEnabled = true
        }
        tableView.reloadData()
    }
    
}
