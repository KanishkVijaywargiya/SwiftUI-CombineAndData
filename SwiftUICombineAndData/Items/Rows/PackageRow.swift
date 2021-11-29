//
//  PackageRow.swift
//  SwiftUICombineAndData
//
//  Created by KANISHK VIJAYWARGIYA on 27/10/21.
//

import SwiftUI

struct PackageRow: View {
    var package: Package
    @State var packagelink: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {self.packagelink = true}) {
                GradientText(title: package.title)
            }
            .fullScreenCover(isPresented: $packagelink) {
                SafariView(url: URL(string: package.link)!)
            }
            
            Divider()
        }
        .foregroundColor(.black)
    }
}

struct PackageRow_Previews: PreviewProvider {
    static var previews: some View {
        PackageRow(package: packagesData[0]).environment(\.colorScheme, .dark)
    }
}
