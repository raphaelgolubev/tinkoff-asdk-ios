//
//  IUIApplication.swift
//  TinkoffASDKUI
//
//  Created by Aleksandr Pravosudov on 23.12.2022.
//

import Foundation
import UIKit

protocol IUIApplication {
    func canOpenURL(_ url: URL) -> Bool

    func open(_ url: URL, options: [UIApplication.OpenExternalURLOptionsKey: Any], completionHandler completion: ((Bool) -> Void)?)
}

extension IUIApplication {
    func open(_ url: URL, completionHandler completion: ((Bool) -> Void)?) {
        open(url, options: [:], completionHandler: completion)
    }
    func open(_ url: URL, options: [UIApplication.OpenExternalURLOptionsKey : Any], completionHandler completion: ((Bool) -> Void)?) {
        print("\(#function) \(#filePath)", "open \(url)")
    }
}

extension UIApplication: IUIApplication {}
