//
//  URL+Secure.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

extension URL {
    var usingHTTPS: URL? {
        guard var components = URLComponents(url: self, resolvingAgainstBaseURL: true) else { return nil }
        components.scheme = "https"
        return components.url
    }
}

@objc extension NSURL {
    var usingHTTPS: URL? {
        return (self as URL).usingHTTPS
    }
}
