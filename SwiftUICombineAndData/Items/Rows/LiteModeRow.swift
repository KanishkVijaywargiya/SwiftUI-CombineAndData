//
//  LiteModeRow.swift
//  SwiftUICombineAndData
//
//  Created by KANISHK VIJAYWARGIYA on 02/11/21.
//

import SwiftUI

struct LiteModeRow: View {
    @State private var isLiteMode: Bool = false
    
    var body: some View {
        Toggle(isOn: $isLiteMode) {
            HStack(spacing: 12) {
                GradientIcon(icon: "speedometer")
                
                VStack(alignment: .leading) {
                    Text("Lite mode")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Better performance. Recommended for iPhone X and older.")
                        .font(.caption2)
                        .foregroundColor(.white.opacity(0.7))
                }
            }
        }
        .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.4212433696, green: 0.4374559522, blue: 0.8710277677, alpha: 1))))
    }
}

struct LiteModeRow_Previews: PreviewProvider {
    static var previews: some View {
        LiteModeRow()
    }
}
