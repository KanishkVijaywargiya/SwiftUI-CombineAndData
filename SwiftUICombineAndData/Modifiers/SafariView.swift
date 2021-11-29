//
//  SafariView.swift
//  SwiftUICombineAndData
//
//  Created by KANISHK VIJAYWARGIYA on 26/10/21.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }

}
