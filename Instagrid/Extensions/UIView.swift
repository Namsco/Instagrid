//
//  UIView.swift
//  Instagrid
//
//  Created by Zidouni on 12/12/2022.
//

import Foundation
import UIKit

extension UIView {

    // Using a function since `var image` might conflict with an existing variable
    // (like on `UIImageView`)
    func asImage() -> UIImage? {
        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        return renderer.image { rendererContext in
            layer.render(in: rendererContext.cgContext)
        }
    }
}
