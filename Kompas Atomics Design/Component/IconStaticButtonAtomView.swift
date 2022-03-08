//
//  IconButtonAtom.swift
//  Kompas Atomics Design
//
//  Created by Nur Irfan Pangestu on 08/03/22.
//

import SwiftUI

/// Icon Button View
///
/// img : image local string
/// width: 44, height: 44, alignment: .center
struct IconStaticButtonAtomView: View {
    
    let img: String
    let perform: () -> Void
    
    var body: some View {
        Button {
            self.perform()
        } label: {
            ZStack(alignment: .center) {
                Image(img)
                    .resizable()
                    .frame(width: 44, height: 44, alignment: .center)
            }
        }
    }
}



