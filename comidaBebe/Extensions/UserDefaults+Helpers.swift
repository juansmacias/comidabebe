//
//  UserDefaults+Helpers.swift
//  comidaBebe
//
//  Created by Juan Macias on 1/15/24.
//

import Foundation

enum UserDefaultsErrors:Error {
    case ErrorDecodingElement
}

extension UserDefaults {
    // MARK: - Types
    
    private enum Keys {
        static let feedingDays = "feedingDays"
    }
    
    // MARK: - Public API
    
    @objc var feedingDays:Data? {
        get {
            data(forKey: Keys.feedingDays)
        }
        set {
            set(newValue, forKey: Keys.feedingDays)
        }
    }
    
    func addFeedingDay(_ feedingDay: FeedingDay) throws {
        do {
            guard var arrFeedingDays = try decode(
                [FeedingDay].self,
                forKey: Keys.feedingDays
            ) else {
                throw UserDefaultsErrors.ErrorDecodingElement
            }
            
            arrFeedingDays.append(feedingDay)
            
            try encode(arrFeedingDays, forKey: Keys.feedingDays)
                    
        } catch{
            throw error
        }
    }
}

fileprivate extension UserDefaults {

    func decode<T: Decodable>(_ type: T.Type, forKey key: String) throws -> T? {
        guard let data = data(forKey: key) else {
            return nil
        }

        return try? JSONDecoder().decode(type, from: data)
    }

    func encode<T: Encodable>(_ value: T, forKey key: String) throws {
        let data = try JSONEncoder().encode(value)

        set(data, forKey: key)
    }

}
