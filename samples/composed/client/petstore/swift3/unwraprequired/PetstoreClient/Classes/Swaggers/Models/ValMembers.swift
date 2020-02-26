//
// ValMembers.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Business Term: Scheme Members Definition: Information about the Members of the Scheme. Purpose: To have enough information to be able to produce a Statement of Account indicating premium due. */
open class ValMembers: JSONEncodable {
    /** Business Term: Scheme Member Definition: Information about a Member of the Scheme. Purpose: To have enough information to be able to produce a Statement of Account indicating premium due. */
    public var valMember: [OneOfvalMembersValMemberItems]


    public init(valMember: [OneOfvalMembersValMemberItems]) {
        self.valMember = valMember
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["val_member"] = self.valMember.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
