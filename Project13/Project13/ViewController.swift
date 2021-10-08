//
//  ViewController.swift
//  Project13
//
//  Created by cassia franco on 01/09/21.
//
import CoreImage
import UIKit


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var intensity: UISlider!
    @IBOutlet var changeFilterOutlet: UIButton!
    
    var currentImage: UIImage!
    
    var context: CIContext!
    var currtentFilter: CIFilter!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Instafilter"
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(importPicture))
        
        
        context = CIContext()
        currtentFilter = CIFilter(name: "CISepiaTone")
        
    }
    @objc func importPicture(){
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        
        dismiss(animated: true)
        
        currentImage = image
        
        let beginImage = CIImage(image:  currentImage)
        currtentFilter.setValue(beginImage, forKey: kCIInputImageKey)
        
        applyProcessing()
    }
    func applyProcessing() {
        
        let inputKeys = currtentFilter.inputKeys

        if inputKeys.contains(kCIInputIntensityKey) { currtentFilter.setValue(intensity.value, forKey: kCIInputIntensityKey) }
        if inputKeys.contains(kCIInputRadiusKey) { currtentFilter.setValue(intensity.value * 200, forKey: kCIInputRadiusKey) }
        if inputKeys.contains(kCIInputScaleKey) { currtentFilter.setValue(intensity.value * 10, forKey: kCIInputScaleKey) }
        if inputKeys.contains(kCIInputCenterKey) { currtentFilter.setValue(CIVector(x: currentImage.size.width / 2, y: currentImage.size.height / 2), forKey: kCIInputCenterKey) }

        if let cgimg = context.createCGImage(currtentFilter.outputImage!, from: currtentFilter.outputImage!.extent) {
            let processedImage = UIImage(cgImage: cgimg)
            
            self.imageView.image = processedImage
            
            let viewToAnimate = UIView()
            UIView.animate(withDuration: 1, animations: {
                viewToAnimate.alpha = 0
            }) { _ in
                viewToAnimate.removeFromSuperview()
            }
        }
        
    }
    func setFilter(action: UIAlertAction) {
        // make sure we have a valid image before continuing!
        guard currentImage != nil else { return }
        
        // safely read the alert action's title
        guard let actionTitle = action.title else { return }
        
        currtentFilter = CIFilter(name: actionTitle)
        changeFilterOutlet.setTitle(action.title, for: .normal)
        
        let beginImage = CIImage(image: currentImage)
        currtentFilter.setValue(beginImage, forKey: kCIInputImageKey)
        
        applyProcessing()
    }
    
    @IBAction func changeFilter(_ sender: UIButton) {
        
        let ac = UIAlertController(title: "Choose filter", message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "CIBumpDistortion", style: .default, handler: setFilter))
        ac.addAction(UIAlertAction(title: "CIGaussianBlur", style: .default, handler: setFilter))
        ac.addAction(UIAlertAction(title: "CIPixellate", style: .default, handler: setFilter))
        ac.addAction(UIAlertAction(title: "CISepiaTone", style: .default, handler: setFilter))
        ac.addAction(UIAlertAction(title: "CITwirlDistortion", style: .default, handler: setFilter))
        ac.addAction(UIAlertAction(title: "CIUnsharpMask", style: .default, handler: setFilter))
        ac.addAction(UIAlertAction(title: "CIVignette", style: .default, handler: setFilter))
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        if let popoverController = ac.popoverPresentationController {
            popoverController.sourceView = sender
            popoverController.sourceRect = sender.bounds
        
            
        }
        present(ac, animated: true)
    }

    @IBAction func save(_ sender: Any) {
        
        guard let image = imageView.image else {
            let noImageAC = UIAlertController(title: "No image Found!", message: "Please select an image from your Photo Libravry before continue", preferredStyle: .alert)
            noImageAC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(noImageAC, animated: true)
            
            return
        
        }
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(image(_:didFinishSavingWithError:contextInfo: )), nil)
    }
    
    @IBAction func intensityChanged(_ sender: Any) {
        applyProcessing()
        
    }
    
    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            let ac = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
        }else {
            let ac = UIAlertController(title: "Saved!", message: "Your altered image has been sabed to your photos", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }

    }
}

