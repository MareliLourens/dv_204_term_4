//
//  Characters.swift
//  Cosplay_Central
//
//  Created by lecturer on 2023/11/04.
//

import Foundation

struct Characters: Identifiable{
    var id = UUID()
    var image : String
    var name : String
    var description : String
    var long_description : String
    var creator: String
    var rarity: Int
    var rarity_img: String
    var region: String
    var element: String
    var hair: String
    var shirt: String
    var pants:String
    var shoes: String
}



let Character_data: [Characters] = [
    Characters(
        image: "Albedo_Image",
        name: "Albedo",
        description: "A synthetic human made by the alchemist Rhinedottir",
        long_description: "A synthetic human made by the alchemist Rhinedottir, the mysterious Albedo is the Chief Alchemist and Captain of the Investigation Team of the Knights of Favonius.",
        creator: "Hoyoverse",
        rarity: 5,
        rarity_img: "5_Stars",
        region: "Mondstadt",
        element: "Geo",
        hair: "Wig",
        shirt: "Shirt",
        pants: "Pants",
        shoes: "Shoes"
    ),
    Characters(
        image: "Aloy_Image",
        name: "Aloy",
        description: "She is the heroine from Horizon Zero Dawn",
        long_description: "A synthetic human made by the alchemist Rhinedottir, the mysterious Albedo is the Chief Alchemist and Captain of the Investigation Team of the Knights of Favonius.",
        creator: "Hoyoverse",
        rarity: 4,
        rarity_img: "4_Stars",
        region: "Mondstadt",
        element: "Cryo",
        hair: "Wig",
        shirt: "Shirt",
        pants: "Pants",
        shoes: "Shoes"
    ),
    Characters(
        image: "Arataki_Itto_Image",
        name: "Arataki Itto",
        description: "A loud and proud descendant of \nthe crimson oni",
        long_description: "A synthetic human made by the alchemist Rhinedottir, the mysterious Albedo is the Chief Alchemist and Captain of the Investigation Team of the Knights of Favonius.",
        creator: "Hoyoverse",
        rarity: 5,
        rarity_img: "5_Stars",
        region: "Inazuma",
        element: "Geo",
        hair: "Wig",
        shirt: "Shirt",
        pants: "Pants",
        shoes: "Shoes"
    ),
    Characters(
        image: "Ayaka_Image",
        name: "Ayaka",
        description: "She is in charge of the internal and external affairs",
        long_description: "A synthetic human made by the alchemist Rhinedottir, the mysterious Albedo is the Chief Alchemist and Captain of the Investigation Team of the Knights of Favonius.",
        creator: "Hoyoverse",
        rarity: 5,
        rarity_img: "5_Stars",
        region: "Inazuma",
        element: "Cryo",
        hair: "Wig",
        shirt: "Shirt",
        pants: "Pants",
        shoes: "Shoes"
    ),
    Characters(
        image: "Ayato_Image",
        name: "Ayato",
        description: "He is the current head of the Kamisato Clan",
        long_description: "A synthetic human made by the alchemist Rhinedottir, the mysterious Albedo is the Chief Alchemist and Captain of the Investigation Team of the Knights of Favonius.",
        creator: "Hoyoverse",
        rarity: 5,
        rarity_img: "5_Stars",
        region: "Inazuma",
        element: "Hydro",
        hair: "Wig",
        shirt: "Shirt",
        pants: "Pants",
        shoes: "Shoes"
    ),
    Characters(
        image: "Barbara_Image",
        name: "Barbara",
        description: "She is the deaconess of the Church of Favonius",
        long_description: "A synthetic human made by the alchemist Rhinedottir, the mysterious Albedo is the Chief Alchemist and Captain of the Investigation Team of the Knights of Favonius.",
        creator: "Hoyoverse",
        rarity: 4,
        rarity_img: "4_Stars",
        region: "Mondstadt",
        element: "Hydro",
        hair: "Wig",
        shirt: "Shirt",
        pants: "Pants",
        shoes: "Shoes"
    ),
    Characters(
        image: "Beidou_Image",
        name: "Beidou",
        description: "She is the captain of The Crux, a renowned crew in Liyue.",
        long_description: "A synthetic human made by the alchemist Rhinedottir, the mysterious Albedo is the Chief Alchemist and Captain of the Investigation Team of the Knights of Favonius.",
        creator: "Hoyoverse",
        rarity: 4,
        rarity_img: "4_Stars",
        region: "Liyue",
        element: "Electro",
        hair: "Wig",
        shirt: "Shirt",
        pants: "Pants",
        shoes: "Shoes"
    )
]
