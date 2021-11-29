//
//  NotificationsRow.swift
//  SwiftUICombineAndData
//
//  Created by KANISHK VIJAYWARGIYA on 02/11/21.
//

import SwiftUI

struct NotificationsRow: View {
    @State private var subscribed: Bool = true
    
    var body: some View {
        Toggle(isOn: $subscribed) {
            HStack(spacing: 12) {
                GradientIcon(icon: "bell.fill")
                
                VStack(alignment: .leading) {
                    Text("Notify me of new content")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Max once a week")
                        .font(.caption2)
                        .foregroundColor(.white.opacity(0.7))
                }
            }
        }
        .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.4212433696, green: 0.4374559522, blue: 0.8710277677, alpha: 1))))
    }
}

struct NotificationsRow_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsRow()
    }
}
