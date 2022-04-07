//
//  Vendor.swift
//  AlliantsDevApp
//
//  Created by Sorin Miroiu on 07.04.2022.
//

import Foundation

// MARK: - Vendor
struct Vendor: Codable, Identifiable {
    let id: Int?
    let displayName, name, timezone: String?
    let bookingURL: String?
    let vendorDescription, createdAt, updatedAt, publishedAt: String?
    let displayFrom, expiresAt, startsOn, endsOn: String?
    //let inBrand, insiderTip, bookableByLoyaltyMember, axpVendorID: String?
    //let axpRequestType: String?
    let locale: String?
    //let axpRequestStatus, axpBillingStatus: String?
    let contactInfo: ContactInfo?
    let gallery: [Gallery]?
    //let informationSections: [JSONAny]?
    let openingHours: OpeningHours?
    //let prices: [JSONAny]?
    let meetThe: MeetThe?
    let stayConnected: [StayConnected]?
    let heroImage: HeroImage?
    let vendorTags: [VendorTag]?
    //let localizations: [JSONAny]?
    let propertyID: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case displayName = "display_name"
        case name, timezone
        case bookingURL = "booking_url"
        case vendorDescription = "description"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case publishedAt = "published_at"
        case displayFrom = "display_from"
        case expiresAt = "expires_at"
        case startsOn = "starts_on"
        case endsOn = "ends_on"
        //case inBrand = "in_brand"
        //case insiderTip = "insider_tip"
        //case bookableByLoyaltyMember = "bookable_by_loyalty_member"
        //case axpVendorID = "axp_vendor_id"
        //case axpRequestType = "axp_request_type"
        case locale
        //case axpRequestStatus = "axp_request_status"
        //case axpBillingStatus = "axp_billing_status"
        case contactInfo = "contact_info"
        case gallery
        //case informationSections = "information_sections"
        case openingHours = "opening_hours"
        //case prices
        case meetThe = "meet_the"
        case stayConnected = "stay_connected"
        case heroImage = "hero_image"
        case vendorTags = "vendor_tags"
        //case localizations
        case propertyID = "property_id"
    }
}

extension Vendor {
    static var mockVendor: Vendor {
        Vendor(id: 0, displayName: nil, name: nil, timezone: nil, bookingURL: nil, vendorDescription: nil, createdAt: nil, updatedAt: nil, publishedAt: nil, displayFrom: nil, expiresAt: nil, startsOn: nil, endsOn: nil, locale: nil, contactInfo: nil, gallery: nil, openingHours: nil, meetThe: nil, stayConnected: nil, heroImage: nil, vendorTags: nil, propertyID: nil)
    }
}

// MARK: - ContactInfo
struct ContactInfo: Codable {
    let id: Int?
    let phoneNumber, emailAddress: String?
    let websiteURL: String?
    let location: Location?
    let address: Address?

    enum CodingKeys: String, CodingKey {
        case id
        case phoneNumber = "phone_number"
        case emailAddress = "email_address"
        case websiteURL = "website_url"
        case location, address
    }
}

// MARK: - Address
struct Address: Codable {
    let id: Int?
    let addressLine1: String?
    //let addressLine2: String?
    let city: String?
    //let state: String?
    let postalCode, country: String?
    //let region: String?

    enum CodingKeys: String, CodingKey {
        case id
        case addressLine1 = "address_line_1"
        //case addressLine2 = "address_line_2"
        case city
        //case state
        case postalCode = "postal_code"
        case country
        //case region
    }
}

// MARK: - Location
struct Location: Codable {
    let id: Int?
    let latitude, longitude: Double?
}

// MARK: - Gallery
struct Gallery: Codable {
    let id: Int?
    //let youtubeVideoID: Int?
    let image: HeroImage?

    enum CodingKeys: String, CodingKey {
        case id
        //case youtubeVideoID = "youtube_video_id"
        case image
    }
}

// MARK: - HeroImage
struct HeroImage: Codable {
    let id: Int?
    let name, alternativeText, caption: String?
    let width, height: Int?
    let formats: HeroImageFormats?
    let hash: String?
    //let ext: String?
    //let mime: String?
    let size: Double?
    let url: String?
    //let previewURL: String?
    let provider: String?
    //let providerMetadata: String?
    let createdAt, updatedAt: String?

    enum CodingKeys: String, CodingKey {
        case id, name, alternativeText, caption, width, height, formats, hash, size, url
        //case ext, mime
        //case previewURL = "previewUrl"
        case provider
        //case providerMetadata = "provider_metadata"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}


// MARK: - HeroImageFormats
struct HeroImageFormats: Codable {
    let large, small, medium, thumbnail: Large?
}

// MARK: - Large
struct Large: Codable {
    let ext: String?
    let url: String?
    let hash: String?
    let mime: String?
    let name: String?
    //let path: String?
    let size: Double?
    let width, height: Int?
}

// MARK: - MeetThe
struct MeetThe: Codable {
    let id: Int?
    let title: String?
    let profiles: [Profile]?
}

// MARK: - Profile
struct Profile: Codable {
    let id: Int?
    let title, subtitle, profileDescription: String?
    let image: ProfileImage?

    enum CodingKeys: String, CodingKey {
        case id, title, subtitle
        case profileDescription = "description"
        case image
    }
}

// MARK: - ProfileImage
struct ProfileImage: Codable {
    let id: Int?
    let name, alternativeText, caption: String?
    let width, height: Int?
    let formats: PurpleFormats?
    let hash: String?
    //let ext: String?
    //let mime: String?
    let size: Double?
    let url: String?
    //let previewURL: String?
    let provider: String?
    //let providerMetadata: String?
    let createdAt, updatedAt: String?

    enum CodingKeys: String, CodingKey {
        case id, name, alternativeText, caption, width, height, formats, hash, size, url
        //case ext, mime
        //case previewURL = "previewUrl"
        case provider
        //case providerMetadata = "provider_metadata"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}

// MARK: - PurpleFormats
struct PurpleFormats: Codable {
    let thumbnail: Large?
}

// MARK: - OpeningHours
struct OpeningHours: Codable {
    let id: Int?
    let monday, tuesday, wednesday, thursday, friday: [Day]?
    let saturday, sunday: [Day]?
}

// MARK: - Day
struct Day: Codable {
    let id: Int?
    let opensAt, closesAt: String?
    let closesLate: Bool?

    enum CodingKeys: String, CodingKey {
        case id
        case opensAt = "opens_at"
        case closesAt = "closes_at"
        case closesLate = "closes_late"
    }
}

// MARK: - StayConnected
struct StayConnected: Codable {
    let id: Int?
    let type: String?
    let url: String?
}

// MARK: - VendorTag
struct VendorTag: Codable {
    let id: Int?
    let title, createdAt, updatedAt, locale: String?

    enum CodingKeys: String, CodingKey {
        case id, title
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case locale
    }
}
