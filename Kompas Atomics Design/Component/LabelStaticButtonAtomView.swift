//
//  LabelButtonAtomView.swift
//  Kompas Atomics Design
//
//  Created by Nur Irfan Pangestu on 08/03/22.
//

import SwiftUI

/// Icon Button View
///
/// width: 44, height: 44, alignment: .center
struct LabelStaticButtonAtomView: View {
    
    let text: String
    let fontSize: CGFloat
    let font: Constants.Fonts
    let colors: Constants.Colors
    let perform: () -> Void
    
    var body: some View {
        Button {
            self.perform()
        } label: {
            ZStack(alignment: .center) {
                Text(self.text)
                    .lineLimit(1)
                    .modifier(LabelAtomViewModifier(fontSize: self.fontSize, font: self.font, colors: self.colors))
            }
            .frame(width: 44, height: 44, alignment: .center)
        }
    }
}

struct LabelButtonAtomView_Previews: PreviewProvider {
    static var previews: some View {
        LabelStaticButtonAtomView(
            text: "1 x",
            fontSize: 16,
            font: .fontHindSemibold,
            colors: .usafaBlue,
            perform: {})
    }
}
