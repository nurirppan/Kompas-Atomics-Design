//
//  View+Extension.swift
//  Kompas Atomics Design
//
//  Created by Nur Irfan Pangestu on 10/03/22.
//

import Foundation
import SwiftUI

extension View {
    
    /// Bounds of entire screen in points
    /// - Returns: UIScreen.main.bounds
    func getRect()-> CGRect {
        return UIScreen.main.bounds
    }
    
    func safeArea()->UIEdgeInsets{
        let null = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            return null
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets else{
            return null
        }
        
        return safeArea
    }
    
    // MARK: - COLOR
    func setupColor(colors: Constants.Colors) -> Color {
        return Color(colors.rawValue)
    }
}
