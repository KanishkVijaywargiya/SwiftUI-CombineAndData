//
//  Certificates.swift
//  SwiftUICombineAndData
//
//  Created by KANISHK VIJAYWARGIYA on 28/10/21.
//

import SwiftUI

struct CertificatesView: View {
    @StateObject var certificateViewModel = CertificateViewModel()
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(certificateViewModel.certificates.indices, id: \.self) { index in
                CertificateCard(selection: $selection)
                    .environmentObject(certificateViewModel)
                    .padding(.horizontal, 8)
            }
        }
        .background(AccountBackground())
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

struct Certificates_Previews: PreviewProvider {
    static var previews: some View {
        CertificatesView()
    }
}
