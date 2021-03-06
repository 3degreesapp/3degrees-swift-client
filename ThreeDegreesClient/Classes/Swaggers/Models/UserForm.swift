//
// UserForm.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class UserForm: JSONEncodable {
    /** When specified, the user will be created/updated based on the FB account settings */
    public var fbAccessToken: String?
    /** When specified, the user will be created/updated based on the FB account settings */
    public var fbAuthCode: String?
    public var user: PrivateUser?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["fb_access_token"] = self.fbAccessToken
        nillableDictionary["fb_auth_code"] = self.fbAuthCode
        nillableDictionary["user"] = self.user?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
