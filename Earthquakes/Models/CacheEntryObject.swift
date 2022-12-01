//
//  CacheEntryObject.swift
//  Earthquakes
//
//  Created by Joseph Rock on 11/30/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

final class CacheEntryObject {
    let entry: CacheEntry
    init(entry: CacheEntry) { self.entry = entry }
}

enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}
