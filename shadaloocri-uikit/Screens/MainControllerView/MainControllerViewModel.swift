//
//  MainControllerViewModel.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import Foundation

class MainControllerViewModel {
    let titles: [SFTitle] = [
        SFTitle(title: .SSF2T, background: "ssf2t-bg", image: ConstantImage.ssf2tLogo, name: "Super Street fighter 2 Turbo"),
        SFTitle(title: .SF3TS, background: "sf3ts-bg", image: ConstantImage.sf3tsLogo, name: "Street Fighter 3: Third Impact"),
        SFTitle(title: .USFIV, background: "usfiv-bg", image: ConstantImage.usfivLogo, name: "Ultra Street Fighter 4"),
    ]
}
