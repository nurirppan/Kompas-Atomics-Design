//
//  PlaylistView.swift
//  Kompas Atomics Design
//
//  Created by Nur Irfan Pangestu on 08/03/22.
//

import SwiftUI

struct PlaylistView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            // MARK: - change to lazy vstack
            VStack(alignment: .center, spacing: 0) {
                // MARK: - HEADER
                VStack(alignment: .center, spacing: 0) {
                    Text("Mendengarkan audio artikel dari")
                        .lineLimit(1)
                        .modifier(LabelAtomViewModifier(fontSize: 14, font: .fontHindRegular, colors: .darkCharcoal))
                    
                    Text("INTERNASIONAL")
                        .lineLimit(1)
                        .padding(.top, 4)
                        .modifier(LabelAtomViewModifier(fontSize: 16, font: .fontHindSemibold, colors: .arsenic36))
                }
                .padding(.top, 16)
                .padding(.horizontal, 16)
                .padding(.bottom, 24)
                
                // MARK: - BODY
                VStack(alignment: .center, spacing: 0) {
                    
                    Rectangle()
                        .foregroundColor(Color(Constants.Colors.usafaBlue.rawValue))
                        .frame(height: 0.5, alignment: .center)
                    
                    ZStack(alignment: .center) {
                        HStack(alignment: .top, spacing: 0) {
                            Image("img_sample")
                                .padding(.trailing, 16)
                            
                            VStack(alignment: .leading, spacing: 0) {
                                Text("Lorem ipsum dolor sit amet, consectur adipiscing elit. Donec et ex sem. Donec ac lobortis lorem ipsum...")
                                    .lineLimit(3)
                                    .modifier(LabelAtomViewModifier(fontSize: 16, font: .fontHindSemibold, colors: .darkCharcoal))
                                
                                Text("17.00 WIB · Internasional")
                                    .lineLimit(1)
                                    .modifier(LabelAtomViewModifier(fontSize: 12, font: .fontHindRegular, colors: .graniteGray))
                                    .padding(.top, 2)
                            }
                            
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                    }
                    .background(Color(Constants.Colors.aliceBlue.rawValue))
                    
                    Rectangle()
                        .foregroundColor(Color(Constants.Colors.usafaBlue.rawValue))
                        .frame(height: 0.5, alignment: .center)
                    
                    
                }
            }
        }
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
