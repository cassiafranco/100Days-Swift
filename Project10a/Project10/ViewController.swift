//
//  ViewController.swift
//  Project10
//
//  Created by cassia franco on 19/08/21.
//

import UIKit

class ViewController: UICollectionViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewPerson))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(addNewPerson))
        
        let defaults = UserDefaults.standard
        
        if let savedPeople = defaults.object(forKey: "people") as? Data {
            if let decodedPeople = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(savedPeople) as? [Person] {
                people = decodedPeople
            }
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return people.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Person", for: indexPath) as? PersonCell else {
            fatalError("Unable to dequeue PersonCell.")
        }
        let person = people[indexPath.item]
        
        cell.name.text = person.name
        
        let path = getDocumentsDirectory().appendingPathComponent(person.image)
        cell.imageView.image = UIImage(contentsOfFile: path.path)
        
        cell.imageView.layer.borderColor = UIColor(white: 0, alpha: 0.3).cgColor
        cell.imageView.layer.borderWidth = 2
        cell.imageView.layer.cornerRadius = 3
        cell.layer.cornerRadius = 7
        return cell
    }
    @objc func addNewPerson(){
        let picker = UIImagePickerController()
                picker.allowsEditing = true
                if UIImagePickerController.isSourceTypeAvailable(.camera) {
                    if let availableMediaTypes = UIImagePickerController.availableMediaTypes(for: .camera) {
                        picker.mediaTypes = availableMediaTypes
                        picker.sourceType = .camera
                    }
                } else {
                    picker.sourceType = .photoLibrary
                }
                
                picker.delegate = self
                present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] as? UIImage else { return }
        
        let imageName = UUID().uuidString
        let imagePath = getDocumentsDirectory().appendingPathComponent(imageName)
        
        if let jpegData = image.jpegData(compressionQuality: 0.8) {
            try? jpegData.write(to: imagePath)
        }
        
        let person = Person(name: "Unknown", image: imageName)
        people.append(person)
        save()
        collectionView?.reloadData()
        
        dismiss(animated: true)
    }
    
    func getDocumentsDirectory() -> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
        
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let person = people[indexPath.item]

        let acMain = UIAlertController(title: "Options", message: "Choose to ename or delete the person", preferredStyle: .actionSheet)

        // Define the Rename alert
        let renameAction = UIAlertAction(title: "Rename", style: .default) { [weak self] (action) in
            let ac = UIAlertController(title: "Rename person", message: nil, preferredStyle: .alert)
            ac.addTextField()

            ac.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            ac.addAction(UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] _ in
                guard let newName = ac?.textFields?[0].text else { return }
                person.name = newName
                self?.save()

                self?.collectionView.reloadData()
            })

            self?.present(ac, animated: true)
        }

        // Define the Delete alert
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { [weak self] (action) in
            self?.people.remove(at: indexPath.item)
            self?.collectionView.reloadData()
            self?.collectionView.deleteItems(at: [indexPath])
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

        // Add all the actions to acMain
        acMain.addAction(renameAction)
        acMain.addAction(deleteAction)
        acMain.addAction(cancelAction)
        present(acMain, animated: true)

    }
    func save() {
        if let savedData = try? NSKeyedArchiver.archivedData(withRootObject: people, requiringSecureCoding: false) {
            let defaults = UserDefaults.standard
            defaults.set(savedData, forKey: "people")
        }
    }
    
}

