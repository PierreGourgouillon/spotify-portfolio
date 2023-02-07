//
//  ContentView.swift
//  spotify-portfolio
//
//  Created by Pierre Gourgouillon on 07/02/2023.
//

import SwiftUI

struct PlaylistView: View {
    var body: some View {
        ScrollView {
            PlaylistHeaderView()
            VStack(spacing: 20) {
                addMore()
                    .padding(.horizontal)
                ForEach(0..<20) {_ in
                    SongCell()
                }
            }
            .padding(.bottom)
        }
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }

    private func addMore() -> some View {
        HStack {
            Rectangle()
                .fill(Color.gray)
                .frame(width: 50, height: 50)
                .overlay(alignment: .center) {
                    Image(systemName: "plus")
                        .foregroundColor(Color.black)
                        .font(.system(size: 35))
                }
            Text("Ajouter du contenu")
                .foregroundColor(.white)
                .font(.system(size: 18))
                .fontWeight(.medium)
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
