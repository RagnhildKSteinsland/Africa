//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Ragnhild Kjellevold Steinsland on 14/03/2021.
//

import Foundation

extension Bundle {
    func decode<T: Codable>( file: String) -> T {
        //Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to lacate \(file) in bundle")
        }
        
        //Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        //Create a decoder
        let decoder = JSONDecoder()
        
        //Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode \(file) from bundle")
        }
        
        //Return the data ready-to-use
        return loaded
    }
}
