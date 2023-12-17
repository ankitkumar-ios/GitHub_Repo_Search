//
//  CloudRepo.swift
//  GitHub_Repo_Search
//
//  Created by Ankit Kumar on 16/12/23.
//

import UIKit
import CloudServices

protocol ICloudRepo {
    func getRepositoryList(for query: String, completion: @escaping (Result<SearchResponse, ServiceError>) -> Void)
}

class CloudRepo: ICloudRepo {
    func getRepositoryList(for query: String, completion: @escaping (Result<SearchResponse, ServiceError>) -> Void ) {
        let service = SearchService()
        completion(.success(MockResponse().getSearchSuccessResponse()))
//        service.getRepositoryList(for: query, completion: completion)
    }
}

fileprivate class MockResponse {
    let searchResponseSuccess = """
{
  "total_count": 1254741,
  "incomplete_results": false,
  "items": [
    {
      "id": 21700699,
      "node_id": "MDEwOlJlcG9zaXRvcnkyMTcwMDY5OQ==",
      "name": "awesome-ios",
      "full_name": "vsouza/awesome-ios",
      "private": false,
      "owner": {
        "login": "vsouza",
        "id": 484656,
        "node_id": "MDQ6VXNlcjQ4NDY1Ng==",
        "avatar_url": "https://avatars.githubusercontent.com/u/484656?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/vsouza",
        "html_url": "https://github.com/vsouza",
        "followers_url": "https://api.github.com/users/vsouza/followers",
        "following_url": "https://api.github.com/users/vsouza/following{/other_user}",
        "gists_url": "https://api.github.com/users/vsouza/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/vsouza/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/vsouza/subscriptions",
        "organizations_url": "https://api.github.com/users/vsouza/orgs",
        "repos_url": "https://api.github.com/users/vsouza/repos",
        "events_url": "https://api.github.com/users/vsouza/events{/privacy}",
        "received_events_url": "https://api.github.com/users/vsouza/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/vsouza/awesome-ios",
      "description": "A curated list",
      "fork": false,
      "url": "https://api.github.com/repos/vsouza/awesome-ios",
      "forks_url": "https://api.github.com/repos/vsouza/awesome-ios/forks",
      "keys_url": "https://api.github.com/repos/vsouza/awesome-ios/keys{/key_id}",
      "collaborators_url": "https://api.github.com/repos/vsouza/awesome-ios/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/vsouza/awesome-ios/teams",
      "hooks_url": "https://api.github.com/repos/vsouza/awesome-ios/hooks",
      "issue_events_url": "https://api.github.com/repos/vsouza/awesome-ios/issues/events{/number}",
      "events_url": "https://api.github.com/repos/vsouza/awesome-ios/events",
      "assignees_url": "https://api.github.com/repos/vsouza/awesome-ios/assignees{/user}",
      "branches_url": "https://api.github.com/repos/vsouza/awesome-ios/branches{/branch}",
      "tags_url": "https://api.github.com/repos/vsouza/awesome-ios/tags",
      "blobs_url": "https://api.github.com/repos/vsouza/awesome-ios/git/blobs{/sha}",
      "git_tags_url": "https://api.github.com/repos/vsouza/awesome-ios/git/tags{/sha}",
      "git_refs_url": "https://api.github.com/repos/vsouza/awesome-ios/git/refs{/sha}",
      "trees_url": "https://api.github.com/repos/vsouza/awesome-ios/git/trees{/sha}",
      "statuses_url": "https://api.github.com/repos/vsouza/awesome-ios/statuses/{sha}",
      "languages_url": "https://api.github.com/repos/vsouza/awesome-ios/languages",
      "stargazers_url": "https://api.github.com/repos/vsouza/awesome-ios/stargazers",
      "contributors_url": "https://api.github.com/repos/vsouza/awesome-ios/contributors",
      "subscribers_url": "https://api.github.com/repos/vsouza/awesome-ios/subscribers",
      "subscription_url": "https://api.github.com/repos/vsouza/awesome-ios/subscription",
      "commits_url": "https://api.github.com/repos/vsouza/awesome-ios/commits{/sha}",
      "git_commits_url": "https://api.github.com/repos/vsouza/awesome-ios/git/commits{/sha}",
      "comments_url": "https://api.github.com/repos/vsouza/awesome-ios/comments{/number}",
      "issue_comment_url": "https://api.github.com/repos/vsouza/awesome-ios/issues/comments{/number}",
      "contents_url": "https://api.github.com/repos/vsouza/awesome-ios/contents/{+path}",
      "compare_url": "https://api.github.com/repos/vsouza/awesome-ios/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/vsouza/awesome-ios/merges",
      "archive_url": "https://api.github.com/repos/vsouza/awesome-ios/{archive_format}{/ref}",
      "downloads_url": "https://api.github.com/repos/vsouza/awesome-ios/downloads",
      "issues_url": "https://api.github.com/repos/vsouza/awesome-ios/issues{/number}",
      "pulls_url": "https://api.github.com/repos/vsouza/awesome-ios/pulls{/number}",
      "milestones_url": "https://api.github.com/repos/vsouza/awesome-ios/milestones{/number}",
      "notifications_url": "https://api.github.com/repos/vsouza/awesome-ios/notifications{?since,all,participating}",
      "labels_url": "https://api.github.com/repos/vsouza/awesome-ios/labels{/name}",
      "releases_url": "https://api.github.com/repos/vsouza/awesome-ios/releases{/id}",
      "deployments_url": "https://api.github.com/repos/vsouza/awesome-ios/deployments",
      "created_at": "2014-07-10T16:03:45Z",
      "updated_at": "2023-12-15T07:28:38Z",
      "pushed_at": "2023-12-07T04:23:37Z",
      "git_url": "git://github.com/vsouza/awesome-ios.git",
      "ssh_url": "git@github.com:vsouza/awesome-ios.git",
      "clone_url": "https://github.com/vsouza/awesome-ios.git",
      "svn_url": "https://github.com/vsouza/awesome-ios",
      "homepage": "http://awesomeios.com",
      "size": 13423,
      "stargazers_count": 44626,
      "watchers_count": 44626,
      "language": "Swift",
      "has_issues": true,
      "has_projects": false,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": false,
      "has_discussions": false,
      "forks_count": 6902,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 11,
      "license": {
        "key": "mit",
        "name": "MIT License",
        "spdx_id": "MIT",
        "url": "https://api.github.com/licenses/mit",
        "node_id": "MDc6TGljZW5zZTEz"
      },
      "allow_forking": true,
      "is_template": false,
      "web_commit_signoff_required": false,
      "topics": [
        "apple-swift",
        "arkit",
        "awesome",
        "ios",
        "ios-animation",
        "ios-libraries",
        "objective-c",
        "objective-c-library",
        "swift-extensions",
        "swift-framework",
        "swift-language",
        "swift-library",
        "swift-programming"
      ],
      "visibility": "public",
      "forks": 6902,
      "open_issues": 11,
      "watchers": 44626,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 22458259,
      "node_id": "MDEwOlJlcG9zaXRvcnkyMjQ1ODI1OQ==",
      "name": "Alamofire",
      "full_name": "Alamofire/Alamofire",
      "private": false,
      "owner": {
        "login": "Alamofire",
        "id": 7774181,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjc3NzQxODE=",
        "avatar_url": "https://avatars.githubusercontent.com/u/7774181?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Alamofire",
        "html_url": "https://github.com/Alamofire",
        "followers_url": "https://api.github.com/users/Alamofire/followers",
        "following_url": "https://api.github.com/users/Alamofire/following{/other_user}",
        "gists_url": "https://api.github.com/users/Alamofire/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/Alamofire/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/Alamofire/subscriptions",
        "organizations_url": "https://api.github.com/users/Alamofire/orgs",
        "repos_url": "https://api.github.com/users/Alamofire/repos",
        "events_url": "https://api.github.com/users/Alamofire/events{/privacy}",
        "received_events_url": "https://api.github.com/users/Alamofire/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/Alamofire/Alamofire",
      "description": "Elegant HTTP Networking in Swift",
      "fork": false,
      "url": "https://api.github.com/repos/Alamofire/Alamofire",
      "forks_url": "https://api.github.com/repos/Alamofire/Alamofire/forks",
      "keys_url": "https://api.github.com/repos/Alamofire/Alamofire/keys{/key_id}",
      "collaborators_url": "https://api.github.com/repos/Alamofire/Alamofire/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/Alamofire/Alamofire/teams",
      "hooks_url": "https://api.github.com/repos/Alamofire/Alamofire/hooks",
      "issue_events_url": "https://api.github.com/repos/Alamofire/Alamofire/issues/events{/number}",
      "events_url": "https://api.github.com/repos/Alamofire/Alamofire/events",
      "assignees_url": "https://api.github.com/repos/Alamofire/Alamofire/assignees{/user}",
      "branches_url": "https://api.github.com/repos/Alamofire/Alamofire/branches{/branch}",
      "tags_url": "https://api.github.com/repos/Alamofire/Alamofire/tags",
      "blobs_url": "https://api.github.com/repos/Alamofire/Alamofire/git/blobs{/sha}",
      "git_tags_url": "https://api.github.com/repos/Alamofire/Alamofire/git/tags{/sha}",
      "git_refs_url": "https://api.github.com/repos/Alamofire/Alamofire/git/refs{/sha}",
      "trees_url": "https://api.github.com/repos/Alamofire/Alamofire/git/trees{/sha}",
      "statuses_url": "https://api.github.com/repos/Alamofire/Alamofire/statuses/{sha}",
      "languages_url": "https://api.github.com/repos/Alamofire/Alamofire/languages",
      "stargazers_url": "https://api.github.com/repos/Alamofire/Alamofire/stargazers",
      "contributors_url": "https://api.github.com/repos/Alamofire/Alamofire/contributors",
      "subscribers_url": "https://api.github.com/repos/Alamofire/Alamofire/subscribers",
      "subscription_url": "https://api.github.com/repos/Alamofire/Alamofire/subscription",
      "commits_url": "https://api.github.com/repos/Alamofire/Alamofire/commits{/sha}",
      "git_commits_url": "https://api.github.com/repos/Alamofire/Alamofire/git/commits{/sha}",
      "comments_url": "https://api.github.com/repos/Alamofire/Alamofire/comments{/number}",
      "issue_comment_url": "https://api.github.com/repos/Alamofire/Alamofire/issues/comments{/number}",
      "contents_url": "https://api.github.com/repos/Alamofire/Alamofire/contents/{+path}",
      "compare_url": "https://api.github.com/repos/Alamofire/Alamofire/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/Alamofire/Alamofire/merges",
      "archive_url": "https://api.github.com/repos/Alamofire/Alamofire/{archive_format}{/ref}",
      "downloads_url": "https://api.github.com/repos/Alamofire/Alamofire/downloads",
      "issues_url": "https://api.github.com/repos/Alamofire/Alamofire/issues{/number}",
      "pulls_url": "https://api.github.com/repos/Alamofire/Alamofire/pulls{/number}",
      "milestones_url": "https://api.github.com/repos/Alamofire/Alamofire/milestones{/number}",
      "notifications_url": "https://api.github.com/repos/Alamofire/Alamofire/notifications{?since,all,participating}",
      "labels_url": "https://api.github.com/repos/Alamofire/Alamofire/labels{/name}",
      "releases_url": "https://api.github.com/repos/Alamofire/Alamofire/releases{/id}",
      "deployments_url": "https://api.github.com/repos/Alamofire/Alamofire/deployments",
      "created_at": "2014-07-31T05:56:19Z",
      "updated_at": "2023-12-15T02:03:31Z",
      "pushed_at": "2023-12-10T18:46:51Z",
      "git_url": "git://github.com/Alamofire/Alamofire.git",
      "ssh_url": "git@github.com:Alamofire/Alamofire.git",
      "clone_url": "https://github.com/Alamofire/Alamofire.git",
      "svn_url": "https://github.com/Alamofire/Alamofire",
      "homepage": "",
      "size": 34015,
      "stargazers_count": 40023,
      "watchers_count": 40023,
      "language": "Swift",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": true,
      "has_discussions": true,
      "forks_count": 7527,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 39,
      "license": {
        "key": "mit",
        "name": "MIT License",
        "spdx_id": "MIT",
        "url": "https://api.github.com/licenses/mit",
        "node_id": "MDc6TGljZW5zZTEz"
      },
      "allow_forking": true,
      "is_template": false,
      "web_commit_signoff_required": false,
      "topics": [
        "alamofire",
        "carthage",
        "certificate-pinning",
        "cocoapods",
        "httpurlresponse",
        "networking",
        "parameter-encoding",
        "public-key-pinning",
        "request",
        "response",
        "swift",
        "swift-package-manager",
        "urlrequest",
        "urlsession",
        "xcode"
      ],
      "visibility": "public",
      "forks": 7527,
      "open_issues": 39,
      "watchers": 40023,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 21700692,
      "node_id": "MDEwOlJlcG9zaXRvcnkyMTcwMDY5OQ=1",
      "name": "awesome-ios",
      "full_name": "vsouza/awesome-ios",
      "private": false,
      "owner": {
        "login": "vsouza",
        "id": 484656,
        "node_id": "MDQ6VXNlcjQ4NDY1Ng==",
        "avatar_url": "https://avatars.githubusercontent.com/u/484656?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/vsouza",
        "html_url": "https://github.com/vsouza",
        "followers_url": "https://api.github.com/users/vsouza/followers",
        "following_url": "https://api.github.com/users/vsouza/following{/other_user}",
        "gists_url": "https://api.github.com/users/vsouza/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/vsouza/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/vsouza/subscriptions",
        "organizations_url": "https://api.github.com/users/vsouza/orgs",
        "repos_url": "https://api.github.com/users/vsouza/repos",
        "events_url": "https://api.github.com/users/vsouza/events{/privacy}",
        "received_events_url": "https://api.github.com/users/vsouza/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/vsouza/awesome-ios",
      "description": "A curated list of awesome iOS ecosystem, including Objective-C and Swift Projects ",
      "fork": false,
      "url": "https://api.github.com/repos/vsouza/awesome-ios",
      "forks_url": "https://api.github.com/repos/vsouza/awesome-ios/forks",
      "keys_url": "https://api.github.com/repos/vsouza/awesome-ios/keys{/key_id}",
      "collaborators_url": "https://api.github.com/repos/vsouza/awesome-ios/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/vsouza/awesome-ios/teams",
      "hooks_url": "https://api.github.com/repos/vsouza/awesome-ios/hooks",
      "issue_events_url": "https://api.github.com/repos/vsouza/awesome-ios/issues/events{/number}",
      "events_url": "https://api.github.com/repos/vsouza/awesome-ios/events",
      "assignees_url": "https://api.github.com/repos/vsouza/awesome-ios/assignees{/user}",
      "branches_url": "https://api.github.com/repos/vsouza/awesome-ios/branches{/branch}",
      "tags_url": "https://api.github.com/repos/vsouza/awesome-ios/tags",
      "blobs_url": "https://api.github.com/repos/vsouza/awesome-ios/git/blobs{/sha}",
      "git_tags_url": "https://api.github.com/repos/vsouza/awesome-ios/git/tags{/sha}",
      "git_refs_url": "https://api.github.com/repos/vsouza/awesome-ios/git/refs{/sha}",
      "trees_url": "https://api.github.com/repos/vsouza/awesome-ios/git/trees{/sha}",
      "statuses_url": "https://api.github.com/repos/vsouza/awesome-ios/statuses/{sha}",
      "languages_url": "https://api.github.com/repos/vsouza/awesome-ios/languages",
      "stargazers_url": "https://api.github.com/repos/vsouza/awesome-ios/stargazers",
      "contributors_url": "https://api.github.com/repos/vsouza/awesome-ios/contributors",
      "subscribers_url": "https://api.github.com/repos/vsouza/awesome-ios/subscribers",
      "subscription_url": "https://api.github.com/repos/vsouza/awesome-ios/subscription",
      "commits_url": "https://api.github.com/repos/vsouza/awesome-ios/commits{/sha}",
      "git_commits_url": "https://api.github.com/repos/vsouza/awesome-ios/git/commits{/sha}",
      "comments_url": "https://api.github.com/repos/vsouza/awesome-ios/comments{/number}",
      "issue_comment_url": "https://api.github.com/repos/vsouza/awesome-ios/issues/comments{/number}",
      "contents_url": "https://api.github.com/repos/vsouza/awesome-ios/contents/{+path}",
      "compare_url": "https://api.github.com/repos/vsouza/awesome-ios/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/vsouza/awesome-ios/merges",
      "archive_url": "https://api.github.com/repos/vsouza/awesome-ios/{archive_format}{/ref}",
      "downloads_url": "https://api.github.com/repos/vsouza/awesome-ios/downloads",
      "issues_url": "https://api.github.com/repos/vsouza/awesome-ios/issues{/number}",
      "pulls_url": "https://api.github.com/repos/vsouza/awesome-ios/pulls{/number}",
      "milestones_url": "https://api.github.com/repos/vsouza/awesome-ios/milestones{/number}",
      "notifications_url": "https://api.github.com/repos/vsouza/awesome-ios/notifications{?since,all,participating}",
      "labels_url": "https://api.github.com/repos/vsouza/awesome-ios/labels{/name}",
      "releases_url": "https://api.github.com/repos/vsouza/awesome-ios/releases{/id}",
      "deployments_url": "https://api.github.com/repos/vsouza/awesome-ios/deployments",
      "created_at": "2014-07-10T16:03:45Z",
      "updated_at": "2023-12-15T07:28:38Z",
      "pushed_at": "2023-12-07T04:23:37Z",
      "git_url": "git://github.com/vsouza/awesome-ios.git",
      "ssh_url": "git@github.com:vsouza/awesome-ios.git",
      "clone_url": "https://github.com/vsouza/awesome-ios.git",
      "svn_url": "https://github.com/vsouza/awesome-ios",
      "homepage": "http://awesomeios.com",
      "size": 13423,
      "stargazers_count": 44626,
      "watchers_count": 44626,
      "language": "Swift",
      "has_issues": true,
      "has_projects": false,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": false,
      "has_discussions": false,
      "forks_count": 6902,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 11,
      "license": {
        "key": "mit",
        "name": "MIT License",
        "spdx_id": "MIT",
        "url": "https://api.github.com/licenses/mit",
        "node_id": "MDc6TGljZW5zZTEz"
      },
      "allow_forking": true,
      "is_template": false,
      "web_commit_signoff_required": false,
      "topics": [
        "apple-swift",
        "arkit",
        "awesome",
        "ios",
        "ios-animation",
        "ios-libraries",
        "objective-c",
        "objective-c-library",
        "swift-extensions",
        "swift-framework",
        "swift-language",
        "swift-library",
        "swift-programming"
      ],
      "visibility": "public",
      "forks": 6902,
      "open_issues": 11,
      "watchers": 44626,
      "default_branch": "master",
      "score": 1.0
    }]
}
"""

    let searchResponseLimitExceed = """
{"message":"API rate limit exceeded for 122.161.50.239. (But here's the good news: Authenticated requests get a higher rate limit. Check out the documentation for more details.)","documentation_url":"https://docs.github.com/rest/overview/resources-in-the-rest-api#rate-limiting"}
"""
}

extension MockResponse {
    func getSearchSuccessResponse() -> SearchResponse {
        let data = searchResponseSuccess.data(using: .utf8)
        guard let expectedResponse = TestUtil.decodeSearchJSON(data: data) else {
            fatalError("Couldn't decode existing JSON string")
        }
        return expectedResponse
    }

    func getSearchRateLimitExceedResponse() -> SearchResponse {
        let data = searchResponseLimitExceed.data(using: .utf8)
        guard let expectedResponse = TestUtil.decodeSearchJSON(data: data) else {
            fatalError("Couldn't decode existing JSON string")
        }
        return expectedResponse
    }
}

fileprivate class TestUtil {
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

