//
//  ServiceHelperTest.swift
//  CloudServicesTests
//
//  Created by Ankit Kumar on 15/12/23.
//

import XCTest
@testable import CloudServices

final class ServiceHelperTest: XCTestCase {

    func test_parseResponse_searchSuccess() {
        let exp = XCTestExpectation(description: "Wait for the response")
        let mockJSON = MockResponseJSON()
        let expectedResponse = mockJSON.getSearchSuccessResponse()
        let serviceHelper = ServiceHelper()

        serviceHelper.parsingResponse(
            data: mockJSON.searchResponseSuccess.data(using: .utf8),
            response: getUrlResponse(),
            error: nil) { (_ result: Result<SearchResponse, ServiceError>) in
                switch result {
                case .failure(_):
                    XCTFail("Should get success response")

                case let .success(response):
                    XCTAssertFalse(expectedResponse.items?.count ?? 0 <= 0)
                    XCTAssertEqual(expectedResponse.totalCount, response.totalCount)
                    XCTAssertEqual(expectedResponse.items?.count, response.items?.count)
                    XCTAssertEqual(expectedResponse.items?.first?.id, response.items?.first?.id)
                }
            }
    }

    func test_parseResponse_searchRateLimitExceed() {
        let exp = XCTestExpectation(description: "Wait for the response")
        let mockJSON = MockResponseJSON()
        let expectedResponse = mockJSON.getSearchRateLimitExceedResponse()
        let serviceHelper = ServiceHelper()

        serviceHelper.parsingResponse(
            data: mockJSON.searchResponseLimitExceed.data(using: .utf8),
            response: getUrlResponse(),
            error: nil) { (_ result: Result<SearchResponse, ServiceError>) in
                switch result {
                case .failure(_):
                    XCTFail("Should get success response")

                case let .success(response):
                    // Limit exceed message
                    XCTAssertEqual(expectedResponse.message, response.message)
                }
            }
    }
}

// MARK: - Helpers
extension ServiceHelperTest {
    func getUrlResponse() -> HTTPURLResponse? {
        HTTPURLResponse(
            url: SearchEnvironment().getBaseUrl(with: "Swift")!,
            statusCode: 200,
            httpVersion: "HTTP/1.1",
            headerFields: [:]
        )
    }
}
