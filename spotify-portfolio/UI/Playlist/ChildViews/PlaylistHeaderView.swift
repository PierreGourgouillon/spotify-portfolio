//
//  PlaylistHeaderView.swift
//  spotify-portfolio
//
//  Created by Pierre Gourgouillon on 07/02/2023.
//

import SwiftUI

struct PlaylistHeaderView: View {
    var body: some View {
        ZStack { }
        .frame(maxWidth: .infinity, minHeight: 400)
        .overlay(squareImages(), alignment: .center)
        .overlay(informationsText(), alignment: .bottomLeading)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [.orange, .black]),
                startPoint: .top, endPoint: .bottom
            )
        )
    }

    private func informationsText() -> some View {
        VStack(alignment: .leading, spacing: 7) {
            Text("Le petit lutin")
                .font(.system(size: 25))
                .foregroundColor(.white)
                .fontWeight(.heavy)
            ownerOfPlaylist()
            durationSongs()
            HStack {
                Button(action: {}) {
                    Text("Enrichir")
                        .font(.system(size: 15))
                        .bold()
                        .padding(.horizontal, 15)
                        .padding(.vertical, 5)
                        .foregroundColor(.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 100)
                                .strokeBorder(Color.white)
                        }
                }
                Image(systemName: "arrow.down.circle.fill")
                    .foregroundColor(.green)
                    .font(.system(size: 25))
                    .padding(.leading, 17)

                Image(systemName: "person.badge.plus")
                    .foregroundColor(.gray)
                    .font(.system(size: 22))
                    .padding(.leading, 17)

                Image(systemName: "ellipsis")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                    .padding(.leading, 10)

                Image(systemName: "shuffle")
                    .foregroundColor(.green)
                    .font(.system(size: 25))
                    .padding(.leading, 20)

                Image(systemName: "play.circle.fill")
                    .foregroundColor(.green)
                    .font(.system(size: 50))
                    .padding(.leading, 10)
            }
            .padding(.top, -10)
        }
        .padding(.leading)
    }

    private func ownerOfPlaylist() -> some View {
        HStack {
            Circle()
                .fill(Color.green)
                .frame(width: 25)
            Text("LutinJr")
                .font(.system(size: 15))
                .foregroundColor(.white)
                .bold()
        }
    }

    private func durationSongs() -> some View {
        HStack {
            Image(systemName: "network")
                .foregroundColor(.gray)
                .font(.system(size: 18))
            Text("2 h 10 m")
                .foregroundColor(.gray)
                .font(.system(size: 15))
        }
    }

    private func squareImages() -> some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                Image("cover-album-ZLM")
                    .resizable()
                    .frame(width: 100, height: 100)
                Image("cover-album")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
            HStack(spacing: 0) {
                Image("cover-album-ZLM")
                    .resizable()
                    .frame(width: 100, height: 100)
                Image("cover-album")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct PlaylistHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistHeaderView()
    }
}
