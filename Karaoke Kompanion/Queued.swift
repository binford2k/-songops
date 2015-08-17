//
//  Queued.swift
//  Karaoke Kompanion
//
//  Created by Michael Smith on 7/11/15.
//  Copyright (c) 2015 Simple Things. All rights reserved.
//

import Foundation

struct Queued {
    let title: String
    let artist: String

    let play_id: String?
    let position: Int?
    let duration: Int?
    let song_id: Int?
    let paused: String?

    init(json: Dictionary<String,AnyObject>) {
        self.title = json["title"] as! String
        self.artist = json["artist"] as! String

        self.play_id = json["play_id"] as? String
        self.position = json["position"] as? Int
        self.duration = json["duration"] as? Int
        self.song_id = json["song_id"] as? Int
        self.paused = json["paused"] as? String
    }
}