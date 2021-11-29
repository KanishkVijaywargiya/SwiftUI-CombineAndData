//
//  ModelData.swift
//  SwiftUICombineAndData
//
//  Created by KANISHK VIJAYWARGIYA on 27/10/21.
//

import Foundation

var faqData: [FAQ] = load("FAQData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else { fatalError("Couldn't find \(filename) in main bundle")
    }
    
    // load data from the file
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    // converting json object into swift object using json decoder.
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self): \n\(error)")
    }
}
