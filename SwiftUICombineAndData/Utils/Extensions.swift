//
//  Extensions.swift
//  SwiftUICombineAndData
//
//  Created by KANISHK VIJAYWARGIYA on 28/10/21.
//

import SwiftUI

// extension leads to add custom functionality to existing class and structures

extension View {
    func angularGradientGlow(colors: [Color]) -> some View {
        self.overlay(AngularGradient(gradient: Gradient(colors: colors), center: .center, angle: .degrees(0)))
            .mask(self)
    }
    
    func linearGradientBackground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
    
    func blurBackground() -> some View {
        self.padding(16)
            .background(Color("Background 1"))
            .background(VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark))
            .overlay(
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .stroke(Color.white, lineWidth: 1)
                    .blendMode(.overlay)
            )
            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}
