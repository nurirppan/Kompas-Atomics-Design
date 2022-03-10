//
//  HomeView.swift
//  Kompas Atomics Design
//
//  Created by Nur Irfan Pangestu on 10/03/22.
//

import SwiftUI


struct TopBarView: View {
    @Binding var showMenu: Bool
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                HStack{
                    // MARK: - SIDE NAV
                    Button {
                        withAnimation{showMenu.toggle()}
                    } label: {
                        ZStack(alignment: .center) {
                            Image("ic_sidenav")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 24, height: 24)
                        }
                        .frame(width: 44, height: 44, alignment: .center)

                    }
                    
                    Spacer()
                    
                    // MARK: - SEARCH ICON
                    IconStaticButtonAtomView(img: "ic_search") {
                        print("")
                    }
                }
            }
            .background(setupColor(colors: .usafaBlue))
            .overlay(
                // MARK: - LOGO KOMPAS
                Image("img_kompas_white")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 22)
            )
            Spacer()
        }
    }
}
