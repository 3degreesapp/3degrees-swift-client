//
// Activity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An entry in a user&#39;s activity list */
public class Activity: JSONEncodable {
    public var attributes: ActivityAttributes?
    /** The URL of the icon to show next the activity entry */
    public var icon: String?
    /** A unique identifier for this activity */
    public var id: Int32?
    /** The text that describes the activity that was performed */
    public var message: String?
    public var originUser: BaseUser?
    /** The ways to respond to the activity */
    public var responses: [ActivityResponse]?
    public var timestamp: NSDate?
    public var viewed: Bool?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["attributes"] = self.attributes?.encodeToJSON()
        nillableDictionary["icon"] = self.icon
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["message"] = self.message
        nillableDictionary["origin_user"] = self.originUser?.encodeToJSON()
        nillableDictionary["responses"] = self.responses?.encodeToJSON()
        nillableDictionary["timestamp"] = self.timestamp?.encodeToJSON()
        nillableDictionary["viewed"] = self.viewed
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
