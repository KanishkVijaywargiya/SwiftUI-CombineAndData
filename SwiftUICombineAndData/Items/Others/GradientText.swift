//
//  GradientText.swift
//  SwiftUICombineAndData
//
//  Created by KANISHK VIJAYWARGIYA on 27/10/21.
//

import SwiftUI

struct GradientText: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var title: String
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: colorScheme == .dark ?[Color(#colorLiteral(red: 0.6808801889, green: 0.7434362769, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.6542388201, blue: 0.9848204255, alpha: 1))]: [Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(height: 20)
            .mask(
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .textCase(.uppercase)
                    .frame(maxWidth: .infinity, alignment: .leading)
            )
    }
}

struct GradientText_Previews: PreviewProvider {
    static var previews: some View {
        GradientText(title: "Firebase")
    }
}
