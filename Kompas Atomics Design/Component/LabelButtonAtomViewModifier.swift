//
//  LabelButtonAtomViewModifier.swift
//  Kompas Atomics Design
//
//  Created by Nur Irfan Pangestu on 08/03/22.
//

import Foundation
import SwiftUI


struct LabelButtonAtomViewModifier: ViewModifier {
    
    let fontSize: CGFloat
    let font: Constants.Fonts
    let colors: Constants.Colors
    let perform: () -> Void
    
    func body(content: Content) -> some View {
        content
            .font(.custom(self.font.rawValue, size: self.fontSize))
            .foregroundColor(Color(self.colors.rawValue))
            .onTapGesture {
                self.perform()
            }
    }
}
