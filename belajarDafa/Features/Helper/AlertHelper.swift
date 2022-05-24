//
//  AlertHelper.swift
//  belajarDafa
//
//  Created by dafamalik on 24/05/22.
//

import Foundation
import UIKit

class AlertHelper {
    
   static func showAlertViewController(vc: UIViewController, msg: String) {
        let alert = UIAlertController(title: "Alert", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
    
}
