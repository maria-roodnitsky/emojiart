//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Maria Roodnitsky on 5/2/22.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        DocumentGroup(newDocument: {EmojiArtDocument() }) { config in
            EmojiArtDocumentView(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}
