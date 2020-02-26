//
// Pet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Pet: JSONEncodable {
    public enum Status: String {
        case available = "available"
        case pending = "pending"
        case sold = "sold"
    }
    public var id: Int64?
    public var name: String
    /** pet status in the store */
    public var status: Status?
    public var part: [OneOfPetPartItems]?


    public init(id: Int64?=nil, name: String, status: Status?=nil, part: [OneOfPetPartItems]?=nil) {
        self.id = id
        self.name = name
        self.status = status
        self.part = part
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["part"] = self.part?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
