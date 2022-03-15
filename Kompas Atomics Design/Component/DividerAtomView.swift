//
//  DividerAtomView.swift
//  Kompas Atomics Design
//
//  Created by Nur Irfan Pangestu on 14/03/22.
//

import SwiftUI

struct DividerAtomView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(setupColor(colors: .gainsboro))
            .frame(height: 0.5, alignment: .center)
    }
}

struct DividerAtomView_Previews: PreviewProvider {
    static var previews: some View {
        DividerAtomView()
    }
}
