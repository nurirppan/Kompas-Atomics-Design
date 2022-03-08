//
//  FuperView.swift
//  Kompas Atomics Design
//
//  Created by Nur Irfan Pangestu on 08/03/22.
//

import SwiftUI

struct FuperView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 0) {
                Text("Mendengarkan audio artikel dari")
                    .lineLimit(1)
                    .modifier(LabelAtomViewModifier(fontSize: 14, font: .fontHindRegular, colors: .darkCharcoal))
                
                Text("INTERNASIONAL")
                    .lineLimit(1)
                    .padding(.top, 4)
                    .modifier(LabelAtomViewModifier(fontSize: 16, font: .fontHindSemibold, colors: .usafaBlue))
            }
            .padding(.top, 16)
            .padding(.horizontal, 16)
            
            // MARK: - BODY
            VStack(alignment: .center, spacing: 0) {
                Image("img_sample")
                    .resizable()
                    .frame(height: 193, alignment: .center)
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                Text("Vaksinasi Covid-19")
                    .padding(.top, 32)
                    .modifier(LabelAtomViewModifier(fontSize: 20, font: .fontHindBold, colors: .darkCharcoal))
                
                Text("12.11 WIB · Nusantara")
                    .padding(.top, 16)
                    .modifier(LabelAtomViewModifier(fontSize: 14, font: .fontHindMedium, colors: .spanishGray))
            }
            .padding(.top, 43)
            .padding(.horizontal, 16)
            
            
            // MARK: - FOOTER
            Spacer()
            
            VStack(alignment: .center, spacing: 0) {
                // MARK: - FOOTER PROGRESS MUSIC
                ZStack(alignment: .center) {
                    Rectangle()
                        .foregroundColor(Color(Constants.Colors.usafaBlue.rawValue))
                        .frame(height: 3, alignment: .center)
                }
                .frame(height: 27, alignment: .center)
                
                // MARK: - FOOTER HEADER
                HStack(alignment: .center, spacing: 0) {
                    Text("0:48")
                        .lineLimit(1)
                        .modifier(LabelAtomViewModifier(fontSize: 14, font: .fontHindRegular, colors: .graniteGray))
                    
                    Spacer()
                    
                    Text("0:48")
                        .lineLimit(1)
                        .modifier(LabelAtomViewModifier(fontSize: 14, font: .fontHindRegular, colors: .graniteGray))
                }
                .padding(.top, 8)
                
                // MARK: - FOOTER BODY
                HStack(alignment: .center, spacing: 0) {
                    IconStaticButtonAtomView(img: "ic_pause") {
                        print("")
                    }
                                        
                    IconStaticButtonAtomView(img: "ic_pause") {
                        print("")
                    }
                    .padding(.horizontal, 24)
                    
                    IconStaticButtonAtomView(img: "ic_pause") {
                        print("")
                    }
                    
                    IconStaticButtonAtomView(img: "ic_pause") {
                        print("")
                    }
                    .padding(.horizontal, 24)
                    
                    IconStaticButtonAtomView(img: "ic_pause") {
                        print("")
                    }
                }
                .padding(.top, 12)
                
                // MARK: - FOOTER FOOTER
                HStack(alignment: .center, spacing: 0) {
                    LabelStaticButtonAtomView(text: "1 x", fontSize: 16, font: .fontHindSemibold, colors: .graniteGray) {
                        print("")
                    }
                    Spacer()

                    Text("Baca artikel ini")
                        .underline()
                        .lineLimit(1)
                        .modifier(LabelButtonAtomViewModifier(fontSize: 16, font: .fontHindRegular, colors: .usafaBlue, perform: {
                            print("")
                        }))
                    
                    Spacer()
                    
                    IconStaticButtonAtomView(img: "ic_pause") {
                        print("")
                    }
                }
                .padding(.top, 24)
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 16)

        }
    }
}

struct FuperView_Previews: PreviewProvider {
    static var previews: some View {
        FuperView()
    }
}
