
## Changelog & Devlog
### UX First
This is not a content-filled, crazy update. This update is focused on UX, progression, and polishing up the death system. We had to do a lot of work to make this pack easy for other devs to change, and easy on ourselves to manage. As a result, a lot of the items in your world will appear to break (Most of the "breaking" is just item models not being updated). But we (Floofshade) managed to make a system that can update items and update the broken enchantments with it. I know this is a bit annoying, but something like this shouldn't happen again. We put a lot of work into making this datapack as easy to update in the future as a datapack can get (while retaining performance). Datapacks aren't built like mods, we can't add new items or blocks, there are a lot of resitrinction on how things work, and so, it can be really cumbersome to even change the copper pickaxe' default mining speed +/- 1. Thank you for bearing with us, and thank you so much to the people who playtested the first alpha, and especially the contributors on Github.

### EVERYTHING IS BROKEN
This will only happen when updating from pre-existing worlds

Its very upsetting, but here's what you can do to fix it
- hold the broken item
- type /trigger update_item

This won't work on everything, if you have a sentimental item, or you just want to change it:
- Throw the item on the ground next to you
- Type: /data merge entity @n[type=item] {Item:{components:{"item_model":"matcha:XXX"}}}
    - Replace the XXX with the item name, for example, if you caught an oarfish, and the oarfish model won't update with the update command, throw it on the ground and type:
    - Type: /data merge entity @n[type=item] {Item:{components:{"item_model":"matcha:oarfish"}}}
    Here are more examples of names
    - Clay Fetish (Lament) == mournful_clay_statue
    - Copper Compass == copper_compass
    - Crook == crook
    - If you try a name and it just won't work, go the english Lang file, the model name should be the same as the name ID

If none of this still works, make sure the RP and DP are updated. They have been split, they are no longer in the same folder, so keep that in mind. 

Villagers have to be reset (Amnestic) beucase of this too

#### This sucks
Yes, I agree. I had to move all the changes to my forever world, a lot of stuff broke. It was frustrating, and I just wanted to work on trees. I don't want to have to do something like this ever again, at least not to this amount. A lot of these changes were made so we _would_ never have to do something like this again. 

If its too much, thats okay, put the old RP below the new one, and everything will look like its okay. The DP changes won't take place unless you /trigger update them, but it might stop you from going crazy.


### Major Additions and Changes
I'll try and keep this brief, if you want an in-depth look at this stuff, check the alpha changelogs
- Advancements have been reworked
    * Obtaining certain advancements will reward you with obols or heart
    * Others will decrease the minimum amount of hearts you have
- Crystal hearts are now "used" instead of "forced"
- The Wither Effect is really nasty, make sure you've prepped the right food before going to a fortress or fight the wither
    * The Wither can now only be spawned on the surface of the overworld
    * Wither Skeleton Feet stabbies won't be as easy anymore
