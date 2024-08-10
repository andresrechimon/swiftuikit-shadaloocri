//
//  ext+UIImage.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import Foundation
import UIKit

extension UIImage {
    func increaseContrast() -> UIImage {
        let inputImage = CIImage(image: self)!
        let parameters = [
            "inputContrast": NSNumber(value: 1.25)
        ]
        let outputImage = inputImage.applyingFilter("CIColorControls", parameters: parameters)

        let context = CIContext(options: nil)
        let img = context.createCGImage(outputImage, from: outputImage.extent)!
        return UIImage(cgImage: img)
    }
}
