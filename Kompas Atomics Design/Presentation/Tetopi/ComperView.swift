//
//  ComperView.swift
//  Kompas Atomics Design
//
//  Created by Nur Irfan Pangestu on 08/03/22.
//

import SwiftUI

struct ComperView: View {
    var body: some View {
        ZStack(alignment: .top) {
            // MARK: - CONTENT COMPER
            VStack(alignment: .leading, spacing: 0) {
                
                HStack(alignment: .center, spacing: 0) {
                    // MARK: - IMAGE
                    ZStack(alignment: .topLeading) {
                        
                        Image("img_sample")
                            .resizable()
                            .scaledToFit()
                        
                        ZStack(alignment: .center) {
                            Circle()
                                .foregroundColor(Color(Constants.Colors.black50.rawValue))
                                .frame(width: 19, height: 19, alignment: .center)
                            
                            Image("img_sample")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 10, height: 6, alignment: .center)
                            
                        }
                        .padding(.top, 5)
                        .padding(.leading, 5)
                    }
                    
                    // MARK: - CONTAINER CONTENT
                    HStack(alignment: .top, spacing: 5) {
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Nur Irfan Pangestu Nur Irfan Pangestu ")
                                .lineLimit(1)
                                .modifier(LabelAtomViewModifier(fontSize: 16, font: .fontHindSemibold, colors: .darkCharcoal))
                            
                            Text("17.09 WIB · Premium")
                                .lineLimit(1)
                                .modifier(LabelAtomViewModifier(fontSize: 14, font: .fontHindRegular, colors: .graniteGray))
                        }
                        .padding(.top, 22)
                        
                        Spacer()
                        // MARK: - BUTTON PAUSE PLAY
                        HStack(alignment: .center, spacing: 0) {
                            IconStaticButtonAtomView(img: "ic_pause") {
                                print("")
                            }
                            
                            Divider()
                                .foregroundColor(Color(Constants.Colors.gainsboro.rawValue))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 15)
                            
                            IconStaticButtonAtomView(img: "ic_pause") {
                                print("")
                            }
                        }
                        .background(Color.white)
                    }
                    .padding(.horizontal, 10)
                }
            }
            
            // MARK: - PROGRESS MUSIC
            Rectangle()
                .foregroundColor(Color(Constants.Colors.usafaBlue.rawValue))
                .frame(height: 4, alignment: .center)
        }
        .frame(height: 80, alignment: .center)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.white)
    }
}

struct ComperView_Previews: PreviewProvider {
    static var previews: some View {
        ComperView()
    }
}
