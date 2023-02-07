//
//  SongCell.swift
//  spotify-portfolio
//
//  Created by Pierre Gourgouillon on 07/02/2023.
//

import SwiftUI

struct SongCell: View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Image("cover-album-EN")
                    .resizable()
                    .frame(width: 50, height: 50)

                VStack(alignment: .leading) {
                    Text("AZNVR - une minute de music")
                        .foregroundColor(.white)
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                        .lineLimit(1)
                        .frame(maxWidth: 220)

                    HStack(alignment: .center) {
                        Image(systemName: "arrow.down.circle.fill")
                            .foregroundColor(.green)
                            .font(.system(size: 15))
                        Text("Luv Resval")
                            .foregroundColor(.gray)
                            .font(.system(size: 15))
                            .fontWeight(.medium)
                    }
                    .padding(.leading, 5)
                }

                Spacer()
                Image(systemName: "heart")
                    .foregroundColor(.green)
                    .font(.system(size: 20))
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
    }
}

struct SongCell_Previews: PreviewProvider {
    static var previews: some View {
        SongCell()
    }
}
