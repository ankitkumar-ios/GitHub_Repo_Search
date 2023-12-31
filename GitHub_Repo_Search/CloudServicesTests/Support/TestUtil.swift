//
//  TestUtil.swift
//  CloudServicesTests
//
//  Created by Ankit Kumar on 15/12/23.
//

import Foundation
@testable import CloudServices

class TestUtil {
    static func decodeSearchJSON(data: Data?) -> SearchResponse? {
        if let data = data {
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(SearchResponse.self, from: data)
                return response
            } catch {
                return nil
            }
        }
        return nil
    }
}
