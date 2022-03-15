//
//  Constants.swift
//  Kompas Atomics Design
//
//  Created by Nur Irfan Pangestu on 08/03/22.
//

import Foundation
import SwiftUI

enum Constants {
    
    // MARK: - https://www.color-name.com/
    enum Colors: String {
        /// #00589A
        case usafaBlue = "USAFA Blue"
        /// #333333
        case darkCharcoal = "Dark Charcoal"
        /// #666666
        case graniteGray = "Granite Gray"
        /// #DDDDDD
        case gainsboro = "Gainsboro"
        /// #DDDDDD 50%
        case black50 = "Black 50"
        /// #999999
        case spanishGray = "Spanish Gray"
        /// #3C3C43 36%
        case arsenic36 = "Arsenic 36"
        /// #E9F5FD
        case aliceBlue = "Alice Blue"
        /// #000000
        case black = "Black"
    }
    
    /// Fonts
    ///
    /// Weight 300 = Light
    ///
    /// Weight 400 = Regular
    ///
    /// Weight 500 = Medium
    ///
    /// Weight 600 = Semibold
    ///
    /// Weight 700 = Bold
    enum Fonts: String {
        case fontHindLight = "Hind-Light"
        case fontHindRegular = "Hind-Regular"
        case fontHindMedium = "Hind-Medium"
        case fontHindSemibold = "Hind-SemiBold"
        case fontHindBold = "Hind-Bold"
        case fontPlayBold = "PlayFairDisplay-Bold"
        case fontGeorgiaItalic = "Georgia-Italic"
        case fontGeorgiaBold = "Georgia-Bold"
        case fontGeorgiaRegular = "Georgia"
    }
    
}
