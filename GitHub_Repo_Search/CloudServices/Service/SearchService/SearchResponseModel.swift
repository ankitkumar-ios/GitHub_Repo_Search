//
//  SearchResponseModel.swift
//  CloudServices
//
//  Created by Ankit Kumar on 15/12/23.
//

import Foundation

/// SearchResponse model helps to decode API values
public struct SearchResponse: Codable {
    /// Just to make the initializer public
    public init() {}

    public var totalCount: Int?
    public var incompleteResults: Bool?
    public var items: [Items]?
    public var message: String?

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case incompleteResults = "incomplete_results"
        case items
        case message
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        totalCount = try values.decodeIfPresent(Int.self, forKey: .totalCount)
        incompleteResults = try values.decodeIfPresent(Bool.self, forKey: .incompleteResults)
        items = try values.decodeIfPresent([Items].self, forKey: .items)
        message = try values.decodeIfPresent(String.self, forKey: .message)
    }
}

public struct Items: Codable {
    public let id: Int?
    public let name: String?
    public let fullName: String?
    public let owner: Owner?
    public let htmlUrl: String?
    public let description: String?
    public let createdAt: String?
    public let updatedAt: String?
    public let homepage: String?
    public let size: Int?
    public let stargazersCount: Int?
    public let watchersCount: Int?
    public let language: String?
    public let forksCount: Int?
    public let openIssuesCount: Int?
    public let license: License?
    public let allowForking: Bool?
    public let topics: [String]?
    public let visibility: String?
    public let watchers: Int?
    public let defaultBranch: String?
    public let score: Double?

    enum CodingKeys: String, CodingKey {
        case id
        case name = "name"
        case fullName = "full_name"
        case owner = "owner"
        case htmlUrl = "html_url"
        case description = "description"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case homepage, size
        case stargazersCount = "stargazers_count"
        case watchersCount = "watchers_count"
        case language
        case forksCount = "forks_count"
        case openIssuesCount = "open_issues_count"
        case license
        case allowForking = "allow_forking"
        case topics, visibility, watchers
        case defaultBranch = "default_branch"
        case score
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        fullName = try values.decodeIfPresent(String.self, forKey: .fullName)
        owner = try values.decodeIfPresent(Owner.self, forKey: .owner)
        htmlUrl = try values.decodeIfPresent(String.self, forKey: .htmlUrl)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        homepage = try values.decodeIfPresent(String.self, forKey: .homepage)
        size = try values.decodeIfPresent(Int.self, forKey: .size)
        stargazersCount = try values.decodeIfPresent(Int.self, forKey: .stargazersCount)
        watchersCount = try values.decodeIfPresent(Int.self, forKey: .watchersCount)
        language = try values.decodeIfPresent(String.self, forKey: .language)
        forksCount = try values.decodeIfPresent(Int.self, forKey: .forksCount)
        openIssuesCount = try values.decodeIfPresent(Int.self, forKey: .openIssuesCount)
        license = try values.decodeIfPresent(License.self, forKey: .license)
        allowForking = try values.decodeIfPresent(Bool.self, forKey: .allowForking)
        topics = try values.decodeIfPresent([String].self, forKey: .topics)
        visibility = try values.decodeIfPresent(String.self, forKey: .visibility)
        watchers = try values.decodeIfPresent(Int.self, forKey: .watchers)
        defaultBranch = try values.decodeIfPresent(String.self, forKey: .defaultBranch)
        score = try values.decodeIfPresent(Double.self, forKey: .score)
    }

}

public struct Owner: Codable {
    public let login: String?
    public let id: Int?
    public let avatarUrl: String?
    public let htmlUrl: String?
    public let type: String?

    enum CodingKeys: String, CodingKey {
        case login = "login"
        case id = "id"
        case avatarUrl = "avatar_url"
        case htmlUrl = "html_url"
        case type = "type"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        login = try values.decodeIfPresent(String.self, forKey: .login)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        avatarUrl = try values.decodeIfPresent(String.self, forKey: .avatarUrl)
        htmlUrl = try values.decodeIfPresent(String.self, forKey: .htmlUrl)
        type = try values.decodeIfPresent(String.self, forKey: .type)
    }
}

public struct License: Codable {
    public let name: String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }
}
