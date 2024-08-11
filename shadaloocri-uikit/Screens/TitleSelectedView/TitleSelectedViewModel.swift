//
//  TitleSelectedViewModel.swift
//  shadaloocri-uikit
//
//  Created by Andres Rechimon on 10/08/2024.
//

import Foundation

class TitleSelectedViewModel {
    let characters: [SFCharacter] = [
        //SSF2T
        SFCharacter(title: .SSF2T, avatar: "ssf2t-balrog", name: "Balrog"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-bison", name: "M.Bison"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-blanka", name: "Blanka"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-cammy", name: "Cammy"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-chunli", name: "Chun-Li"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-deejay", name: "Deejay"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-dhalsim", name: "Dhalsim"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-feilong", name: "Fei-Long"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-guile", name: "Guile"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-honda", name: "E.Honda"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-ken", name: "Ken"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-ryu", name: "Ryu"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-sagat", name: "Sagat"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-thawk", name: "T.Hawk"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-vega", name: "Vega"),
        SFCharacter(title: .SSF2T, avatar: "ssf2t-zangief", name: "Zangief"),
        //SSF2T
        
        //SF3TI
        SFCharacter(title: .SF3TI, avatar: "sf3ti-akuma", name: "Akuma"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-alex", name: "Alex"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-chunli", name: "Chun-Li"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-dudley", name: "Dudley"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-elena", name: "Elena"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-hugo", name: "Hugo"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-ibuki", name: "Ibuki"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-ken", name: "Ken"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-makoto", name: "Makoto"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-q", name: "Q"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-necro", name: "Necro"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-oro", name: "Oro"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-remy", name: "Remy"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-ryu", name: "Ryu"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-sean", name: "Sean"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-twelve", name: "Twelve"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-urien", name: "Urien"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-yang", name: "Yang"),
        SFCharacter(title: .SF3TI, avatar: "sf3ti-yun", name: "Yun"),
        //SF3TI
        
        //USFIV
        SFCharacter(title: .USFIV, avatar: "usfiv-decapre", name: "Decapre"),
        SFCharacter(title: .USFIV, avatar: "usfiv-ryu", name: "Ryu"),
        SFCharacter(title: .USFIV, avatar: "usfiv-ken", name: "Ken"),
        SFCharacter(title: .USFIV, avatar: "usfiv-honda", name: "E.Honda"),
        SFCharacter(title: .USFIV, avatar: "usfiv-ibuki", name: "Ibuki"),
        SFCharacter(title: .USFIV, avatar: "usfiv-makoto", name: "Makoto"),
        SFCharacter(title: .USFIV, avatar: "usfiv-dudley", name: "Dudley"),
        SFCharacter(title: .USFIV, avatar: "usfiv-seth", name: "Seth"),
        SFCharacter(title: .USFIV, avatar: "usfiv-gouken", name: "Gouken"),
        SFCharacter(title: .USFIV, avatar: "usfiv-akuma", name: "Akuma"),
        SFCharacter(title: .USFIV, avatar: "usfiv-gen", name: "Gen"),
        SFCharacter(title: .USFIV, avatar: "usfiv-dan", name: "Dan"),
        SFCharacter(title: .USFIV, avatar: "usfiv-sakura", name: "Sakura"),
        SFCharacter(title: .USFIV, avatar: "usfiv-oni", name: "Oni"),
        SFCharacter(title: .USFIV, avatar: "usfiv-elena", name: "Elena"),
        
        SFCharacter(title: .USFIV, avatar: "usfiv-hugo", name: "Hugo"),
        SFCharacter(title: .USFIV, avatar: "usfiv-yang", name: "Yang"),
        SFCharacter(title: .USFIV, avatar: "usfiv-rose", name: "Rose"),
        SFCharacter(title: .USFIV, avatar: "usfiv-adon", name: "Adon"),
        SFCharacter(title: .USFIV, avatar: "usfiv-thawk", name: "T.Hawk"),
        SFCharacter(title: .USFIV, avatar: "usfiv-feilong", name: "Fei-Long"),
        SFCharacter(title: .USFIV, avatar: "usfiv-balrog", name: "Balrog"),
        SFCharacter(title: .USFIV, avatar: "usfiv-vega", name: "Vega"),
        SFCharacter(title: .USFIV, avatar: "usfiv-elfuerte", name: "El Fuerte"),
        SFCharacter(title: .USFIV, avatar: "usfiv-rufus", name: "Rufus"),
        SFCharacter(title: .USFIV, avatar: "usfiv-zangief", name: "Zangief"),
        SFCharacter(title: .USFIV, avatar: "usfiv-blanka", name: "Blanka"),
        SFCharacter(title: .USFIV, avatar: "usfiv-guile", name: "Guile"),
        SFCharacter(title: .USFIV, avatar: "usfiv-evilryu", name: "Evil Ryu"),
        SFCharacter(title: .USFIV, avatar: "usfiv-poison", name: "Poison"),
        SFCharacter(title: .USFIV, avatar: "usfiv-rolento", name: "Rolento"),
        SFCharacter(title: .USFIV, avatar: "usfiv-hakan", name: "Hakan"),
        SFCharacter(title: .USFIV, avatar: "usfiv-guy", name: "Guy"),
        SFCharacter(title: .USFIV, avatar: "usfiv-cody", name: "Cody"),
        SFCharacter(title: .USFIV, avatar: "usfiv-deejay", name: "Deejay"),
        SFCharacter(title: .USFIV, avatar: "usfiv-cammy", name: "Cammy"),
        SFCharacter(title: .USFIV, avatar: "usfiv-sagat", name: "Sagat"),
        SFCharacter(title: .USFIV, avatar: "usfiv-bison", name: "M.Bison"),
        SFCharacter(title: .USFIV, avatar: "usfiv-cviper", name: "C.Viper"),
        SFCharacter(title: .USFIV, avatar: "usfiv-abel", name: "Abel"),
        SFCharacter(title: .USFIV, avatar: "usfiv-dhalsim", name: "Dhalsim"),
        SFCharacter(title: .USFIV, avatar: "usfiv-chunli", name: "Chun-Li"),
        SFCharacter(title: .USFIV, avatar: "usfiv-juri", name: "Juri"),
        SFCharacter(title: .USFIV, avatar: "usfiv-yun", name: "Yun")
        //USFIV
    ]
}
