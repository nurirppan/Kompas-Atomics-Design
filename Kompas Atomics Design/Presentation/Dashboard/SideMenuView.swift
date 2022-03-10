//
//  SideMenuView.swift
//  Kompas Atomics Design
//
//  Created by Nur Irfan Pangestu on 10/03/22.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var showMenu: Bool
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            VStack(alignment: .leading, spacing: 15) {
                
                Image("Pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                
                Text("iJustine")
                    .font(.title2.bold())
                
                Text("@ijustine")
                    .font(.callout)
                
                HStack(spacing: 12){
                    
                    Button {
                        
                    } label: {
                        
                        Label {
                            Text("Followers")
                        } icon: {
                            Text("189")
                                .fontWeight(.bold)
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        
                        Label {
                            Text("Following")
                        } icon: {
                            Text("1.2M")
                                .fontWeight(.bold)
                        }
                    }

                }
                .foregroundColor(.primary)
            }
            .padding()
            .padding(.leading)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 10){
                    
                    VStack(alignment: .leading, spacing: 45) {
                        
                        // Tab Buttons...
                        TabButton(title: "Profile", image: "Profile")
                        
                        TabButton(title: "Lists", image: "Lists")
                        
                        TabButton(title: "Topics", image: "Topics")
                        
                        TabButton(title: "Bookmarks", image: "Bookmarks")
                        
                        TabButton(title: "Moments", image: "Moments")
                        
                        TabButton(title: "Purchases", image: "Purchases")
                        
                        TabButton(title: "Monetization", image: "Monetization")
                    }
                    .padding(.horizontal)
                    .padding(.leading)
                    .padding(.top,45)
                    
                    Divider()
                        .padding(.vertical)
                    
                    TabButton(title: "Twitter Ads", image: "Ads")
                        .padding(.horizontal)
                        .padding(.leading)
                    
                    Divider()
                        .padding(.vertical)
                    
                    VStack(alignment: .leading, spacing: 40) {
                        
                        Button("Settings And Privacy"){
                            
                        }
                        
                        Button("Help Center"){
                            
                        }
                    }
                    .padding(.horizontal)
                    .padding(.leading)
                    .padding(.bottom,20)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .foregroundColor(.primary)
                }
            }
            
            VStack(spacing: 0){
                
                Divider()
                
                HStack{
                    
                    Button {
                        
                    } label: {
                        
                        Image("Light")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 22, height: 22)
                    }

                    Spacer()
                    
                    Button {
                        
                    } label: {
                        
                        Image("QR")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 22, height: 22)
                    }
                }
                .padding([.horizontal,.top],15)
                .padding(.bottom,safeArea().bottom == 0 ? 15 : 0)
                .foregroundColor(.primary)
            }
        }
        .frame(maxWidth: .infinity,alignment: .leading)
        // Max Width...
        .frame(width: getRect().width - 90)
        .frame(maxHeight: .infinity)
        .background(
        
            Color.primary
                .opacity(0.04)
                .ignoresSafeArea(.container, edges: .vertical)
        )
        .frame(maxWidth: .infinity,alignment: .leading)
    }
    
    @ViewBuilder
    func TabButton(title: String,image: String)->some View{
        
        // For navigation...
        // Simple replace button with Navigation Links...
        
        NavigationLink {
            
            Text("\(title) View")
                .navigationTitle(title)
            
        } label: {
         
            HStack(spacing: 14){
                
                Image(image)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 22, height: 22)
                
                Text(title)
            }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity,alignment: .leading)
        }
    }
}