- Mobs no longer drop obols
    * Mobs spawned from spawners no longer drop any loot (This may be reverted, I'm on the fence)
- Husks are now more visually distinct fromm zombies, and have been tweaked to have less health, but move a little faster
    - Husks will have more changes in the future, to make the hunger effect mean something, and decrease their damage significantly
- Smithing has changed to be more simple and easy-to-understand
    * Adamant has been overhauled
    * Electrum has been polished
    * Electurm and Adamant both cannot be burned, and both, are piglin-safe
    * Fortune III can now only be obtained from Electrum (A post-end enchanting system will be added for craftable fortune III)
    * Equipment reparing made easier to understand
    * Smithing a peice of gear with enchants to upgrade it retains its original enchants (HapppySpud, found a loophole around vanilla smithing to do this!)
- World Generation
    * Silver can be found in every biome, rarley
    * Silver can be found doubly often in Mountain Biomes and deep darks, the deeper you are the more likley you'll find these desposits
    * High-elevation silver is still there, just less common than it once was
    * Quartz now generates at much higher levels, and in much higher amounts
    * Hellspore (Netherwart) now spawns in Nether wastes and soul sand valleys, so Fortresses are only really needed for Wither Skeletons and Loot
    * Beaches now spawn blue orchids and cornflowers
    * Dappled forest's canopy moved up, and changed to be closed (Inspired by [Conure's](https://www.youtube.com/watch?v=k0_Y0RJRAPU) video of the same concept)
    * Swamps made swampier, new tree type, and shelf mushrooms can now be found here. Plus Bushies
- Food Additions
    * More foods have been added, one with a new effect

Many many many bugs have been fixed, I won't bother listing them all here, go check the other changelogs, but thank you all for playing. 
The new death system was tested and came back with very positive feedback, which is why its being implemented. Late-game is still OP (not for me, I've only even had max health once) but I'm working on a way to remove all those hearts end-game players have. Looking forward to it.

### Technical Changes
- Everything has been moved to the matcha namespace, with some notable exceptions
- I probably forgot to move some stuff that I'm unaware of
- The data and resource pack have been split
    * Though the way I was doing it seemed to be standard for DRPs I was told splitting them would make it easier to people to install in modrinth

#### Structures
- The Abbey and Papal Outposts have not been moved over yet. This will happen during the structure update I'm planning to do. I wish I could tell you more, but unfortunately, thats spoilers 
- Spawner drops have been disabled. Originally this was done because people were farming obol from spawners. But, since changing the undead to no longer provide obol, this may be reverted. I didn't make this change so I wasn't familar enough with it to undo all the work that was done there. But during the structure update, this may be changed back. Because it would feel weird for players to find a cool dungeon and kill baddies, and not get anything from said baddies. I've also had a lot of people say they like this change, so I want your opinion

#### Overwritten assets (ie. Spawn Eggs)
- I want to eventually take all non-vanilla items and put them in the matcha namespace, using item models to overwrite vanilla items. I've done this a bit with the spawn eggs but haven't with the alloys and things. I eventually want to move all the alloys to being spawn eggs (to clear up more room for foods)

#### Translation
- We have tried to turn every tooltip into being translatable, that way, updates can be made easier
- I probably forgot many things in this process, there are a lot of items, and due to datapack limitations each item has to be duped across many different places (Ie. Crystal Hearts are in Loottables, Multiple Villager trades, AND Crafting)

#### Loottables
- The Loottables for chests, spawners, etc are very underdone right now. I plan to revamp those when the structure update happens
- Village Loottables are empty, I will add these back during the structure update, but everything was broken in 26.3, it was easier to nuke it all
- I will be nerfing village LTs significantly when I do, Villages were never meant to be a part of this pack, and they can seriously upset progression

### A real break
I can rest easy, now that this update is out. The biggest problems with the pack are behind us, theres still so much more to do, but I can call this playable. And, if I had been a little more patient, let people on github help me out earlier, maybe this is what the real 1.0 release would have looked like.
Im exhausted and ready to move on to other things. I want a break, and the chance to work on my videos again. So expect updates to slow down. Im not leaving you, I promise, I just want some time to draw, and build, and make stuff for myself...and maybe a break from minecraft all together c: 
Thank you for playing, testing, writing, coding, and making videos about matcha! You are all so wonderful. 
And hey, don't be afraid to help out with the project! Check out the github, make small structure datapacks you think would fit well, tell us about them. Im picky, but thats my fault not yours. Most of all have fun, and make stuff for YOU, and no one else. ❤️

#### Credits
- Hashiru: Optimisations
- NamlessJU: Various coding things, translations
- Nat: Translation project lead, and other stuff
- Imtlx: New Angler's Almanac, Fishing Sounds, Translation, and Github help
- Vee Vaicekauskas: Background musics (Check out their bandcamp!: https://par4.bandcamp.com/)
- DeBlezyBestie: Music Discs
- Bingbongbooper: Food Ideas (Their YT!: https://www.youtube.com/@bingbongbooper)
- HapppySpud: Nether World Gen Gravel Remover, Post-Smithing Enchants, Random Asylum Seekers, and much more
- Linkershim: Optimisations, Multiplayer Support and MANY other coding things
- Pepurion: Optimisations, Rose Models
- Fayranchia: Bug fixes
- ReinIsNOTaDev: Optimisations, and Github Workflow nonsese
- Fpekal: Bug fixes, optimisations, and a TON on the 26.3 port
- FloofShade: Item update trigger
- EastMonster: Bug fixes
- Voxybuns: Custom emojis and their implimentation
- milo256: Dyanmic Multiplayer Sleep
- All of the translation volunteers
- Thank you so much everyone!

----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Release Checklist
- Update mcmeta for RP and DP
- Update current_version_number scoreboard
- Update LANG on-load message to be the current version number
- REMOVE WITH SONGS, this should only be in the in-dev version
- Add credits for all the new commit things in github


# DOCKET (MUST be done before next release)
  
## BUGS
- Double check that the update Floof did didn't override the matcha:steel It shouldn't have but just in case

## 26.3


----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Next Update

### Chicken Overhaul
The update no one asked for!
- More "chickens" have been added, and spawn only at their corresponding home
- Chickens no longer give live birth, but its still good to feed them
- Pay attenion not only to the plumage and species of "chicken" but also **their behaviour**, this will affect their drops
    - There are 4 different behaviours right now, each give different loot, so pay attention to your birds and see which ones would be worth taking back to your base. After all, like dogs, domestication makes chickens stupid as hell

#### TO BE IMPLMENETED
- Chickens no longer spawn normally, aka, no spawning randomly on grass
- There are 4 different behaviour types
    - MAKE SURE the rascal runs fast, and the curious wanders far from its home
- Make a way for the farmer to sell and "breed" different cultivars, EX. giving an egg and a special item (not obol) will give a small egg with lore "Curious" 
- Home-builders make nests ONCE, the type is then removed and replaced with mama type
    - Check to see if a nest can be made (on looong timer, maybe similar to WT summon?), then make the nest, remove the tag
- Home-builders have no home spot, they will roam far, and once they turn into a mama, summon three baby chicks, two of the chicks can grow up, one is age-locked
- Anti-slaughter design
    - If a chicken is on a hopper, AND if there is more than x chickens too close, it dies (One of your chickens was squished too tighly, and died)
    - Or something like that
    - Maybe all of them get poison? And if piosoned with a tag, they only drop rotten eggs, and trash feathers
- Farmer Hat, made with wheat and helps with chickens!...somehow


### Aspects
- Allows you to extract intrinsics from certain alloys, post-end enchanting
- Uses dragon's breath (rename to something?)
- Extracting an Aspect requires A withered Heart and a dragon's breath
- Bronze -> Eff
- Steel -> Unbreaking
- Electrum -> Fortune III
- Netherite -> Smelting
- Shakudo -> Silk Touch/Life Steal
- ??? -> Protection?? NOTHING...maybe, I just think it should be something only sweats get. But maybe as a replacement we can offer different protections. Ie. Undead protection, PVP protection, and just remove protection entirely
- Unbreakable Enchant from Wither Heart

## Copper Intrinsic
- Lightning Rod/Conductive: redirects all "aura"-based nonsense to itsself, and nullifies it
- This may need to work differently on players, Ex. Zombies need only one piece to be immune, players may need more to nullify all damage

## Worldgen
- Make Diamonds more rare
- Add in TankyAibem & Linkershim's dope ass portal things
- Polish-up villages
- Abbey, but better c:
### The Bird Project
- Birds no longer give live birth
- Disable breeding, let chickens only come from eggs
- Add all eggs to farmer trade 1c + Egg -> Fertilised Egg
- Roosts for all birds
    - Have different prefabs for each bird type. All birds will set their roost to the roost mama (or marker)
    - Have baby chicks that never grow up, but can be fed golden dandelions
    - OR a random tick thing (timer at some large time) that allows chicken to reproduce if no entities nearby are babies, and maybe if there are only few chickens (~<5-8) (STRETCH)
    - Could change raw chicken to chicken cutlet, allows happy chickens (happiness score increase if fed and cooldown is not reached) to drop more product (STRETCH) 

## Low-Priority Bugs
- Add predicate for surface spawn that excludes structures
- When running on mud brick slabs with traversal boots, when I jump I get the speed boost, but when I just run on it normally I don't get the speed boost
- Villager Gift LT (Toolsmith give stone tools, laaame)

## Difficulty scaling
- Use current_difficulty scoreboard to track individual difficulty, this changes as the amount of hearts does
- This difficulty setting is only (so far) to be used to track how many hearts a player looses on death
- Max -> 3
- 20+ -> 2
- 10+ -> 1
- Hard mode adds +1 to n

## Langs
"options.difficulty.peaceful.info"
"options.difficulty.easy.info"
"options.difficulty.normal.info"
"options.difficulty.hard.info"


### Advancements
- Restore their memory, of what they used to be (Echoes: Restore an Echo Shard's memory)
- Child of Moros: Smith Full Adamant Set 
- Harbinger of Fate: Smith Adamant Elytra 

# Stretch / Back-burner

## Small Additions
- Increase resin amount in pale graden fishing
- Potatoes and Molasses
- French Fries
- Jelly/Jam Bread (Or PBJ without the PB)
- Craftable Thorns
- Add Cinnabar and Sulfur, dripstone, raw copper to dripstone caves, Badlands raw gold, deep dark, disc fragments, to fishing trash
- Increase resin amount in pale graden fishing
- Add secondary items for certain villager trades (ie empty map for map trades)

### Suggestions
- Fermented Spider eye secret meal
- New paintings (with hints!)
- Bag of Sugar!
- ADV: Restore its memory, of what it used to be (Echoes: Restore an Echo Shard's memory)
- Shields
    - Steel shield: a normal shield but with high durability/unbreaking enchant attached
    - Shakudo shield: prevents you from splash potion effects being applied to you if held up (looking at witches), could also give a small amount of magic res as a bonus.
    - Hepatizon shield: removes movement speed penalty when held up.
    - Electrum shield: the same warding effects as current warding shield but blocking attacks from undead monsters deals damage to them so they will die even faster.
    - Adamant shield: deals a very small dmg to the attacker when blocking his dmg, it works on all types of enemies but the damage is way lower than electrum shield, could also come with increased durability/unbreaking.
- Cold biomes (and oceans) should have better loot due to freezing water
- Rebalance obol to be more rare in chests? Trial chambers esp...idk

## Medium Additions
- "Have recipes or hints toward features appear in abandoned camp loot pools, or possibly other loot pools as well.
- Have spawners (aside from dungeons, wait no LT can't read entity data...)
    * I wanted to have a way for spawners to make mobs that won't drop anything, by spawning them with a tag
    * But I tag can't influence loot tables I dont think.
- Cats traded by farmer?
- Wandering Trader trade more than just village maps


## Fun/Stretch Additions
- Re-add Copper Horns, and leave sheet music as treasure, which can be smithed (???? like have one spawn egg as sheet msuic and give each an enchant or soemthing, trigger adv on craft, and merge the data)
   - And use the unused copper horn sounds! The really cool ones!

##World Gen
- Dense Poplars
- Swampier Swamps

## Adv
- Get Full Health Advancement
- Craft a secret weapon advancemnt


## Textures
- All beds are gone :c
- Chest on boat texture n boat texture
- Change Ender chest to be Eye
- Add All of Imtlx' biome sprites
   - Pale Garden
   - Deep Dark
   - Sulfur Caves

## Misc
- Variant Villages to match with villager stories
- Knowledge books??
- Sherds for Enchants?? From Archaeologist
- Maps from Archaeologist based on books (I think Paradise Lost going to Abbey makes sense)
- Upgraded horns for different mobs
- Armour Trim fix-up
- Polish-up abbey, more surrounding buildings, proper downstairs entrance.
    - Actually I think full redesign, manage spawners better. More buildings, more uses for the Copper Eye
- Polish up papal outpost, give barrel a LT
- Quartz ore gen, sulfur ore gen, make sulurfous quartz something else?
### Ore Gen
- Coal high in swamps
- Sulfur high in sulfur caves
- Iron high in Cold Biomes
