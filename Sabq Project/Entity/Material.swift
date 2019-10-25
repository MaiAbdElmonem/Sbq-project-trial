//
//	Material.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Material : Decodable {

//    let attachements : [String]?
//    let authorCity : String?
    let authorImg : String?
    let authorName : String?
//    let authors : [String]?
//    let categoryName : String?
//    let city : String?
//    let comments : [String]?
//    let commentsEnabled : Bool?
//    let commentsMaxCharacters : Int?
//    let commentsMinCharacters : Int?
    let coverPhoto : String?
//    let coverPhotoCaption : String?
//    let descriptionField : String?
    let descriptionString : String?
//    let hasRelatedMaterials : Bool?
//    let id : String?
//    let images : [String]?
//    let imagesCount : Int?
//    let isEdit : Bool?
//    let liked : Bool?
//    let matarialDisplayed : String?
//    let materialType : String?
//    let materialUpdated : Bool?
//    let multipleAuthors : Bool?
//    let noOfComments : Int?
//    let noOfLikes : Int?
//    let noOfShares : Int?
    let noOfViews : Int?
//    let parentCategoryName : String?
    let publishDate : String?
//    let publishDateHijryDate : String?
//    let readLater : Bool?
//    let relatedMaterials : [String]?
//    let secondaryTitle : String?
//    let tags : [Tag]?
    let title : String?
//    let updateDate : String?
//    let updateDateHijryDate : String?
//    let updates : [String]?
//    let url : String?
//    let videos : [String]?
//    let videosCount : Int?

//
//    enum CodingKeys: String, CodingKey {
//        case attachements = "attachements"
//        case authorCity = "authorCity"
//        case authorImg = "authorImg"
//        case authorName = "authorName"
//        case authors = "authors"
//        case categoryName = "categoryName"
//        case city = "city"
//        case comments = "comments"
//        case commentsEnabled = "commentsEnabled"
//        case commentsMaxCharacters = "commentsMaxCharacters"
//        case commentsMinCharacters = "commentsMinCharacters"
//        case coverPhoto = "coverPhoto"
//        case coverPhotoCaption = "coverPhotoCaption"
//        case descriptionField = "description"
//        case descriptionString = "descriptionString"
//        case hasRelatedMaterials = "hasRelatedMaterials"
//        case id = "id"
//        case images = "images"
//        case imagesCount = "imagesCount"
//        case isEdit = "isEdit"
//        case liked = "liked"
//        case matarialDisplayed = "matarialDisplayed"
//        case materialType = "materialType"
//        case materialUpdated = "materialUpdated"
//        case multipleAuthors = "multipleAuthors"
//        case noOfComments = "noOfComments"
//        case noOfLikes = "noOfLikes"
//        case noOfShares = "noOfShares"
//        case noOfViews = "noOfViews"
//        case parentCategoryName = "parentCategoryName"
//        case publishDate = "publishDate"
//        case publishDateHijryDate = "publishDateHijryDate"
//        case readLater = "readLater"
//        case relatedMaterials = "relatedMaterials"
//        case secondaryTitle = "secondaryTitle"
//        case tags = "tags"
//        case title = "title"
//        case updateDate = "updateDate"
//        case updateDateHijryDate = "updateDateHijryDate"
//        case updates = "updates"
//        case url = "url"
//        case videos = "videos"
//        case videosCount = "videosCount"
//    }
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        attachements = try values.decodeIfPresent([String].self, forKey: .attachements)
//        authorCity = try values.decodeIfPresent(String.self, forKey: .authorCity)
//        authorImg = try values.decodeIfPresent(String.self, forKey: .authorImg)
//        authorName = try values.decodeIfPresent(String.self, forKey: .authorName)
//        authors = try values.decodeIfPresent([String].self, forKey: .authors)
//        categoryName = try values.decodeIfPresent(String.self, forKey: .categoryName)
//        city = try values.decodeIfPresent(String.self, forKey: .city)
//        comments = try values.decodeIfPresent([String].self, forKey: .comments)
//        commentsEnabled = try values.decodeIfPresent(Bool.self, forKey: .commentsEnabled)
//        commentsMaxCharacters = try values.decodeIfPresent(Int.self, forKey: .commentsMaxCharacters)
//        commentsMinCharacters = try values.decodeIfPresent(Int.self, forKey: .commentsMinCharacters)
//        coverPhoto = try values.decodeIfPresent(String.self, forKey: .coverPhoto)
//        coverPhotoCaption = try values.decodeIfPresent(String.self, forKey: .coverPhotoCaption)
//        descriptionField = try values.decodeIfPresent(String.self, forKey: .descriptionField)
//        descriptionString = try values.decodeIfPresent(String.self, forKey: .descriptionString)
//        hasRelatedMaterials = try values.decodeIfPresent(Bool.self, forKey: .hasRelatedMaterials)
//        id = try values.decodeIfPresent(String.self, forKey: .id)
//        images = try values.decodeIfPresent([String].self, forKey: .images)
//        imagesCount = try values.decodeIfPresent(Int.self, forKey: .imagesCount)
//        isEdit = try values.decodeIfPresent(Bool.self, forKey: .isEdit)
//        liked = try values.decodeIfPresent(Bool.self, forKey: .liked)
//        matarialDisplayed = try values.decodeIfPresent(String.self, forKey: .matarialDisplayed)
//        materialType = try values.decodeIfPresent(String.self, forKey: .materialType)
//        materialUpdated = try values.decodeIfPresent(Bool.self, forKey: .materialUpdated)
//        multipleAuthors = try values.decodeIfPresent(Bool.self, forKey: .multipleAuthors)
//        noOfComments = try values.decodeIfPresent(Int.self, forKey: .noOfComments)
//        noOfLikes = try values.decodeIfPresent(Int.self, forKey: .noOfLikes)
//        noOfShares = try values.decodeIfPresent(Int.self, forKey: .noOfShares)
//        noOfViews = try values.decodeIfPresent(Int.self, forKey: .noOfViews)
//        parentCategoryName = try values.decodeIfPresent(String.self, forKey: .parentCategoryName)
//        publishDate = try values.decodeIfPresent(String.self, forKey: .publishDate)
//        publishDateHijryDate = try values.decodeIfPresent(String.self, forKey: .publishDateHijryDate)
//        readLater = try values.decodeIfPresent(Bool.self, forKey: .readLater)
//        relatedMaterials = try values.decodeIfPresent([String].self, forKey: .relatedMaterials)
//        secondaryTitle = try values.decodeIfPresent(String.self, forKey: .secondaryTitle)
//        tags = try values.decodeIfPresent([Tag].self, forKey: .tags)
//        title = try values.decodeIfPresent(String.self, forKey: .title)
//        updateDate = try values.decodeIfPresent(String.self, forKey: .updateDate)
//        updateDateHijryDate = try values.decodeIfPresent(String.self, forKey: .updateDateHijryDate)
//        updates = try values.decodeIfPresent([String].self, forKey: .updates)
//        url = try values.decodeIfPresent(String.self, forKey: .url)
//        videos = try values.decodeIfPresent([String].self, forKey: .videos)
//        videosCount = try values.decodeIfPresent(Int.self, forKey: .videosCount)
//    }
//

}
