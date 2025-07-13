-- function unity_check(card, suit)
--     if ((card.base.suit == 'Hearts' or card.base.suit == 'Diamonds' or card.base.suit == 'Spades' or card.base.suit == 'Clubs') and (suit == 'Hearts' or suit == 'Diamonds' or suit == 'Spades' or suit == 'Clubs')) then
--         return true
--     return false
-- end
SMODS.Atlas {
  key = "balatro",
  path = "balatro.png",
  raw_key = true,
  px = G.ASSET_ATLAS.balatro.px,
  py = G.ASSET_ATLAS.balatro.py,
}

SMODS.Atlas({
key = "modicon",
path = "modicon.png", 
px = 32, 
py = 32
})

 to_number = to_number or function(x) return x end

SMODS.current_mod.optional_features = { retrigger_joker = true }

sizi = SMODS.current_mod
G.FUNCS.cycle_options = function(args)
    -- G.FUNCS.cycle_update from Galdur
    args = args or {}
    if args.cycle_config and args.cycle_config.ref_table and args.cycle_config.ref_value then
        args.cycle_config.ref_table[args.cycle_config.ref_value] = args.to_key
    end
end
SMODS.current_mod.config_tab = function()
    return {
        n=G.UIT.ROOT, config = {align = "cl", minh = G.ROOM.T.h*0.25, padding = 0.0, r = 0.1, colour = G.C.GREY}, nodes = {
            {
                n = G.UIT.C, config = { align = "cm", minw = G.ROOM.T.w*0.25, padding = 0.05 }, nodes = {
                    create_option_cycle{
                        label = localize('b_music'),
                        w = 4.5,
                        info = {
                                "When to play DK Rap",
                            },
                        options = {
                            "While DK is owned",
                            "Disabled",
                        },
                        current_option = sizi.config.dkrap,
                        colour = sizi.badge_colour,
                        text_scale = 0.5,  -- default is 0.5
                        ref_table = sizi.config,
                        ref_value = "dkrap",
                        opt_callback = 'cycle_options',
                    },
                    create_option_cycle{
                            label = localize('b_music'),
                            w = 4.5,
                            info = {
                                    "When to play STR Super Vegito Active Skill Music",
                                },
                            options = {
                                "While Vegito is owned",
                                "Disabled",
                            },
                            current_option = sizi.config.vegito,
                            colour = sizi.badge_colour,
                            text_scale = 0.5,  -- default is 0.5
                            ref_table = sizi.config,
                            ref_value = "vegito",
                            opt_callback = 'cycle_options',
                    },
                    create_option_cycle{
                            label = localize('b_music'),
                            w = 4.5,
                            info = {
                                    "When to play AGL SSJ Vegeta + SSJ Goku Fusion Active Skill Music",
                                },
                            options = {
                                "While Gogeta is owned",
                                "Disabled",
                            },
                            current_option = sizi.config.gogeta,
                            colour = sizi.badge_colour,
                            text_scale = 0.5,  -- default is 0.5
                            ref_table = sizi.config,
                            ref_value = "gogeta",
                            opt_callback = 'cycle_options',
                    },
                    create_option_cycle{
                            label = localize('b_music'),
                            w = 4.5,
                            info = {
                                    "When to play The World Revolving (by Toby Fox)",
                                },
                            options = {
                                "While Jevil is owned",
                                "Disabled",
                            },
                            current_option = sizi.config.revolving,
                            colour = sizi.badge_colour,
                            text_scale = 0.5,  -- default is 0.5
                            ref_table = sizi.config,
                            ref_value = "revolving",
                            opt_callback = 'cycle_options',
                    },
                    create_option_cycle{
                            label = localize('b_music'),
                            w = 4.5,
                            info = {
                                    "When to play Super Ghostbusters (By Vargskelethor Joel)",
                                },
                            options = {
                                "While Super Ghostbusters is owned",
                                "Disabled",
                            },
                            current_option = sizi.config.ghosts,
                            colour = sizi.badge_colour,
                            text_scale = 0.5,  -- default is 0.5
                            ref_table = sizi.config,
                            ref_value = "ghosts",
                            opt_callback = 'cycle_options',
                    }
                }
        },
        }
    }
end

SMODS.current_mod.extra_tabs = function()
    return {
        {
            label = 'More Music Options',
			tab_definition_function = function()
                return {
                 n=G.UIT.ROOT, config = {align = "cl", minh = G.ROOM.T.h*0.25, padding = 0.0, r = 0.1, colour = G.C.GREY}, nodes = {
                {
                    n = G.UIT.C, config = { align = "cm", minw = G.ROOM.T.w*0.25, padding = 0.05 }, nodes = {
                    create_option_cycle{
                        label = localize('b_music'),
                        w = 4.5,
                        info = {
                                "When to play TEQ LR LSSJ Broly Active Skill OST",
                            },
                        options = {
                            "While Broly is owned",
                            "Disabled",
                        },
                        current_option = sizi.config.broly,
                        colour = sizi.badge_colour,
                        text_scale = 0.5,  -- default is 0.5
                        ref_table = sizi.config,
                        ref_value = "broly",
                        opt_callback = 'cycle_options',
                    },
                    create_option_cycle{
                        label = localize('b_music'),
                        w = 4.5,
                        info = {
                                "When to play TEQ LR Super Saiyan 3 Gotenks Active Skill OST",
                            },
                        options = {
                            "While Broly is owned",
                            "Disabled",
                        },
                        current_option = sizi.config.gotenks,
                        colour = sizi.badge_colour,
                        text_scale = 0.5,  -- default is 0.5
                        ref_table = sizi.config,
                        ref_value = "gotenks",
                        opt_callback = 'cycle_options',
                    },
                    create_option_cycle{
                        label = localize('b_music'),
                        w = 4.5,
                        info = {
                                "When to play Perfect Cell Theme (US ver.) Cover by Friedrich Habetler",
                            },
                        options = {
                            "While Cell (Perfect) is owned",
                            "Disabled",
                        },
                        current_option = sizi.config.cell,
                        colour = sizi.badge_colour,
                        text_scale = 0.5,  -- default is 0.5
                        ref_table = sizi.config,
                        ref_value = "cell",
                        opt_callback = 'cycle_options',
                    },
                }
        },
        }}
        end,
    },  
}
end
SMODS.Atlas {
   key = 'Jokers', --atlas key
    path = 'Jokers.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker{
    key = 'Mountain Boy', --joker key
    loc_txt = { -- local text
        name = 'Mountain Boy',
        text = {
            "{C:red}+#1#{} Mult",
            "when a played hand",
            "contains a {C:attention}4{} or a {C:attention}7{}",
        },
    },
    atlas = 'Jokers', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 3, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        mult = 20 --configurable value
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.mult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self,card,context)
       if context.joker_main then
            local hasFour = false
            local hasSeven = false
            for i = 1, #context.scoring_hand do
				if context.full_hand[i]:get_id() == 4 then
                    hasFour = true
                end
                if context.full_hand[i]:get_id() == 7 then
                    hasSeven = true
                end
            end
            
            if hasFour == true or hasSeven == true then 
                return {
                card = card,
                mult_mod = card.ability.extra.mult,
                message = '+' .. card.ability.extra.mult,
                colour = G.C.RED
                }
            end
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

-- Spunch Bop

SMODS.Sound({key = "bob", path = "boowomp.ogg",})
SMODS.Atlas{
    key = 'spunchbop',
    path = 'spunch_bop.png',
    px = 71,
    py = 95,
}

SMODS.Joker{
    key = 'spunchbop',
    loc_txt= {
        name = 'Spunch Bop',
        text = { "",
                    "{C:green}#2# in #3#{} chance to give {X:chips,C:white} +#1#{} Chips",}
    },
    atlas = 'spunchbop',
    rarity = 1,
    cost = 4,
    
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = false,

    pos = {x=0, y= 0},
    config = { extra = {chips = 500, odds = 4}},
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.chips, (G.GAME.probabilities.normal or 1), center.ability.extra.odds}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            if pseudorandom("sizimod_spunchbop") < G.GAME.probabilities.normal / card.ability.extra.odds then
                return {
                    card = card,
                    chip_mod = card.ability.extra.chips,
                    message = '+' .. card.ability.extra.chips,
                    colour = G.C.CHIPS
                }
            else
                return {
                    message = "boowomp",
                    sound = 'sizimod_bob',
                    pitch = 1,
                }
            end
        end
    end,      
     in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,  
}

SMODS.Atlas{
    key = 'stairs',
    path = 'stairs.png',
    px = 71,
    py = 95,
}

SMODS.Joker{
    key = 'stairs',
    loc_txt= {
        name = 'Staircase',
        text = { "",
                    "All scored cards give {C:red}+1{} Mult and",
                    "increments by 1 per played card",}
    },
    atlas = 'stairs',
    rarity = 1,
    cost = 4,
    
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = false,

    pos = {x=0, y= 0},
    config = { extra = {mult = 0, extra = 1 }},
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.mult, center.ability.extra.extra}} 
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.individual then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.extra
            return {
                card = card,
                mult_mod = card.ability.extra.mult,
                message = '+' .. card.ability.extra.mult ..' Mult',
                colour = G.C.RED
            }
        end
        if context.after then
            card.ability.extra.mult = 0
            return {
                message = "Reset!",
            }
        end
    end,      
     in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,  
}

SMODS.Sound({
    key = "ok",
    path = "ok.ogg",
})
SMODS.Sound({
    key = "banan",
    path = "banan.ogg",
})
-- SMODS.Sound({
--     key = "music_monkeyrap",
--     path = "music_monkey.ogg",
--     sync = false,
--     pitch = 1,
--     select_music_track = function()
--         return next(SMODS.find_card("j_sizimod_kong")) and 1e308
--     end,
-- })
local dk_rap = SMODS.Sound{
    key = "music_monkeyrap",
    path = "music_monkey.ogg",
    sync = false,
    pitch = 1,
    select_music_track = function(self)
        if sizi.config.dkrap == 1 and #SMODS.find_card("j_sizimod_kong") > 0 then
            -- enabled while Hatsune Joku is present
            return 100
        else
            -- always disabled
        end
    end
}

SMODS.Atlas{
    key = 'kong',
    path = 'kong.png',
    px = 71,
    py = 95,
}

SMODS.Joker{
    key = 'kong',
    loc_txt= {
        name = 'Donkey Kong',
        text = {
                    "Creates a Negative Gros Michel, or",
                    "{C:green}#1# in #2#{} chance to create a",
                    "Negative Cavendish"
        }
        },
    atlas = 'kong',
    rarity = 3,
    cost = 10,
    
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = false,

    pos = {x=0, y= 0},
    config = { extra = {odds = 8}},
    loc_vars = function(self,info_queue,center)
        return {vars = { (G.GAME.probabilities.normal or 1), center.ability.extra.odds}} 
    end,
    calculate = function(self,card,context)
        if context.setting_blind then
            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
            if pseudorandom("sizimod_kong") < G.GAME.probabilities.normal / card.ability.extra.odds then
                play_sound("sizimod_banan")
                return {
                    extra = {
                        func = function() -- This is for timing purposes, everything here runs after the message
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    SMODS.add_card {
                                        key = 'j_cavendish',
                                        edition = "e_negative",
                                    }
                                    G.GAME.joker_buffer = 0
                                    return true
                                end)
                            }))
                        end
                    },
                }
            else
                play_sound("sizimod_ok")
                return {
                    extra = {
                        func = function() -- This is for timing purposes, everything here runs after the message
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    SMODS.add_card {
                                        key = 'j_gros_michel',
                                        edition = "e_negative",
                                    }
                                    G.GAME.joker_buffer = 0
                                    return true
                                end)
                            }))
                        end
                    },
                }
            end
        end

    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,  
}

SMODS.Atlas {
   key = 'seven', --atlas key
    path = 'seven.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'seven', --joker key
    loc_txt = { -- local text
        name = '7 Ate 9',
        text = {
            "When a hand contains a 7 and a 9,",
            "Destroy the 9 and gain",
            "{C:red}+#2#{} Mult per 9 destroyed",
            "{C:inactive}(Currently {C:red}+#1#{C:inactive} Mult)",
        },
    },
    atlas = 'seven', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        mult = 0, mult_mod = 10
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        if context.destroy_card then
            local hasSeven = false
            local hasNine = false
            for i = 1, #context.scoring_hand do
				if context.full_hand[i]:get_id() == 9 then
                    hasNine = i
                end
                if context.full_hand[i]:get_id() == 7 then
                    hasSeven = true
                end
            end
            if hasSeven == true and hasNine ~= nil and context.destroy_card == context.scoring_hand[hasNine] and not context.blueprint  then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
                return {
                    message = '+' .. card.ability.extra.mult_mod,
                    destroying_card = G.play.cards[hasNine],
                    remove = true
                }
            end
        end  
        if context.joker_main then
            return {
                card = card,
                mult_mod = card.ability.extra.mult,
                message = '+' .. card.ability.extra.mult,
                colour = G.C.RED
            }
        end
	end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Sound({
    key = "weegee",
    path = "weegee.ogg",
})
SMODS.Sound({
    key = "mama",
    path = "mama.ogg",
})
SMODS.Sound({
    key = "pokemon",
    path = "pokemon.ogg",
})
SMODS.Atlas {
   key = 'weegee', --atlas key
    path = 'weegee.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'weegee', --joker key
    loc_txt = { -- local text
        name = 'Weegee',
        text = {
            'Destroys a Joker to the right',
            'to create another {C:attention}Weegee',
            '{X:mult,C:white}X#1#{} Mult per {C:attention}Weegee'

        },
    },
    atlas = 'weegee', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 2 --configurable value
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self,card,context)
        local my_pos = nil
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i] == card then
				my_pos = i
				break
			end
		end
		if
			context.setting_blind
			and not (context.blueprint_card or self).getting_sliced
			and my_pos
			and G.jokers.cards[my_pos + 1]
			and not G.jokers.cards[my_pos + 1].ability.eternal
			and not G.jokers.cards[my_pos + 1].getting_sliced
		then
			local sliced_card = G.jokers.cards[my_pos + 1]
			sliced_card.getting_sliced = true
			G.GAME.joker_buffer = G.GAME.joker_buffer - 1
			G.E_MANAGER:add_event(Event({
				func = function()
					G.GAME.joker_buffer = 0
					card:juice_up(0.8, 0.8)
					sliced_card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
                    if math.random(2) == 1 then
					    play_sound("sizimod_weegee")
                    else 
                        play_sound("sizimod_pokemon")
                    end
					return true
				end,
			}))
			local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_sizimod_weegee2")
			card:add_to_deck()
			G.jokers:emplace(card)
			return nil, true
		end
        if context.other_joker and (context.other_joker.ability.name == "j_sizimod_weegee2") then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'weegee2', --atlas key
    path = 'weegee_2.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'weegee2', --joker key
    loc_txt = { -- local text
        name = 'Weegee',
        text = {
            "Obey Weegee",
            "Gives {X:mult,C:white}X#1#{} Mult"
        },
    },
    atlas = 'weegee2', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 3 --configurable value
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                card = card,
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                colour = G.C.MULT
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return false
    end,
}

SMODS.Sound({
    key = "paid",
    path = "paid.ogg",
})
SMODS.Atlas {
   key = 'gangsta', --atlas key
    path = 'gangsta.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
-- Delayed Gratification
SMODS.Joker {
    key = "gangsta",
    loc_txt = { -- local text
        name = 'Gangsta Spongebob',
        text = {
            "Earn {C:attention}$1{} per unused", 
            "{C:red}Discard{} or {C:blue}Hand{}"
        },
    },
    atlas = 'gangsta', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { extra = { dollars = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dollars } }
    end,
    calc_dollar_bonus = function(self, card)
        if G.GAME.current_round.discards_left > -1 and G.GAME.current_round.hands_left > -1 then
            play_sound('sizimod_paid')
            return (G.GAME.current_round.discards_left * to_number(card.ability.extra.dollars)) + (G.GAME.current_round.hands_left * to_number(card.ability.extra.dollars)) or nil 
        end
    end
}
SMODS.Atlas {
   key = 'chud', --atlas key
    path = 'chud.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
-- Delayed Gratification
SMODS.Joker {
    key = "chud",
    loc_txt = { -- local text
        name = 'Nothing Ever Happens',
        text = {
            "All {C:green}listed probabilities{}",
            "become 0"
        },
    },
    atlas = 'chud', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { extra = { dollars = 1 } },
    locked_loc_vars = function(self, info_queue, card)
        return { vars = { number_format(10000) } }
    end,
    add_to_deck = function(self, card, from_debuff)
        for k, v in pairs(G.GAME.probabilities) do
            G.GAME.probabilities[k] = v * 0
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for k, v in pairs(G.GAME.probabilities) do
            G.GAME.probabilities[k] = 1
        end
    end,
}

SMODS.Atlas {
   key = 'strawberry', --atlas key
    path = 'strawberry.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker {
    key = "strawberry",
    loc_txt = { -- local text
        name = 'Strawberry',
        text = {
            "{C:red}+20{} Mult if all cards scored cards",
            "are {C:hearts}Hearts{}"
        },
    },
    atlas = 'strawberry', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { extra = {mult = 20} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local all_hearts = true
            for _, v in ipairs(context.scoring_hand) do
                if not v:is_suit("Hearts") then
                all_hearts = false
                end
            end
            if all_hearts then
                return {
                card = card,
                mult_mod = card.ability.extra.mult,
                message = '+' .. card.ability.extra.mult,
                colour = G.C.RED
            }
            end
        end
    end,
}

SMODS.Atlas {
   key = 'grapes', --atlas key
    path = 'grapes.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = 'grapes', --joker key
    loc_txt = { -- local text
        name = 'Grapes',
        text = {
          "{X:mult,C:white}X2{} Mult if all scored cards",
            "are {C:clubs}Clubs{}"
        },
    },
    atlas = 'grapes', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 2 --configurable value
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            local all_clubs = true
            for _, v in ipairs(context.scoring_hand) do
                if not v:is_suit("Clubs") then
                all_clubs = false
                end
            end
            if all_clubs then
                return {
                Xmult = card.ability.extra.Xmult
            }
            end
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'blueberry', --atlas key
    path = 'blueberry.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "blueberry",
    loc_txt = { -- local text
        name = 'Blueberry',
        text = {
            "{X:chips,C:white}+100{} chips if all scored cards",
            "are {C:spades}Spades{}"
        },
    },
    atlas = 'blueberry', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { extra = {chips = 100} },
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips}}
    end,
    calculate = function(self, card, context)
        -- local all_hearts = true
        -- if context.individual and context.cardarea == G.play then
        --     if context.other_card:is_suit(card.ability.extra.suit) then

        --     else
        --         all_hearts = false
        --     end
        -- end
        -- next(context.poker_hands[card.ability.extra.type]) and 
        if context.joker_main then
            local all_spades = true
            for _, v in ipairs(context.scoring_hand) do
                if not v:is_suit("Spades") then
                all_spades = false
                end
            end
            if all_spades then
                return {
                card = card,
                chip_mod = card.ability.extra.chips,
                message = '+' .. card.ability.extra.chips,
                colour = G.C.CHIPS
            }
            end
        end
    end,
}

SMODS.Atlas {
   key = 'papaya', --atlas key
    path = 'papaya.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "papaya",
    loc_txt = { -- local text
        name = 'Papaya',
        text = {
            "Earn {C:money}$5{} if all scored cards",
            "are {C:diamonds}Diamonds{}"
        },
    },
    atlas = 'papaya', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    key = "papaya",
     unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    rarity = 1,
    cost = 6,
    pos = { x = 0, y = 0 },
    config = { extra = { dollars = 5 } },
    loc_vars = function(self, info_queue, center)
		return { vars = { center.ability.extra.dollars } }
	end,
	calculate = function(self, card, context) 
		if context.cardarea == G.jokers and context.before and context.full_hand then
            local all_diamond = true
            for _, v in ipairs(context.scoring_hand) do
                if not v:is_suit("Diamonds") then
                all_diamond = false
                end
            end
            if all_diamond then
                return {dollars = to_number(card.ability.extra.dollars)}
            end
		end
	end,
}

SMODS.Atlas {
   key = 'bowl', --atlas key
    path = 'bowl.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "bowl",
    loc_txt = { -- local text
        name = 'Fruit Bowl',
        text = {
            "Activates a {C:attention}Fruit Joker{}",
            "ability depending suit of all",
            "{C:attention}scored cards{}"
        },
    },
    atlas = 'bowl', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x=0, y= 0},
    config = { extra = {chips = 100, mult = 20, Xmult = 2, dollars = 5}},

    loc_vars = function(self, info_queue, center)
		return { vars = { center.ability.extra.chips, center.ability.extra.mult, center.ability.extra.Xmult, center.ability.extra.dollars}  }
	end,

    calculate = function(self, card, context)
        
            if context.joker_main then
                local all_hearts = true
                local all_spades = true
                local all_clubs = true
                for _, v in ipairs(context.scoring_hand) do
                    if not v:is_suit("Hearts") then
                        all_hearts = false
                    end
                    if not v:is_suit("Spades") then
                        all_spades = false
                    end
                    if not v:is_suit("Clubs") then
                        all_clubs = false
                    end
                    if not v:is_suit("Diamonds") then
                        all_diamonds = false
                    end
                end
                return {
                     mult = all_hearts and card.ability.extra.mult or nil,
                     chips = all_spades and card.ability.extra.chips or nil,
                     Xmult = all_clubs and card.ability.extra.Xmult or nil,
                }
            end
            if context.cardarea == G.jokers and context.before and context.full_hand then
                local all_diamond = true
                for _, v in ipairs(context.scoring_hand) do
                    if not v:is_suit("Diamonds") then
                    all_diamond = false
                    end
                end
                if all_diamond then
                    return {dollars = to_number(card.ability.extra.dollars)}
                end
		    end
           
        end,
}

SMODS.Atlas {
   key = 'clown', --atlas key
    path = 'clown.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker {
    key = "clown",
    loc_txt = { -- local text
        name = 'Circus Clown',
        text = {
            "Randomly gives either {C:red}+25{} Mult,",
            "{X:mult,C:white}X2{} Mult,",
            "{X:chips,C:white}+75{} Chips,",
            "or {X:chips,C:white}X2{} Chips"
        },
    },
    atlas = 'clown', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x=0, y= 0},
    config = { extra = {chips = 75, mult = 25, Xmult = 2, x_chips = 2}},

    loc_vars = function(self, info_queue, center)
		return { vars = { center.ability.extra.chips, center.ability.extra.mult, center.ability.extra.Xmult, center.ability.extra.x_chips}  }
	end,

    calculate = function(self, card, context)
            if context.joker_main then
                if  math.random(4) == 1 then
                    return {
                            mult = card.ability.extra.mult  
                    }
                elseif  math.random(4) == 2 then
                    return {            
                            Xmult = card.ability.extra.Xmult
                    }
                elseif  math.random(4) == 3 then
                    return {
                            chips = card.ability.extra.chips   
                    }
                else 
                    return {
                            x_chips = card.ability.extra.x_chips
                            
                    }
                end    
            end
           
        end,
}


local function reset_hitman_card()
    G.GAME.current_round.sizimod_hitman_card = {rank = 'Ace'}
    local valid_hitman_cards = {}
    for _, playing_card in ipairs(G.playing_cards) do
        if not SMODS.has_no_suit(playing_card) and not SMODS.has_no_rank(playing_card) then
            valid_hitman_cards[#valid_hitman_cards + 1] = playing_card
        end
    end
    local hitman_card = pseudorandom_element(valid_hitman_cards, pseudoseed('sizimod_hitman' .. G.GAME.round_resets.ante))
    if hitman_card then
        G.GAME.current_round.sizimod_hitman_card.rank = hitman_card.base.value
        G.GAME.current_round.sizimod_hitman_card.id = hitman_card.base.id
    end
end

SMODS.Atlas {
   key = 'hitman', --atlas key
    path = 'hitman.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "hitman",
    loc_txt = { -- local text
        name = 'Hitman',
        text = {
            "When a {C:attention}#3#{} is discarded,",
            "destroys it and adds",
            "{X:mult,C:white}X0.25{} Mult",
            "to itself",
            "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
            "(Rank changes every round)",
        },
    },
    atlas = 'hitman', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x=0, y= 0},
    config = { extra = {Xmult = 1, extra = 0.25}},
    loc_vars = function(self, info_queue, center)
		return { vars = { center.ability.extra.Xmult, center.ability.extra.extra, localize((G.GAME.current_round.sizimod_hitman_card or {}).rank or 'Ace', 'ranks')}  }
	end,

    calculate = function(self, card, context) 
        if context.discard and not context.blueprint and context.other_card:get_id() == G.GAME.current_round.sizimod_hitman_card.id then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.extra
                return {
                    message = "Upgrade!",
                    card = card,
                    remove = true
                }
        end
        if context.joker_main then
            return {
                card = card,
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                colour = G.C.MULT
            }
        end
        end,
        
}

local function reset_neo_card()
    G.GAME.current_round.sizimod_neo_card = {rank = 'Ace'}
    local valid_neo_cards = {}
    for _, playing_card in ipairs(G.playing_cards) do
        if not SMODS.has_no_suit(playing_card) and not SMODS.has_no_rank(playing_card) then
            valid_neo_cards[#valid_neo_cards + 1] = playing_card
        end
    end
    local neo_card = pseudorandom_element(valid_neo_cards, pseudoseed('sizimod_neo' .. G.GAME.round_resets.ante))
    if neo_card then
        G.GAME.current_round.sizimod_neo_card.rank = neo_card.base.value
        G.GAME.current_round.sizimod_neo_card.id = neo_card.base.id
    end
end

function SMODS.current_mod.reset_game_globals(run_start)
    reset_hitman_card()
    reset_neo_card()
end


SMODS.Atlas {
   key = 'gacha', --atlas key
    path = 'gacha.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
-- Delayed Gratification
SMODS.Joker {
    key = "gacha",
    loc_txt = { -- local text
        name = 'Gashapon Capsule',
        text = {
            "Increases rate of {C:attention}Shop Appearances{}",
            "for {C:green}Uncommon{}",
            "and {C:red}Rare{} Jokers.",
            "{C:green}#2# in 100{} chance",
            "to create {C:spectral}The Soul{}",
            "when Blind is selected"
        },
    },
    atlas = 'gacha', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { extra = { new_rate = 10, odds = 100} },
    loc_vars = function(self, info_queue, center)
        return { vars = {center.ability.extra.new_rate, (G.GAME.probabilities.normal or 1), center.ability.extra.odds} }
    end,
    add_to_deck = function(self, card, from_debuff)
        G.GAME.uncommon_mod = G.GAME.uncommon_mod * card.ability.extra.new_rate
        G.GAME.rare_mod = G.GAME.rare_mod * card.ability.extra.new_rate
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.GAME.uncommon_mod = G.GAME.uncommon_mod / card.ability.extra.new_rate
        G.GAME.rare_mod = G.GAME.rare_mod / card.ability.extra.new_rate
    end,
    calculate = function(self, card, context) 
        if context.setting_blind and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
             G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
             if pseudorandom("sizimod_gacha") < G.GAME.probabilities.normal / card.ability.extra.odds then
                return {
                    extra = {
                        func = function() -- This is for timing purposes, everything here runs after the message
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    SMODS.add_card {
                                        key = 'c_soul',
                                    }
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end)
                            }))
                        end
                    },
                }
            else
                -- Nothing
            end
        end
	end,
}

SMODS.Atlas {
   key = 'car', --atlas key
    path = 'car.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker {
    key = "car",
    loc_txt = { -- local text
        name = 'Clown Car',
        text = {
            "{C:attention}+1 Joker Slot{}",
            "and all {C:negative}Negative{} Jokers give",
            "{X:mult,C:white}X1.5{} Mult"
        },
    },
    atlas = 'car', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { extra = {Xmult = 1.5} },
    loc_vars = function(self, info_queue, center)
        return { vars = {center.ability.extra.Xult}}
    end,
    add_to_deck = function(self, card, from_debuff)
		G.jokers.config.card_limit = G.jokers.config.card_limit + 1
	end,
	remove_from_deck = function(self, card, from_debuff)
		G.jokers.config.card_limit = G.jokers.config.card_limit - 1
	end,
    calculate = function(self, card, context)
       if context.other_joker and context.other_joker.edition and (context.other_joker.edition.negative == true) and card ~= context.other_card then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
    end,
}

AnimatedJokers = {
    j_sizimod_morshu = { frames = 32},
}
--Update animated sprites
local upd = Game.update

function sizi.update_frame(dt, k, obj, jkr)
    local anim = AnimatedJokers[k] 
    if anim and obj and (anim.frames or anim.individual) then
        local next_frame = false
        local next_frame_extra = false
        if anim.individual then
            if jkr then
                if not jkr.animation then jkr.animation = {} end
                if not jkr.animation.t then jkr.animation.t = 0 end
                jkr.animation.t = jkr.animation.t + dt
                if jkr.animation.t > 1/(jkr.animation.fps or 10) then
                    jkr.animation.t = jkr.animation.t - 1/(jkr.animation.fps or 10)
                    next_frame = true
                end
                if jkr.animation.extra then
                    if not jkr.animation.extra.t then jkr.animation.extra.t = 0 end
                    jkr.animation.extra.t = jkr.animation.extra.t + dt
                    if jkr.animation.extra.t > 1/(jkr.animation.extra.fps or 10) then
                        jkr.animation.extra.t = jkr.animation.extra.t - 1/(jkr.animation.extra.fps or 10)
                        next_frame_extra = true
                    end
                end
            end
        else
            if not anim.t then anim.t = 0 end
            anim.t = anim.t + dt
            if anim.t > 1/(anim.fps or 10) then
                anim.t = anim.t - 1/(anim.fps or 10)
                next_frame = true
            end
            if anim.extra then
                if not anim.extra.t then anim.extra.t = 0 end
                anim.extra.t = anim.extra.t + dt
                if anim.extra.t > 1/(anim.extra.fps or 10) then
                    anim.extra.t = anim.extra.t - 1/(anim.extra.fps or 10)
                    next_frame_extra = true
                end
            end
        end
        if next_frame then
            local loc = obj.pos.y*(anim.frames_per_row or anim.frames)+obj.pos.x
            if (not anim.individual) or (jkr and jkr.animation.target and loc ~= jkr.animation.target) then
                loc = loc + 1
                if anim.immediate and jkr and jkr.animation.target then
                    loc = jkr.animation.target
                end
            end
            if loc >= anim.frames then loc = anim.start_frame or 0 end
            obj.pos.x = loc%(anim.frames_per_row or anim.frames)
            obj.pos.y = math.floor(loc/(anim.frames_per_row or anim.frames))
        end
        if next_frame_extra then
            local loc = obj.pos.extra.y*(anim.extra.frames_per_row or anim.extra.frames)+obj.pos.extra.x
            if (not anim.individual) or (jkr and jkr.animation.extra and jkr.animation.extra.target and loc ~= jkr.animation.extra.target) then
                loc = loc + 1
                if anim.extra.immediate and jkr and jkr.animation.extra and jkr.animation.extra.target then
                    loc = jkr.animation.extra.target
                end
            end
            if loc >= anim.extra.frames then loc = anim.extra.start_frame or 0 end
            obj.pos.extra.x = loc%(anim.extra.frames_per_row or anim.extra.frames)
            obj.pos.extra.y = math.floor(loc/(anim.extra.frames_per_row or anim.extra.frames))
        end
    end
end

function Game:update(dt)
    upd(self, dt)
    for k, v in pairs(AnimatedJokers) do
        sizi.update_frame(dt, k, G.P_CENTERS[k])
    end
end

SMODS.Sound({key = "morshu1", path = "morshu_1.ogg",})
SMODS.Sound({key = "morshu2", path = "morshu_2.ogg",})
SMODS.Sound({key = "mmm", path = "mmm.ogg",})
SMODS.Atlas {
   key = 'morshu', --atlas key
    path = 'morshu.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'morshu', --joker key
    loc_txt = { -- local text
        name = 'Morshu',
        text = {
            "{X:mult,C:white}X1{}",
            "and {C:money}$1{} for",
            "every {C:money}$10{}"

        },
    },
    atlas = 'morshu', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 1,
        dollars = 10,
        earned = 10,
        extra_dollars = 1
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult, center.ability.extra.dollars, center.ability.extra.extra_dollars, center.ability.extra.earned, center.ability.extra.Xmult * math.floor(((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) / center.ability.extra.dollars) }} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            if (to_number(card.ability.extra.Xmult) * math.floor(((to_number(G.GAME.dollars) or 0) + (to_number(G.GAME.dollar_buffer) or 0)) / to_number(card.ability.extra.dollars)) > 0) then
                return {
                    card = card,
                    Xmult_mod = card.ability.extra.Xmult * math.floor(((to_number(G.GAME.dollars) or 0) + (to_number(G.GAME.dollar_buffer) or 0)) / to_number(card.ability.extra.dollars)),
                    message = 'X' .. card.ability.extra.Xmult * math.floor(((to_number(G.GAME.dollars) or 0) + (to_number(G.GAME.dollar_buffer) or 0)) / to_number(card.ability.extra.dollars)),
                    sound= "sizimod_mmm",
                    colour = G.C.MULT
                }
            end
        end
        if context.starting_shop then
            if to_number(G.GAME.dollars) < 10 then 
                play_sound("sizimod_morshu2")
            else
               play_sound("sizimod_morshu1") 
            end
        end
        
    end,
    calc_dollar_bonus = function(self, card)
        return to_number(card.ability.extra.extra_dollars) * math.floor(((to_number(G.GAME.dollars) or 0) + (to_number(G.GAME.dollar_buffer) or 0)) / to_number(card.ability.extra.earned))
    end,   
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}


local ghosts_music = SMODS.Sound{
    key = "ghosts_music",
    path = "music_ghost.ogg",
    sync = false,
    pitch = 1,
    select_music_track = function(self)
        if sizi.config.ghosts == 1 and #SMODS.find_card("j_sizimod_ghosts") > 0 then
            -- enabled while Vegito is present
            return 100
        else
            -- always disabled
        end
    end
}

SMODS.Atlas {
   key = 'ghosts', --atlas key
    path = 'ghosts.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 95, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'ghosts', --joker key
    loc_txt = { -- local text
        name = 'Super Ghostbusters',
        text = {
            "Plays the entirety of",
            "{C:attention}Super Ghostbusters{}",
            "and {C:attention}+3 Joker Slots{}"
        },
    },
    atlas = 'ghosts', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    add_to_deck = function(self, card, from_debuff)
		G.jokers.config.card_limit = G.jokers.config.card_limit + 3
	end,
	remove_from_deck = function(self, card, from_debuff)
		G.jokers.config.card_limit = G.jokers.config.card_limit - 3
	end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'dozen', --atlas key
    path = 'dozen.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'dozen', --joker key
    loc_txt = { -- local text
        name = 'Dozen Eggs',
        text = {
            "Gains {C:money}$12 of",
            "{C:attention}sell value{}",
            "each round",
            "Bonus decreases by {C:money}$1",
            "at the end of every round"
        },
    },
    atlas = 'dozen', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { extra = { price = 12 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.price } }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            card.ability.extra_value = card.ability.extra_value + card.ability.extra.price
            if card.ability.extra.price > 1 then
                card.ability.extra.price = card.ability.extra.price - 1
            end
            card:set_cost()
            return {
                message = localize('k_val_up'),
                colour = G.C.MONEY
            }
        end
        if context.selling_self then
            G.GAME.pool_flags.sizimod_dozensold = true;
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return G.GAME.pool_flags.sizimod_eggsold
    end,

}

SMODS.Atlas {
   key = 'omelette', --atlas key
    path = 'eggfinal.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'omelette', --joker key
    loc_txt = { -- local text
        name = 'Omelette',
        text = {
            "Gives {C:money}$15{}",
            "at the end of round",
            "{C:green}#2# in 100{}",
            "to be {C:attention}eaten{} at the",
            "end of round"
        },
    },
    atlas = 'omelette', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { extra = { dollars = 15, odds = 100} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dollars, (G.GAME.probabilities.normal or 1), card.ability.extra.odds} }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if math.random(10) == 1 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('tarot1')
                        card.T.r = -0.2
                        card:juice_up(0.3, 0.4)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.3,
                            blockable = false,
                            func = function()
                                card:remove()
                                return true
                            end
                        }))
                        return true
                    end
                }))
                return {
                    message = "Eaten!"
                }
            else
                return {
                message = "Safe!"
            }
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        return to_number(card.ability.extra.dollars)
    end, 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return G.GAME.pool_flags.sizimod_dozensold
    end,

}

SMODS.Atlas {
   key = 'para', --atlas key
    path = 'para.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'para', --joker key
    loc_txt = { -- local text
        name = 'Paracelsus',
        text = {
            "{C:money}$1{} for every {C:hearts}Heart",
            "in the player's deck",
            "when {C:attention}A.B.A{} is owned",
            "(Currently {C:money}$#2#{})"

        },
    },
    atlas = 'para', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
       dollars = 1
      }
    },
    loc_vars = function(self,info_queue,center)
        local heart_tally = 0
        if G.playing_cards then
            for _, playing_card in ipairs(G.playing_cards) do
                if playing_card:is_suit("Hearts") then heart_tally = heart_tally + 1 end
            end
        end
        return {vars = {center.ability.extra.dollars, center.ability.extra.dollars * heart_tally}} --#1# is replaced with card.ability.extra.Xmult
    end,

    calc_dollar_bonus = function(self, card)
        if next(find_joker("j_sizimod_aba")) then
            local heart_tally = 0
            for _, playing_card in ipairs(G.playing_cards) do
                if playing_card:is_suit("Hearts") then heart_tally = heart_tally + 1 end
            end
            return heart_tally > 0 and to_number(card.ability.extra.dollars) * heart_tally or nil
        end
    end,   
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'aba', --atlas key
    path = 'aba.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'aba', --joker key
    loc_txt = { -- local text
        name = 'A.B.A',
        text = {
            "{X:mult,C:white}X0.5{} for every {C:hearts}Heart",
            "in the player's deck",
            "when {C:attention}Paracelsus{} is owned",
            "(Currently {X:mult,C:white}X#2#{} Mult)"

        },
    },
    atlas = 'aba', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
       Xmult = 0.5
      }
    },
    loc_vars = function(self,info_queue,center)
        local heart_tally = 0
        if G.playing_cards then
            for _, playing_card in ipairs(G.playing_cards) do
                if playing_card:is_suit("Hearts") then heart_tally = heart_tally + 1 end
            end
        end
        return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult * heart_tally}} --#1# is replaced with card.ability.extra.Xmult
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            if next(find_joker("j_sizimod_para")) then
                local heart_tally = 0
                for _, playing_card in ipairs(G.playing_cards) do
                    if playing_card:is_suit("Hearts") then heart_tally = heart_tally + 1 end
                end
                return {
                    Xmult = 1 + card.ability.extra.Xmult * heart_tally
                }
            end
        end
    end,   
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'rock', --atlas key
    path = 'petrock.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'rock', --joker key
    loc_txt = { -- local text
        name = 'Pet Rock',
        text = {
            "All {C:attention}Stone{} cards",
            "give {X:chips,C:white}X1.5{} chips"

        },
    },
    atlas = 'rock', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
       x_chips = 1.5
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.x_chips}} --#1# is replaced with card.ability.extra.Xmult
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then 
            for _, playing_card in ipairs(G.playing_cards) do
                if SMODS.has_enhancement(playing_card, 'm_stone') then 
                    return {
                        x_chips = card.ability.extra.x_chips
                    }
                end
            end
        end
    end,   
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'grade', --atlas key
    path = 'graded.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'grade', --joker key
    loc_txt = { -- local text
        name = 'Graded Joker',
        text = {
            "{X:mult,C:white}X0.25{} Mult and {C:money}$1{}",
            "per card with an {C:attention}Edition{}",
            "in your deck",
            "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult and {C:money}$#4#{C:inactive})"

        },
    },
    atlas = 'grade', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
       Xmult = 0.25, dollars = 1
      }
    },
    loc_vars = function(self,info_queue,center)
        local edition_tally = 0
        if G.playing_cards then
            for _, playing_card in ipairs(G.playing_cards) do
                if playing_card.edition then
                    edition_tally = edition_tally + 1
                end
            end
        end
        return {vars = {center.ability.extra.Xmult, center.ability.extra.dollars,  1 + center.ability.extra.Xmult * edition_tally, center.ability.extra.dollars * edition_tally}} --#1# is replaced with card.ability.extra.Xmult
    end,

    calculate = function(self, card, context)
        local edition_tally = 0
        if G.playing_cards then
            for _, playing_card in ipairs(G.playing_cards) do
               if playing_card.edition then
                    edition_tally = edition_tally + 1
                end
            end
        end
        if context.joker_main then 
            return {
                Xmult = 1 + card.ability.extra.Xmult * edition_tally
            }
        end
    end,   
    calc_dollar_bonus = function(self, card)
            local edition_tally = 0
            for _, playing_card in ipairs(G.playing_cards) do
                if playing_card.edition then
                    edition_tally = edition_tally + 1
                end
            end
            return edition_tally > 0 and to_number(card.ability.extra.dollars) * edition_tally or nil
    end,  
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'peanut', --atlas key
    path = 'peanuts.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
-- Delayed Gratification
SMODS.Joker {
    key = "peanut",
    loc_txt = { -- local text
        name = 'Peanut Gallery',
        text = {
            "All cards ranked {C:attention}Ace to 5",
            "give {X:chips,C:white}+20{} chips"
        },
    },
    atlas = 'peanut', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { extra = { chips = 20 } },
    locked_loc_vars = function(self, info_queue, card)
        return { vars = { number_format(10000) } }
    end,
    calculate = function(self, card, context) 
        if context.individual and context.cardarea == G.play and
            (context.other_card:get_id() == 14 or context.other_card:get_id() == 2 or context.other_card:get_id() == 3 or context.other_card:get_id() == 4 or context.other_card:get_id() == 5) then
            return {
                chips = card.ability.extra.chips
            }
        end
    end,
}

SMODS.Atlas {
   key = 'grug', --atlas key
    path = 'grug.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'grug', --joker key
    loc_txt = { -- local text
        name = 'Grug',
        text = {
            "Retriggers all",
            "{C:attention}Stone{} cards"

        },
    },
    atlas = 'grug', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 6, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
       retriggers = 1
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.retriggers}} --#1# is replaced with card.ability.extra.Xmult
    end,

    calculate = function(self, card, context)
        if context.repetition then
            if context.cardarea == G.play then
                for _, playing_card in ipairs(G.playing_cards) do
                    if SMODS.has_enhancement(playing_card, 'm_stone') then 
                        return {
                        message = "I AM A CAVEMAN!",
                        repetitions = card.ability.extra.retriggers,
                        card = card,
                        }
                    end
                end
            end
        end
        -- if context.individual and context.cardarea == G.play then 
        -- end
    end,   
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'devilish', --atlas key
    path = 'devilish.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'devilish', --joker key
    loc_txt = { -- local text
        name = 'Delightfully Devilish',
        text = {
            "{C:money}$6{} and {X:mult,C:white}X6{} when",
            "playing a hand containing",
            "exactly {C:attention}three 6s{}"

        },
    },
    atlas = 'devilish', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 6, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
       Xmult = 6,
       dollars = 6
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult, center.ability.extra.dollars}} --#1# is replaced with card.ability.extra.Xmult
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            if #context.full_hand == 3 and context.full_hand[1]:get_id() == 6 and context.full_hand[2]:get_id() == 6 and context.full_hand[3]:get_id() == 6 then
                return{
                    Xmult = card.ability.extra.Xmult,
                    dollars = to_number(card.ability.extra.dollars)
                }
            end
        end
    end,   
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'coupon', --atlas key
    path = 'coupon.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'coupon', --joker key
    loc_txt = { -- local text
        name = 'Coupon',
        text = {
            "{C:attention}+1{} Booster Pack",
            "and {C:attention}+1{} Shop Slot"

        },
    },
    atlas = 'coupon', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
       booster_slots = 1, shop_size = 1
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.booster_slots, center.ability.extra.shop_size}} --#1# is replaced with card.ability.extra.Xmult
    end,
    add_to_deck = function(self, card, from_debuff)
		local mod = card.ability.extra.booster_slots
		SMODS.change_booster_limit(mod)
        local shop_mod = card.ability.extra.shop_size 
        change_shop_size(shop_mod)
	end,
	remove_from_deck = function(self, card, from_debuff)
		local mod = card.ability.extra.booster_slots
		SMODS.change_booster_limit(-mod)
        local shop_mod = card.ability.extra.shop_size 
        change_shop_size(-shop_mod)
	end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'noon', --atlas key
    path = 'noon.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'noon', --joker key
    loc_txt = { -- local text
        name = 'High Noon',
        text = {
           "When a hand contains",
           "exactly {C:attention}2 face cards{},",
           "{C:attention}doubles{} the chips",
           "and randomly {C:attention}destroy one of them"

        },
    },
    atlas = 'noon', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 6, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
      chips = 10
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.chips}} --#1# is replaced with card.ability.extra.Xmult
    end,

    calculate = function(self, card, context)
        if context.before then
            card.ability.extra.face_count = {}
            for _, v in pairs(context.scoring_hand) do
                if v:is_face() then
                    table.insert(card.ability.extra.face_count, v)
                end
            end
            if #card.ability.extra.face_count == 2 then
                pseudorandom_element(card.ability.extra.face_count, pseudoseed('exampleseed')).ability.destroyed_by_sizzziii = true
            end
        end
        if context.destroying_card and context.destroying_card.ability.destroyed_by_sizzziii then
            return {
                remove = true,
                message = "It's High Noon..."
            }
        end
        if context.individual and context.cardarea == G.play and context.other_card:is_face() and #card.ability.extra.face_count == 2 then
            context.other_card.ability.perma_bonus = (context.other_card.ability.perma_bonus or 0) * 2
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.CHIPS
            }
        end
    end,   
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}


SMODS.Atlas{
    key = 'limits',
    path = 'limits.png',
    px = 71,
    py = 96,
}

SMODS.Joker{
    key = 'limits',
    loc_txt= {
        name = 'We Jokers Have No Limits',
        text = { "Retriggers the {C:attention}leftmost{} Joker",
        "and the Joker to the {C:attention}right{}"}
    },
    atlas = 'limits',
    rarity = 3,
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x=0, y= 0},
    config = { extra = {retriggers = 1} },
	loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.retriggers}  }
	end,
    calculate = function(self, card, context)
        local my_pos = nil
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i] == card then
				my_pos = i
				break
			end
		end
        if context.retrigger_joker_check and not context.retrigger_joker and context.other_card ~= self then
			if context.other_card == G.jokers.cards[my_pos + 1] then
				return {
					 message = "Again!",
					repetitions = card.ability.extra.retriggers,
					card = card,
				}
            end
            if context.other_card == G.jokers.cards[1] then
				return {
					message = "Again!",
					repetitions = card.ability.extra.retriggers,
					card = card,
				}
            end
			-- else
			-- 	return nil, true
			-- end
            -- else
			-- 	return nil, true
			-- end
		end
    end,
}

SMODS.Joker:take_ownership('j_egg', -- object key (class prefix not required)
    { -- table of properties to change from the existing object
     key = "egg",
    blueprint_compat = false,
    rarity = 1,
    cost = 4,
    pos = { x = 0, y = 10 },
    config = { extra = { price = 3 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.price } }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            card.ability.extra_value = card.ability.extra_value + card.ability.extra.price
            card:set_cost()
            return {
                message = localize('k_val_up'),
                colour = G.C.MONEY
            }
        end
        if context.selling_self then
            G.GAME.pool_flags.sizimod_eggsold = true;
        end
    end
    },
    true -- silent | suppresses mod badge
)

to_big = to_big or function(x) return x end

SMODS.Atlas {
   key = 'snake', --atlas key
    path = 'snake.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
-- Delayed Gratification
SMODS.Joker {
    key = "snake",
    loc_txt = { -- local text
        name = 'Snake Eyes',
        text = {
            "All {C:green}listed probabilities{}",
            "become guaranteed",
            "{C:green}1 in 10{} chance to destroy itself"
        },
    },
    atlas = 'snake', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { extra = { dollars = 1 } },
    locked_loc_vars = function(self, info_queue, card)
        return { vars = { number_format(10000) } }
    end,
    add_to_deck = function(self, card, from_debuff)
        for k, v in pairs(G.GAME.probabilities) do
            G.GAME.probabilities[k] = v + 1000
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for k, v in pairs(G.GAME.probabilities) do
            G.GAME.probabilities[k] = 1
        end
    end,

    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if math.random(10) == 1 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('tarot1')
                        card.T.r = -0.2
                        card:juice_up(0.3, 0.4)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.3,
                            blockable = false,
                            func = function()
                                card:remove()
                                return true
                            end
                        }))
                        return true
                    end
                }))
                return {
                    message = "Snake Eyes!"
                }
            else
                return {
                message = "Safe!"
            }
            end
        end
    end,
}

SMODS.Atlas {
   key = 'shopfree', --atlas key
    path = 'shop.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "shopfree",
    loc_txt = { -- local text
        name = 'Online Shopping Card',
        text = {
           "The first {C:attention}10 rerolls",
           "are free in the {C:attention}shop"
        },
    },
    atlas = 'shopfree', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { extra = { rerolls = 10 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.rerolls } }
    end,
    add_to_deck = function(self, card, from_debuff)
        SMODS.change_free_rerolls(card.ability.extra.rerolls)
    end,
    remove_from_deck = function(self, card, from_debuff)
        SMODS.change_free_rerolls(-card.ability.extra.rerolls)
    end
}

SMODS.Atlas {
   key = 'bigshot', --atlas key
    path = 'bigshot.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "bigshot",
    loc_txt = { -- local text
        name = 'Spamton',
        text = {
          "{X:mult,C:white}X0.1{} Mult when purchasing",
          "any {C:attention}card or booster pack{}",
          "in the {C:attention}shop",
           "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
        },
    },
    atlas = 'bigshot', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { extra = { Xmult = 1, extra = 0.1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.extra } }
    end,
    calculate = function(self, card, context) 
        if context.buying_card then 
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.extra
            return {
                message = "+0.1 Kromer"
            }
        end
        if context.open_booster then 
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.extra
            return {
                message = "+0.1 Kromer"
            }
        end
        if context.joker_main then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
	end,
    
}

SMODS.Atlas {
   key = 'third', --atlas key
    path = 'third.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "third",
    loc_txt = { -- local text
        name = 'Third Eye',
        text = {
          "When your first hand",
          "contains a {C:attention}3{},add a random",
          "{C:attention}enhancement and edition{}"
        },
    },
    atlas = 'third', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { extra = { Xmult = 1, extra = 0.1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.extra } }
    end,
    calculate = function(self, card, context) 
        if context.before and context.main_eval and not context.blueprint then
            local threes = 0
            for _, scored_card in ipairs(context.scoring_hand) do
                if scored_card:get_id() == 3 and threes < 2 then
                    threes = threes + 1
                    if math.random(1,3) == 1 then
                        _card:set_edition("e_polychrome", true)
                    elseif math.random(1,3) == 2 then
                        scored_card:set_edition("e_foil", true)
                    else
                        scored_card:set_edition("e_holo", true)
                    end
                    local enhancement = pseudorandom_element({ "m_stone", "m_gold", "m_steel", "m_glass", "m_lucky", "m_wild", "m_mult", "m_bonus" }, pseudoseed("sizimod_third"))
                    scored_card:set_ability(G.P_CENTERS[enhancement], nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            scored_card:juice_up()
                            return true
                        end
                    }))
                end
            end
            if threes > 0 then
                return {
                    message = "AWOKEN!",
                    colour = G.C.BLUE
                }
            end
        end
	end,
    
}

SMODS.Atlas {
   key = 'miner', --atlas key
    path = 'miner.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "miner",
    loc_txt = { -- local text
        name = 'Miner',
        text = {
          "{C:blue}+5{} Chips and {C:red}+1{} Mult",
          "for every {C:diamonds}Diamond",
          "in your deck",
           "{C:inactive}(Currently {C:blue}+#4#{C:inactive} Chips and {C:red}+#3#{C:inactive} Mult)"
        },
    },
    atlas = 'miner', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = { x = 0, y = 0 },
    config = { 
      extra = {
       mult = 1, chips = 5
      }
    },
    loc_vars = function(self,info_queue,center)
        local diamond_tally = 0
        if G.playing_cards then
            for _, playing_card in ipairs(G.playing_cards) do
                if playing_card:is_suit("Diamonds") then diamond_tally = diamond_tally + 1 end
            end
        end
        return {vars = {center.ability.extra.mult, center.ability.extra.chips, center.ability.extra.mult * diamond_tally, center.ability.extra.chips * diamond_tally}} --#1# is replaced with card.ability.extra.Xmult
    end,

    calculate = function(self, card, context)
        if context.joker_main then
                local diamond_tally = 0
                for _, playing_card in ipairs(G.playing_cards) do
                    if playing_card:is_suit("Diamonds") then diamond_tally = diamond_tally + 1 end
                end
                return {
                    mult = card.ability.extra.mult * diamond_tally,
                    chips = card.ability.extra.chips * diamond_tally
                }
        end
    end,   
    
}


SMODS.Atlas {
   key = 'blackhole', --atlas key
    path = 'blackhole.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "blackhole",
    loc_txt = { -- local text
        name = 'Event Horizon',
        text = {
            "When Blind is selected, {C:green}#3# in 3{} chance to",
            "create a {C:spectral}Black Hole{}",
            "{X:mult,C:white}X0.5{} Mult per",
            "{C:spectral}Black Hole{} used",
            "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
        },
    },
    atlas = 'blackhole', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    key = "blackhole",
     unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    rarity = 3,
    cost = 10,
    pos = { x = 0, y = 0 },
    config = { extra = { Xmult = 1, extra = 0.5, odds = 3 } },
    loc_vars = function(self, info_queue, center)
		return { vars = {center.ability.extra.Xmult, center.ability.extra.extra, (G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
	end,
	calculate = function(self, card, context) 
        if context.setting_blind and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
             G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
             if pseudorandom("sizimod_blackhole") < G.GAME.probabilities.normal / card.ability.extra.odds then
                return {
                    extra = {
                        func = function() -- This is for timing purposes, everything here runs after the message
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    SMODS.add_card {
                                        key = 'c_black_hole',
                                    }
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end)
                            }))
                        end
                    },
                }
            else
                -- Nothing
            end
        end
		if context.using_consumeable and not context.blueprint and context.consumeable.config.center.key == "c_black_hole" then
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.extra
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } }
            }
        end
        if context.joker_main then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
	end,
}
SMODS.Atlas {
   key = 'necro', --atlas key
    path = 'necro.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "necro",
    loc_txt = { -- local text
        name = 'Necromancer',
        text = {
            "All {C:spectral}Spectral Packs{}",
            "are free and creates a",
            "{C:spectral}Spectral{} card",
            "when a Blind is selected"
        },
    },
    atlas = 'necro', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    key = "necro",
     unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    rarity = 3,
    cost = 10,
    pos = { x = 0, y = 0 },
    add_to_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true
            end
        }))
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true
            end
        }))
    end,
    calculate = function(self, card, context) 
         if context.setting_blind and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            return {
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = (function()
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    SMODS.add_card {
                                        set = 'Spectral',
                                    }
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end
                            }))
                            SMODS.calculate_effect({ message = "+Spectral", colour = G.C.BLUE },
                                context.blueprint_card or card)
                            return true
                        end)
                    }))
                end
            }
        end
	end,
	
}


local card_set_cost_ref = Card.set_cost
function Card:set_cost()
    card_set_cost_ref(self)
    if next(SMODS.find_card("j_sizimod_necro")) then
        if (self.ability.set == 'Spectral' or (self.ability.set == 'Booster' and self.config.center.kind == 'Spectral')) then self.cost = 0 end
        self.sell_cost = math.max(1, math.floor(self.cost / 2)) + (self.ability.extra_value or 0)
        self.sell_cost_label = self.facing == 'back' and '?' or self.sell_cost
    end
end

SMODS.Atlas {
   key = 'unity', --atlas key
    path = 'unity.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "unity",
    loc_txt = { -- local text
        name = 'Unity',
        text = {
            "All {C:attention}suits{} are considered the same"
        },
    },
    atlas = 'unity', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    key = "unity",
     unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    rarity = 3,
    cost = 10,
    pos = { x = 0, y = 0 },
    config = { extra = { Xmult = 1, extra = 0.5, odds = 3 } },
    loc_vars = function(self, info_queue, center)
		return { vars = {}}
	end,
}

local card_is_suit_ref = Card.is_suit
function Card:is_suit(suit, bypass_debuff, flush_calc)
        local ret = card_is_suit_ref(self, suit, bypass_debuff, flush_calc)
        if not ret and not SMODS.has_no_suit(self) and next(SMODS.find_card("j_sizimod_unity")) then
            return true
        end
        return ret
end

SMODS.Atlas {
   key = 'jack', --atlas key
    path = 'jack.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "jack",
    loc_txt = { -- local text
        name = 'Jack of All Trades',
        text = {
           "All Jacks give {X:mult,C:white}X1.5{} Mult",
           "when {C:attention}scored or held in hand{}",
           "and are also",
           "considered {C:attention}Kings{}"
        },
    },
    atlas = 'jack', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    key = "jack",
     unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    rarity = 3,
    cost = 10,
    pos = { x = 0, y = 0 },
    config = { extra = { Xmult = 1.5} },
    loc_vars = function(self, info_queue, center)
		return { vars = {center.ability.extra.Xmult}}
	end,
    calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play and
            (context.other_card:get_id() == 11) then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
        if context.individual and context.cardarea == G.hand and not context.end_of_round and context.other_card:get_id() == 11 then
            if context.other_card.debuff then
                return {
                    message = localize('k_debuffed'),
                    colour = G.C.RED
                }
            else
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end,
}

SMODS.Joker:take_ownership('j_triboulet', -- object key (class prefix not required)
    { -- table of properties to change from the existing object
    key = "triboulet",
    unlocked = false,
    blueprint_compat = true,
    rarity = 4,
    cost = 20,
    pos = { x = 4, y = 8 },
    soul_pos = { x = 4, y = 9 },
    config = { extra = { xmult = 2 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play and
            (context.other_card:get_id() == 12 or context.other_card:get_id() == 13) then
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if context.individual and context.cardarea == G.play and
            (next(SMODS.find_card("j_sizimod_jack"))) then
                if context.other_card:get_id() == 11 then
                    return {
                        xmult = card.ability.extra.xmult
                    }
                end
            end
	    end
    },
    true -- silent | suppresses mod badge
)

SMODS.Joker:take_ownership('j_hit_the_road', -- object key (class prefix not required)
    { -- table of properties to change from the existing object
    key = "hit_the_road",
    unlocked = false,
    blueprint_compat = true,
    rarity = 3,
    cost = 8,
    pos = { x = 8, y = 5 },
    config = { extra = { xmult_gain = 0.5, xmult = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult_gain, card.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.discard and not context.blueprint and
            not context.other_card.debuff and
            context.other_card:get_id() == 11 then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_gain
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.xmult } },
                colour = G.C.RED
            }
        end
        if context.discard and not context.blueprint and
            not context.other_card.debuff and
            context.other_card:get_id() == 11 and next(SMODS.find_card("j_sizimod_jack")) then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_gain
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.xmult } },
                colour = G.C.RED
            }
        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            card.ability.extra.xmult = 1
            return {
                message = localize('k_reset'),
                colour = G.C.RED
            }
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end
    },
    true -- silent | suppresses mod badge
)

SMODS.Joker:take_ownership('j_baron', -- object key (class prefix not required)
    { -- table of properties to change from the existing object
        key = "baron",
        blueprint_compat = true,
        rarity = 3,
        cost = 8,
        pos = { x = 6, y = 12 },
        config = { extra = { xmult = 1.5 } },
        loc_vars = function(self, info_queue, card)
            return { vars = { card.ability.extra.xmult } }
        end,
        calculate = function(self, card, context)
            if context.individual and context.cardarea == G.hand and not context.end_of_round and context.other_card:get_id() == 13 then
                if context.other_card.debuff then
                    return {
                        message = localize('k_debuffed'),
                        colour = G.C.RED
                    }
                else
                    return {
                        x_mult = card.ability.extra.xmult
                    }
                end
            end
            if context.individual and context.cardarea == G.hand and not context.end_of_round and context.other_card:get_id() == 11 and next(SMODS.find_card("j_sizimod_jack")) then
                if context.other_card.debuff then
                    return {
                        message = localize('k_debuffed'),
                        colour = G.C.RED
                    }
                else
                    return {
                        x_mult = card.ability.extra.xmult
                    }
                end
            end
        end,
    },
    true -- silent | suppresses mod badge
)


SMODS.Atlas {
   key = 'rootbeer', --atlas key
    path = 'rootbeer.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "rootbeer",
    loc_txt = { -- local text
        name = 'Root Beer',
        text = {
           "Gives a {C:attention}Double Tag{}",
           "when a {C:attention}Blind{} is selected"
        },
    },
    atlas = 'rootbeer', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    key = "rootbeer",
     unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    rarity = 3,
    cost = 10,
    pos = { x = 0, y = 0 },
    calculate = function(self, card, context)
		if context.setting_blind then
            return {
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = (function()
                            -- local tag = Tag(pseudorandom_element(G.P_TAGS, "seed").key)
                            -- tag:set_ability()
                             add_tag(Tag('tag_double'))
                            play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                            play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                            return true
                        end)
                    }))
                end
            }
        end
    end,
}

SMODS.Atlas {
   key = 'stock', --atlas key
    path = 'stock.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}
SMODS.Joker {
    key = "stock",
    loc_txt = { -- local text
        name = 'Stock Exchange',
        text = {
           "{C:money}$2{} for every {C:blue}hand{}",
           "played, {C:green}#4# in 50{} chance",
           "to reset at the end of round",
            "{C:inactive}(Currently {C:money}$#3#{C:inactive})"

        },
    },
    atlas = 'stock', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    key = "stock",
     unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = false, --can it be eternal
    perishable_compat = false, --can it be perishable
    rarity = 3,
    cost = 10,
    pos = { x = 0, y = 0 },
    config = { extra = { dollars = 0, odds = 50, check = 0 } },
    loc_vars = function(self, info_queue, card)
        -- (G.GAME.current_round.discards_left * card.ability.extra.dollars) + (G.GAME.current_round.hands_left * card.ability.extra.dollars)
        return { vars = { card.ability.extra.dollars, card.ability.extra.odds, card.ability.extra.check, (G.GAME.probabilities.normal or 1)} }
    end,
    calculate = function(self, card, context)
		if
			context.cardarea == G.jokers
			and context.before
			and not context.blueprint
		then
			card.ability.extra.check = card.ability.extra.check + 2
            return{
                message = "Upgrade!"
            }
        end
        -- if context.discard and not context.blueprint then
        --     card.ability.extra.check = card.ability.extra.check + card.ability.extra.discards_used
        -- end

        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint and pseudorandom("sizimod_stock") < G.GAME.probabilities.normal / card.ability.extra.odds then
            card.ability.extra.check = 0
            return {
                message = "MARKET CRASH!"
            }
        end
    end,
    calc_dollar_bonus = function(self, card)
        if card.ability.extra.check ~= 0 then 
            return (card.ability.extra.check + to_number(card.ability.extra.dollars)) or nil 
        end
    end
}

SMODS.Atlas {
   key = 'gun', --atlas key
    path = 'gun.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'gun', --joker key
    loc_txt = { -- local text
        name = 'Russian Roulette',
        text = {
           "All scored {C:attention}face cards{}",
           "give {X:mult,C:white}X2{} Mult and",
           "{C:green}#3# in 3{} chance to", 
           "be {C:attention}destroyed{}"

        },
    },
    atlas = 'gun', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
      Xmult = 2, odds = 3
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult, center.ability.extra.odds, (G.GAME.probabilities.normal or 0)}} --#1# is replaced with card.ability.extra.Xmult
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_face() then
            return {
                    Xmult = card.ability.extra.Xmult
            }
        end
        if context.destroy_card and not context.blueprint and context.cardarea == G.play and context.destroy_card:is_face() then
                if pseudorandom("sizimod_gun") < G.GAME.probabilities.normal / card.ability.extra.odds then
                    return {
                        remove = true
                    }
                end
        end
    end,   
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}


SMODS.Atlas {
   key = 'game', --atlas key
    path = 'game.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'game', --joker key
    loc_txt = { -- local text
        name = 'Video Game',
        text = {
           "When beating a Blind",
           "in {C:blue}1 hand{}",
           "earn {C:money}$10"

        },
    },
    atlas = 'game', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
      dollars = 10
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.dollars}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calc_dollar_bonus = function(self, card)
        if G.GAME.current_round.hands_played == 1 then
            return to_number(card.ability.extra.dollars) 
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'show', --atlas key
    path = 'show.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'show', --joker key
    loc_txt = { -- local text
        name = 'Game Show Host',
        text = {
            "When playing a {C:attention}#2#{},",
            "this Joker gives {X:mult,C:white}X2{} Mult",
            "Otherwise, lose {C:blue}20{} Chips and {C:red}5{} Mult,",
             "poker hand changes",
            "at the end of round",

        },
    },
    atlas = 'show', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
      Xmult = 3, mult = 0, chips = 0, poker_hand = "High Card"
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult, localize(center.ability.extra.poker_hand, 'poker_hands'), center.ability.extra.mult, center.ability.extra.chips}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        if context.joker_main and context.scoring_name == card.ability.extra.poker_hand then
            return {
               Xmult = card.ability.extra.Xmult
            }
        elseif  context.joker_main and context.scoring_name ~= card.ability.extra.poker_hand then
            return {
                chips = card.ability.extra.chips - 20,
                mult = card.ability.extra.mult - 5
            }
        end

        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            local _poker_hands = {}
            for k, v in pairs(G.GAME.hands) do
                if v.visible and k ~= card.ability.extra.poker_hand then
                    _poker_hands[#_poker_hands + 1] = k
                end
            end
            card.ability.extra.poker_hand = pseudorandom_element(_poker_hands, 'sizimod_show')
            return {
                message = localize('k_reset')
            }
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        local _poker_hands = {}
        for k, v in pairs(G.GAME.hands) do
            if v.visible and k ~= card.ability.extra.poker_hand then
                _poker_hands[#_poker_hands + 1] = k
            end
        end
        card.ability.extra.poker_hand = pseudorandom_element(_poker_hands,
            (card.area and card.area.config.type == 'title') and 'sizimod_false_host' or 'sizimod_show')
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'folder', --atlas key
    path = 'folder.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'folder', --joker key
    loc_txt = { -- local text
        name = 'Joker Folder',
        text = {
            "Creates an {C:green}Uncommon{}",
            "Joker when selecting a {C:attention}Blind{}",
            "for {C:attention}#1#{} rounds"

        },
    },
    atlas = 'folder', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        rounds = 5
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.rounds}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        if context.setting_blind and #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
            G.E_MANAGER:add_event(Event({
                func = function()
                        SMODS.add_card {
                            set = 'Joker',
                            rarity = 'Uncommon',
                        }
                        G.GAME.joker_buffer = 0
                    return true
                end
            }))
        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if card.ability.extra.rounds == 0 then
                G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            card.T.r = -0.2
                            card:juice_up(0.3, 0.4)
                            card.states.drag.is = true
                            card.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                blockable = false,
                                func = function()
                                    card:remove()
                                    return true
                                end
                            }))
                            return true
                        end
                }))
                return {
                        message = "Deleted!"
                    }
            else 
                card.ability.extra.rounds = card.ability.extra.rounds - 1
            end
        end
       
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'cellone', --atlas key
    path = '1stCell.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'cellone', --joker key
    loc_txt = { -- local text
        name = 'Cell (1st Form)',
        text = {
            "Destroys the Joker to the right",
            "Destroy {C:attention}#1# Jokers{}",
            "to transform into {C:attention}2nd Form Cell{}"

        },
    },
    atlas = 'cellone', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        destroy_count = 3
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.destroy_count}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        local my_pos = nil
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i] == card then
				my_pos = i
				break
			end
		end
		if
			context.setting_blind
			and not (context.blueprint_card or self).getting_sliced
			and my_pos
			and G.jokers.cards[my_pos + 1]
			and not G.jokers.cards[my_pos + 1].ability.eternal
			and not G.jokers.cards[my_pos + 1].getting_sliced
		then
			local sliced_card = G.jokers.cards[my_pos + 1]
			sliced_card.getting_sliced = true
			G.GAME.joker_buffer = G.GAME.joker_buffer - 1
			G.E_MANAGER:add_event(Event({
				func = function()
					G.GAME.joker_buffer = 0
					card:juice_up(0.8, 0.8)
					sliced_card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
                    card.ability.extra.destroy_count = card.ability.extra.destroy_count - 1
					return true
				end,
			}))
		end

        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint and card.ability.extra.destroy_count <= 0 then
            G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            card.T.r = -0.2
                            card:juice_up(0.3, 0.4)
                            card.states.drag.is = true
                            card.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                blockable = false,
                                func = function()
                                    card:remove()
                                    return true
                                end
                            }))
                            return true
                        end
            }))
            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
            return {
                    extra = {
                        func = function() -- This is for timing purposes, everything here runs after the message
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    SMODS.add_card {
                                        key = 'j_sizimod_celltwo'
                                    }
                                    G.GAME.joker_buffer = 0
                                    return true
                                end)
                            }))
                        end
                    },
            }
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'celltwo', --atlas key
    path = '2ndCell.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'celltwo', --joker key
    loc_txt = { -- local text
        name = 'Cell (2nd Form)',
        text = {
            "Destroys the Joker to the right",
            "Destroy {C:attention}#1# Jokers{}",
            "to transform into {C:attention}Cell (Perfect){}"

        },
    },
    atlas = 'celltwo', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        destroy_count = 5
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.destroy_count}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        local my_pos = nil
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i] == card then
				my_pos = i
				break
			end
		end
		if
			context.setting_blind
			and not (context.blueprint_card or self).getting_sliced
			and my_pos
			and G.jokers.cards[my_pos + 1]
			and not G.jokers.cards[my_pos + 1].ability.eternal
			and not G.jokers.cards[my_pos + 1].getting_sliced
		then
			local sliced_card = G.jokers.cards[my_pos + 1]
			sliced_card.getting_sliced = true
			G.GAME.joker_buffer = G.GAME.joker_buffer - 1
			G.E_MANAGER:add_event(Event({
				func = function()
					G.GAME.joker_buffer = 0
					card:juice_up(0.8, 0.8)
					sliced_card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
                    card.ability.extra.destroy_count = card.ability.extra.destroy_count - 1
					return true
				end,
			}))
		end

        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint and card.ability.extra.destroy_count <= 0 then
            G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            card.T.r = -0.2
                            card:juice_up(0.3, 0.4)
                            card.states.drag.is = true
                            card.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                blockable = false,
                                func = function()
                                    card:remove()
                                    return true
                                end
                            }))
                            return true
                        end
            }))
            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
            return {
                    extra = {
                        func = function() -- This is for timing purposes, everything here runs after the message
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    SMODS.add_card {
                                        key = 'j_sizimod_cellp',
                                    }
                                    G.GAME.joker_buffer = 0
                                    return true
                                end)
                            }))
                        end
                    },
            }
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return false
    end,
}

local cell_music = SMODS.Sound{
    key = "cellmusic",
    path = "music_perfect.ogg",
    sync = false,
    pitch = 1,
    select_music_track = function(self)
        if sizi.config.cell == 1 and #SMODS.find_card("j_sizimod_cellp") > 0 then
            -- enabled while Vegito is present
            return 100
        else
            -- always disabled
        end
    end
}

SMODS.Atlas {
   key = 'cellp', --atlas key
    path = 'CellP.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'cellp', --joker key
    loc_txt = { -- local text
        name = 'Cell (Perfect)',
        text = {
            "Destroys the Joker to the right",
            "and gains {X:mult,C:white}X2{} Mult",
            "{C:inactive}(Currently: {X:mult,C:white}X#1#{C:inactive} Mult)"


        },
    },
    atlas = 'cellp', --atlas' key
    rarity = 4, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    soul_pos = { x = 0, y = 1 },
    cost = 20, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 1, Xmult_extra = 2
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_extra}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        local my_pos = nil
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i] == card then
				my_pos = i
				break
			end
		end
		if
			context.setting_blind
			and not (context.blueprint_card or self).getting_sliced
			and my_pos
			and G.jokers.cards[my_pos + 1]
			and not G.jokers.cards[my_pos + 1].ability.eternal
			and not G.jokers.cards[my_pos + 1].getting_sliced
		then
			local sliced_card = G.jokers.cards[my_pos + 1]
			sliced_card.getting_sliced = true
			G.GAME.joker_buffer = G.GAME.joker_buffer - 1
			G.E_MANAGER:add_event(Event({
				func = function()
					G.GAME.joker_buffer = 0
					card:juice_up(0.8, 0.8)
					sliced_card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
                    card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_extra
					return true
				end,
			}))
            return {
                message = "This should be entertaining.."
            }
		end

        
        if context.joker_main then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return false
    end,
}

SMODS.Atlas {
   key = 'dollah', --atlas key
    path = 'dollah.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'dollah', --joker key
    loc_txt = { -- local text
        name = '6. The Dollar',
        text = {
           "Earn {C:money}$#1#{} at the end of round",
           "Adds {C:money}$1{} at the end of rounds"
        },
    },
    atlas = 'dollah', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
      dollars = 1, extra = 1
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.dollars}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            card.ability.extra.dollars = card.ability.extra.dollars + card.ability.extra.extra 
            return {
                message = "6. The Dollar"
            }
        end
    end,
    calc_dollar_bonus = function(self, card)
            return to_number(card.ability.extra.dollars) 
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'belt', --atlas key
    path = 'belt.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'belt', --joker key
    loc_txt = { -- local text
        name = 'Asteroid Belt',
        text = {
           "Gains {C:blue}+8{} chips every time",
           "a {C:planet}Planet{} card is used",
         "{C:inactive}(Currently: {C:blue}+#1#{C:inactive} Chips)",
        },
    },
    atlas = 'belt', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 6, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
      chips = 0, extra = 8
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.chips, center.ability.extra.extra}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == 'Planet' then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.extra
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.CHIPS,
                message_card = card
            }
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'jackpot', --atlas key
    path = 'jackpot.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'jackpot', --joker key
    loc_txt = { -- local text
        name = 'Jackpot',
        text = {
           "Turns all {C:attention}scored 7s{}",
           "into {C:attention}Lucky Cards{}",
           "and retriggers them once"
        },
    },
    atlas = 'jackpot', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
      retriggers = 1
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.retriggers}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint then
            local sevens = 0
            for _, scored_card in ipairs(context.scoring_hand) do
                if scored_card:get_id() == 7 then
                    sevens = sevens + 1
                    scored_card:set_ability('m_lucky', nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            scored_card:juice_up()
                            return true
                        end
                    }))
                end
            end
            if sevens > 0 then
                return {
                    message = "JACKPOT!",
                    colour = G.C.MONEY
                }
            end
        end
        if context.repetition then
            if context.cardarea == G.play and context.other_card:get_id() == 7 and SMODS.has_enhancement(context.other_card, 'm_lucky') then
                return {
                    message = "Again!",
                    repetitions = card.ability.extra.retriggers,
                    card = card,
                }
            end
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'occult', --atlas key
    path = 'occult.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'occult', --joker key
    loc_txt = { -- local text
        name = 'Occult Eye',
        text = {
           "{X:mult,C:white}X0.2{} Mult and {X:chips,C:white}X0.2{} Mult",
           "for every {C:spectral}Spectral{} card used",
           "{C:inactive}(Currently: {X:mult,C:white}X#1#{}{C:inactive} Mult and {X:chips,C:white}X#2#{}{C:inactive} Chips)"
        },
    },
    atlas = 'occult', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
      Xmult = 1, x_chips = 1, extra_mult = 0.2, extra_chips = 0.2
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult, center.ability.extra.x_chips, center.ability.extra.extra_mult, center.ability.extra.extra_chips}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
       if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == 'Spectral' then
            card.ability.extra.x_chips = card.ability.extra.x_chips + card.ability.extra.extra_chips
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.extra_mult
            return {
                message = "Upgrade!"
            }
        end
        if context.joker_main then
            return {
                x_chips = card.ability.extra.x_chips,
                Xmult = card.ability.extra.Xmult
            }
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'hitbox', --atlas key
    path = 'hitbox.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'hitbox', --joker key
    loc_txt = { -- local text
        name = 'Janky Hitbox',
        text = {
          "Gives a random amount",
          "of {C:chips}Chips{} between {C:attention{}1 and 100",
          "and {C:red}Mult{} between {C:attention{}1 and 50"
        },
    },
    atlas = 'hitbox', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
      min_mult = 1, min_chips = 1, max_chips = 100, max_mult = 50
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.min_mult, center.ability.extra.min_chips, center.ability.extra.max_chips, center.ability.extra.max_mult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = pseudorandom('sizimod_hitbox', card.ability.extra.min_chips, card.ability.extra.max_chips),
                mult = pseudorandom('sizimod_hitbox', card.ability.extra.min_mult, card.ability.extra.max_mult)
            }
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'hold', --atlas key
    path = 'hold.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'hold', --joker key
    loc_txt = { -- local text
        name = 'Hold Em',
        text = {
         "When your first {C:blue}hand{} is a {C:attention}Pair{},",
         "draw {C:attention}5 cards{} when scoring"
        },
    },
    atlas = 'hold', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context) 
        if context.before and next(context.poker_hands['Pair']) and G.GAME.hands_played < 1 then
                SMODS.draw_cards(5)
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Sound({
    key = "explode",
    path = "explode.ogg",
})

SMODS.Atlas {
   key = 'bomb', --atlas key
    path = 'bomb.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'bomb', --joker key
    loc_txt = { -- local text
        name = 'Cartoonish Bomb',
        text = {
         "Destroys a played hand after {C:attention}#2#{} rounds",
         "Up to {C:attention}#1#{} times"
        },
    },
    atlas = 'bomb', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 6, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        bomb_count = 2, round_count = 3
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.bomb_count, center.ability.extra.round_count}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context) 
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then 
            card.ability.extra.round_count = card.ability.extra.round_count - 1
        end 
       
        if card.ability.extra.round_count <= 0 and context.destroying_card then
			return not context.destroying_card.ability.eternal
		end
        if context.after and card.ability.extra.round_count <= 0 then
                card.ability.extra.bomb_count = card.ability.extra.bomb_count - 1
                card.ability.extra.round_count = 3
        end 


       if context.end_of_round and context.game_over == false and context.main_eval and card.ability.extra.bomb_count <= 0 then 
            G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('sizimod_explode')
                            card.T.r = -0.2
                            card:juice_up(0.3, 0.4)
                            card.states.drag.is = true
                            card.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                blockable = false,
                                func = function()
                                    card:remove()
                                    return true
                                end
                            }))
                            return true
                        end
            }))
            return {
                message = "BOOM!"
            }
       end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'river', --atlas key
    path = 'river.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'river', --joker key
    loc_txt = { -- local text
        name = 'The River',
        text = {
         "When playing a hand containing {C:attention}5 cards{}",
         "The card gives half its rank value as {X:mult,C:white}X Mult{}"
        },
    },
    atlas = 'river', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 6, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 1
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context) 
        if context.individual and context.cardarea == G.play and not context.end_of_round and #context.full_hand == 5 then
            local temp_Mult, temp_ID = 15, 15
            local river_card = nil
                    temp_Mult = G.play.cards[5].base.nominal
                    temp_ID = G.play.cards[5].base.id
                    river_card = G.play.cards[5]
            if river_card == context.other_card then
                if context.other_card.debuff then
                    return {
                        message = localize('k_debuffed'),
                        colour = G.C.RED
                    }
                else
                    return {
                        Xmult = card.ability.extra.Xmult + (0.5 * temp_Mult)
                    }
                end
            end
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'slots', --atlas key
    path = 'slots.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'slots', --joker key
    loc_txt = { -- local text
        name = 'Slot Machine',
        text = {
         "When playing a {C:attention}Three of a Kind{}",
         "earn 25% of each",
         "card's rank as {X:mult,C:white}X Mult{}"
        },
    },
    atlas = 'slots', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 6, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 1, dollars = 7
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context) 
        if context.individual and context.cardarea == G.play and not context.end_of_round and next(context.poker_hands["Three of a Kind"]) then
            local temp_Mult, temp_ID = 15, 15
            local slot_card = nil
            for i = 1, #G.play.cards do
                    temp_Mult = G.play.cards[i].base.nominal
                    temp_ID = G.play.cards[i].base.id
                    slot_card = G.play.cards[i]
                    return {
                        Xmult = card.ability.extra.Xmult + (0.25 * temp_Mult)
                    }
            end
            if slot_card == context.other_card then
                if context.other_card.debuff then
                    return {
                        message = localize('k_debuffed'),
                        colour = G.C.RED
                    }
                end
            end
            return {
                    dollars = to_number(card.ability.extra.dollars)
            }
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'eclipse', --atlas key
    path = 'eclipse.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'eclipse', --joker key
    loc_txt = { -- local text
        name = 'Eclipse',
        text = {
         "Earns {X:mult,C:white}X0.5{} Mult when",
         "playing a {C:attention}Full House{}",
         "Earns and additional {X:mult,C:white}X1{} Mult when",
         "playing a {C:attention}Flush House{}",
         "{C:inactive}(Currently: {X:mult,C:white}X#1#{}{C:inactive} Mult)"
        },
    },
    atlas = 'eclipse', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 1, extra = 0.5, extra_two = 1
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context) 
        if context.before and next(context.poker_hands["Full House"]) then
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.extra
            return {
                message = "Upgrade!"
            }
        end
        if context.before and next(context.poker_hands["Flush House"]) then
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.extra_two
            return {
                message = "Upgrade!"
            }
        end
        if context.joker_main then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'star', --atlas key
    path = 'star.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'star', --joker key
    loc_txt = { -- local text
        name = 'Shooting Star',
        text = {
         "When beating a blind in",
         "{C:blue}2 hands or less{}, creates a",
         "{C:planet}Planet{} Card of",
         "your winning hand"
        },
    },
    atlas = 'star', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 1, extra = 0.5, extra_two = 1
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context) 
        if context.end_of_round and G.GAME.current_round.hands_played <= 2 and context.main_eval and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.0,
                func = function()
                    if G.GAME.last_hand_played then
                        local _planet = nil
                        for k, v in pairs(G.P_CENTER_POOLS.Planet) do
                            if v.config.hand_type == G.GAME.last_hand_played then
                                _planet = v.key
                            end
                        end
                        if _planet then
                            SMODS.add_card({ key = _planet })
                        end
                        G.GAME.consumeable_buffer = 0
                    end
                    return true
                end
            }))
            return { message = localize('k_plus_planet'), colour = G.C.SECONDARY_SET.Planet }
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'bar', --atlas key
    path = 'bar.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'bar', --joker key
    loc_txt = { -- local text
        name = 'Chocolate Bar',
        text = {
        "Earn {C:money}$#1#{} at the",
        "end of round, lose {C:money}$1{}",
        "for every card {C:red}discarded{}"
        },
    },
    atlas = 'bar', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        dollars = 20, discards = 3, discards_remaining = 3
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.dollars, center.ability.extra.discards, center.ability.extra.discards_remaining}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context) 
        if context.discard and not context.blueprint then
                card.ability.extra.discards_remaining = card.ability.extra.discards
                card.ability.extra.dollars = card.ability.extra.dollars - 1
                return {
                    message = "Biten!"
                    
                }
        end
        if context.end_of_round and card.ability.extra.dollars <= 0 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('tarot1')
                        card.T.r = -0.2
                        card:juice_up(0.3, 0.4)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.3,
                            blockable = false,
                            func = function()
                                card:remove()
                                return true
                            end
                        }))
                        return true
                    end
                }))
                return {
                    message = "Eaten!"
                }
        end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'ace', --atlas key
    path = 'hole.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'ace', --joker key
    loc_txt = { -- local text
        name = 'Ace in the Hole',
        text = {
        "All odd ranked cards",
        "aount as {C:attention}Aces{}"
        },
    },
    atlas = 'ace', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        dollars = 8, discards = 3, discards_remaining = 3
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.dollars, center.ability.extra.discards, center.ability.extra.discards_remaining}} --#1# is replaced with card.ability.extra.Xmult
    end,
    add_to_deck = function(self, card, from_debuff)
       local cgi_ref = Card.get_id
	   function Card:get_id()
			local id = cgi_ref(self)
			if next(find_joker("j_sizimod_ace")) then
				if id % 2 == 1 and not (id >= 11 and id <= 13) then
					id = 14
				end
			end
			return id
	    end
    end,
    remove_from_deck = function(self, card, from_debuff)
        local cgi_ref = Card.get_id
	    function Card:get_id()
			local id = cgi_ref(self)
			if id % 2 == 1 then
					id = id
			end
			return id
	    end
    end,
 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'pokerface', --atlas key
    path = 'pokerface.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'pokerface', --joker key
    loc_txt = { -- local text
        name = 'Poker Face',
        text = {
            "{C:blue}+10{} Chips when first playing",
            "a type of {C:attention}poker hand",
             "{C:inactive}(Currently {C:blue}+#1#{C:inactive} Chips)"
        },
    },
    atlas = 'pokerface', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        chips = 0, extra = 10
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.chips, center.ability.extra.extra}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint then
            local proc = true
            for handname, values in pairs(G.GAME.hands) do
                if handname == context.scoring_name then
                    if values.played <= 1 and SMODS.is_poker_hand_visible(handname) then
                        proc = true
                        break
                    else
                        proc = false
                        break
                    end
                end
            end
            if proc then
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.extra
                return {
                     message = "Upgrade!"
                  }   
            else
                -- nothing
            end
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips 
            }
        end
    end,

 
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'cat', --atlas key
    path = 'blackcat.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'cat', --joker key
    loc_txt = { -- local text
        name = 'Black Cat',
        text = {
           "{X:mult,C:white}X0.2{} Mult for every",
           "{C:green}probability{} that fails",
           "during a Blind",
            "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
        },
    },
    atlas = 'cat', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 1, extra = 0.2
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult, center.ability.extra.extra}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        if context.sizimod_probability_fail then 
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.extra
            return {
                message = "Upgrade!"
            }
        end
        if context.sizimod_probability_fail and context.setting_blind then 
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.extra
            return {
                message = "Upgrade!"
            }
        end
        if context.joker_main then
            return {
                Xmult = card.ability.extra.Xmult 
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

local SMODS_pseudorandom_probability_ref = SMODS.pseudorandom_probability
function SMODS.pseudorandom_probability(trigger_obj, seed, base_numerator, base_denominator)
            local ret = SMODS_pseudorandom_probability_ref(trigger_obj, seed, base_numerator, base_denominator)
            if ret then
                ret = true
            else
                SMODS.calculate_context({sizimod_probability_fail = true})
            end
            return ret
end

SMODS.Atlas {
   key = 'alien', --atlas key
    path = 'alien.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'alien', --joker key
    loc_txt = { -- local text
        name = 'Green Alien',
        text = {
           "{C:blue}+12{} chips for every",
           "{C:planet}Planet{} card sold",
            "{C:inactive}(Currently {C:blue}+#1#{C:inactive} Mult)"
        },
    },
    atlas = 'alien', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        chips = 0, extra = 12
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.chips, center.ability.extra.extra}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        if context.selling_card and context.card.ability.set == "Planet" then 
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.extra
            return {
                message = "Upgrade!"
            }
        end
        if context.joker_main then
            return {
                Xmult = card.ability.extra.Xmult 
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Sound({key = "howl", path = "howl.ogg",})
SMODS.Atlas {
   key = 'wolf', --atlas key
    path = 'wolf.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'wolf', --joker key
    loc_txt = { -- local text
        name = 'Werewolf',
        text = {
           "{C:green}#1# in 3{} chance to",
           "reduce the {C:attention}Blind size{}",
           "by 25%"
        },
    },
    atlas = 'wolf', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        odds = 3
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {(G.GAME.probabilities.normal or 1), center.ability.extra.odds}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self, card, context)
        local howl_count = 0
        if context.setting_blind and (G.GAME.blind:get_type() == 'Small' or G.GAME.blind:get_type() == 'Big' or G.GAME.blind:get_type() == 'Boss') and pseudorandom("sizimod_wolf") < G.GAME.probabilities.normal / card.ability.extra.odds and howl_count < 1 then
            howl_count = howl_count + 1
            play_sound("sizimod_howl")
            G.E_MANAGER:add_event(Event({func = function()
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips * 0.75)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
                G.HUD_blind:recalculate()
                G.hand_text_area.blind_chips:juice_up()
            return true end }))
            return {
                message = "HOWL!"
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Sound({key = "spray", path = "sprayed.ogg",})
SMODS.Atlas {
   key = 'graffiti', --atlas key
    path = 'graffiti.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'graffiti', --joker key
    loc_txt = { -- local text
        name = 'Graffiti',
        text = {
           "During your first played {C:blue}hand",
           "all {C:attention}scored cards{} turn into {V:1}#1#",
           "(suit changes every round)"
        },
    },
    atlas = 'graffiti', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        suit = pseudorandom_element(SMODS.Suits, "seed").key
      }
    },
    loc_vars = function(self,info_queue,center)
        return { vars = {center.ability.extra.suit, localize(center.ability.extra.suit, 'suits_plural'), colours = { G.C.SUITS[center.ability.extra.suit] } } }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint and G.GAME.current_round.hands_played < 1 then
            for _, scored_card in ipairs(context.scoring_hand) do
                    SMODS.change_base(scored_card, card.ability.extra.suit)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            scored_card:juice_up()
                            return true
                        end
                    }))
            end
            return {
                    message = "SPRAYED!",
                    sound = 'sizimod_spray',
                    pitch = 1,
                }

        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            card.ability.extra.suit = pseudorandom_element(SMODS.Suits, "seed").key
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'golf', --atlas key
    path = 'golf.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'golf', --joker key
    loc_txt = { -- local text
        name = 'Golfer',
        text = {
           "{C:blue}+7{} Chips for every",
           "{C:clubs}Club{} card scored",
           "{C:inactive}(Currently: {C:blue}+#1#{} Chips{C:inactive})"
        },
    },
    atlas = 'golf', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        chips = 0, extra = 7
      }
    },
    loc_vars = function(self,info_queue,center)
        return { vars = {center.ability.extra.chips, center.ability.extra.extra}}
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit("Clubs") then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.extra
            return {
                        message = "Upgrade!"
            }
        end

        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'solar', --atlas key
    path = 'solar.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'solar', --joker key
    loc_txt = { -- local text
        name = 'Solar System',
        text = {
          "{X:mult,C:white}X0.5{} Mult for every",
          "{C:planet}Planet{} card of your most played",
          "{C:attention}poker hand{} during the run",
          "{C:inactive}(Currently: {X:mult,C:white}X#1#{} Mult{C:inactive})"
        },
    },
    atlas = 'solar', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 1, extra = 0.5
      }
    },
    loc_vars = function(self,info_queue,center)
        return { vars = {center.ability.extra.Xmult, center.ability.extra.extra}}
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == 'Planet' then
            local _planet, _hand, _tally = nil, nil, 0
            for _, handname in ipairs(G.handlist) do
                        if SMODS.is_poker_hand_visible(handname) and G.GAME.hands[handname].played > _tally then
                            _hand = handname
                            _tally = G.GAME.hands[handname].played
                        end
            end
            if _hand then
                        for _, v in pairs(G.P_CENTER_POOLS.Planet) do
                            if v.config.hand_type == _hand then
                                _planet = v.key
                                print(_planet)
                            end
                        end
            end
            if context.consumeable.config.center.key == _planet then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.extra
                return {
                message = "Upgrade!"
            }
            end
        end
        if context.joker_main then
            return {
            Xmult = card.ability.extra.Xmult 
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'crown', --atlas key
    path = 'crown.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'crown', --joker key
    loc_txt = { -- local text
        name = "King's Crown",
        text = {
        "{C:money}$10{} and {X:mult,C:white}X5{} Mult",
        "when your hand contains a {C:attention}Royal Flush"
        },
    },
    atlas = 'crown', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        dollars = 10, Xmult = 5
      }
    },
    loc_vars = function(self,info_queue,center)
        return { vars = {center.ability.extra.Xmult, center.ability.extra.dollars}}
    end,
    calculate = function(self, card, context)
        if context.joker_main and G.GAME.current_round.current_hand.handname == "Royal Flush" then
            return {
            Xmult = card.ability.extra.Xmult,
            dollars = card.ability.extra.dollars
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'glaggle', --atlas key
    path = 'glaggle.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'glaggle', --joker key
    loc_txt = { -- local text
        name = "Glaggles",
        text = {
        "Creates a copy of every",
        "{C:attention}played face card{}"
        },
    },
    atlas = 'glaggle', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        dollars = 10, extra = 5
      }
    },
    loc_vars = function(self,info_queue,center)
        return { vars = {center.ability.extra.Xmult, center.ability.extra.dollars}}
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval then
            for _, scored_card in ipairs(context.scoring_hand) do
                if scored_card:is_face() then
                    G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                    local copy_card = copy_card(scored_card, nil, nil, G.playing_card)
                    copy_card:add_to_deck()
                    G.deck.config.card_limit = G.deck.config.card_limit + 1
                    table.insert(G.playing_cards, copy_card)
                    G.hand:emplace(copy_card)
                    copy_card.states.visible = nil
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            copy_card:start_materialize()
                            return true
                        end
                    }))
                end
            end
            return {
                        message = ":)",
                        colour = G.C.CHIPS,
                        func = function() -- This is for timing purposes, it runs after the message
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    SMODS.calculate_context({ playing_card_added = true, cards = { copy_card } })
                                    return true
                                end
                            }))
                        end
            }
            
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

SMODS.Atlas {
   key = 'moyai', --atlas key
    path = 'moyai.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'moyai', --joker key
    loc_txt = { -- local text
        name = "Moyai",
        text = {
        "All {C:attention}Stone cards{}",
        "count as their {C:attention}original rank{}"
        },
    },
    atlas = 'moyai', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        dollars = 10, extra = 5
      }
    },
    loc_vars = function(self,info_queue,center)
        return { vars = {center.ability.extra.Xmult, center.ability.extra.dollars}}
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval then
            for i = 1, #context.scoring_hand do
                    if SMODS.has_no_rank(context.full_hand[i]) then 
                        context.full_hand[i]:get_id()
                    end
            end
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}

local oldsmodshasnorank = SMODS.has_no_rank
function SMODS.has_no_rank(card)
        if next(SMODS.find_card("j_sizimod_moyai")) and SMODS.has_enhancement(card, "m_stone") then return false end
        return oldsmodshasnorank(card)
    end

SMODS.Atlas {
   key = 'neo', --atlas key
    path = 'neo.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Joker{
    key = 'neo', --joker key
    loc_txt = { -- local text
        name = "Neo_",
        text = {
        "When playing a {C:attention}#2#{} of {C:hearts}Hearts{},",
        "This Joker gives {X:mult,C:white}X3{} Mult",
        "for the rest of the round",
        "(Rank changes every round)",
        "{C:inactive}(Commissioned by @UnderscoreNeo){C:inactive}"
        },
    },
    atlas = 'neo', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { extra = {Xmult = 3, heart_check = false}},
    loc_vars = function(self,info_queue, center)
		return { vars = { center.ability.extra.Xmult, localize((G.GAME.current_round.sizimod_neo_card or {}).rank or 'Ace', 'ranks'), center.ability.extra.heart_check}}
	end,
    calculate = function(self, card, context)
        local heart_check = false
        if context.individual and context.cardarea == G.play and context.other_card:get_id() == G.GAME.current_round.sizimod_neo_card.id and context.other_card:is_suit('Hearts') then
                card.ability.extra.heart_check = true
        end
        if context.joker_main and card.ability.extra.heart_check == true then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
             card.ability.extra.heart_check = false
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
}
----------------------Legendaries-------------------------------------
----------------------------------------------------------------------

local vegito_music = SMODS.Sound {
    key = "vegitomusic",
    path = "music_vegito.ogg",
    sync = false,
    pitch = 1,
               
    select_music_track = function(self)
        if sizi.config.vegito == 1 and #SMODS.find_card("j_sizimod_vegito") > 0 then
            -- enabled while Vegito is present
            return 100
        else
            -- always disabled
        end
    end
}
SMODS.Atlas{
    key = 'vegito',
    path = 'vegito.png',
    px = 71,
    py = 96,
}

SMODS.Joker{
    key = 'vegito',
    loc_txt= {
        name = 'Vegito',
        text = { "Retriggers the Joker",
                    "to the right twice and",
                "adds 1 retrigger at the end of round",
                "{C:attention}(Up to a max of 15)",
            "{C:inactive}(Currently {C:attention}#1#{C:inactive} Retriggers)"}
    },
    atlas = 'vegito',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x=0, y= 0},
    soul_pos = {x=0, y= 1},
    config = { extra = {retriggers = 2} },
	loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.retriggers}  }
	end,
    calculate = function(self, card, context)
        local my_pos = nil
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i] == card then
				my_pos = i
				break
			end
		end
        if context.retrigger_joker_check and not context.retrigger_joker and context.other_card ~= self then
			if context.other_card == G.jokers.cards[my_pos + 1] then
				return {
					 message = "YOSHA!",
					repetitions = card.ability.extra.retriggers,
					card = card,
				}
			else
				return nil, true
			end
		end

        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint and card.ability.extra.retriggers < 15 then
           card.ability.extra.retriggers = card.ability.extra.retriggers + 1
           return {
                message = "THIS IS SUPER VEGITO!",
            }
        end
    end,
}

local gogeta_music = SMODS.Sound{
    key = "gogetamusic",
    path = "music_gogeta.ogg",
    sync = false,
    pitch = 1,
    select_music_track = function(self)
        if sizi.config.gogeta == 1 and #SMODS.find_card("j_sizimod_gogeta") > 0 then
            -- When Gogeta is present
            return 100
        else
            -- always disabled
        end
    end
}

SMODS.Atlas{
    key = 'gogeta',
    path = 'gogeta.png',
    px = 71,
    py = 96,
}

SMODS.Joker{
    key = 'gogeta',
    loc_txt= {
        name = 'Gogeta',
        text = { "Halves the {C:attention}Blind size{}",
        "when a Blind is selected"
            }
    },
    atlas = 'gogeta',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x=0, y= 0},
    soul_pos = {x=0, y= 1},
    config = { extra = {Xmult = 2, x_chips = 2, resize_count = 0 } },
	loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.Xmult, center.ability.extra.x_chips, center.ability.extra.resize_count} }
	end,
    calculate = function(self, card, context)
        if context.setting_blind and (G.GAME.blind:get_type() == 'Small' or G.GAME.blind:get_type() == 'Big' or G.GAME.blind:get_type() == 'Boss') and card.ability.extra.resize_count < 1 then
			card.ability.extra.resize_count = card.ability.extra.resize_count + 1
            G.E_MANAGER:add_event(Event({func = function()
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips/2)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
                G.HUD_blind:recalculate()
                G.hand_text_area.blind_chips:juice_up()
            return true end }))
            return {
                message = "I'M THE ONE WHO'S GONNA STOP YOU!"
            }
		end
        -- if context.cardarea == G.play and context.individual then
        --     return {
        --        Xmult = card.ability.extra.Xmult,
        --        x_chips = card.ability.extra.x_chips
        --     }
        -- end
    end,
}

local broly_music = SMODS.Sound{
    key = "brolymusic",
    path = "music_broly.ogg",
    sync = false,
    pitch = 1,
    select_music_track = function(self)
        if sizi.config.broly == 1 and #SMODS.find_card("j_sizimod_broly") > 0 then
            -- When Gogeta is present
            return 100
        else
            -- always disabled
        end
    end
}

SMODS.Atlas{
    key = 'broly',
    path = 'broly.png',
    px = 71,
    py = 96,
}

SMODS.Joker{
    key = 'broly',
    loc_txt= {
        name = 'Broly (Z)',
        text = { "On first played {C:blue}hand{},",
        "{C:green}#2# in 2{} chance to destroy the {C:attention}first card{}",
        "upgrade played poker hand",
        "by {C:attention}7 Levels{}"
            }
    },
    atlas = 'broly',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x=0, y= 0},
    soul_pos = {x=0, y= 1},
    config = { extra = {extra = 7, odds = 2}},
	loc_vars = function(self, info_queue, center)
        return { vars = {center.ability.extra.extra, (G.GAME.probabilities.normal or 1), center.ability.extra.odds} }
	end,
    calculate = function(self, card, context)
            if context.destroy_card and not context.blueprint then
                if pseudorandom("sizimod_broly") < G.GAME.probabilities.normal / card.ability.extra.odds then
                    if context.destroy_card == context.full_hand[1] then
                            return {
                                remove = true,
                            }
                    end
                end
            end
        if context.before and G.GAME.current_round.hands_played == 0 then
            return{
                message = "KAKAROT!!",
                level_up = card.ability.extra.extra
            }
        end
	end,
}

local gotenks_music = SMODS.Sound{
    key = "gotenksmusic",
    path = "music_gotenks.ogg",
    sync = false,
    pitch = 1,
    select_music_track = function(self)
        if sizi.config.gotenks == 1 and #SMODS.find_card("j_sizimod_gotenks") > 0 then
            -- When Gotenks is present
            return 100
        else
            -- always disabled
        end
    end
}
SMODS.Atlas{
    key = 'gotenks',
    path = 'gotenks.png',
    px = 71,
    py = 96,
}

SMODS.Joker{
    key = 'gotenks',
    loc_txt= {
        name = 'Gotenks',
        text = { "Creates a random {C:negative}Negative",
        "{C:tarot}Tarot{}, {C:planet}Planet{}, and {C:spectral}Spectral{} card",
        "at the end of the {C:attention}shop{}"
            }
    },
    atlas = 'gotenks',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x=0, y= 0},
    soul_pos = {x=0, y= 1},
    calculate = function(self, card, context)
            if context.ending_shop then
                return {
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = (function()
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    SMODS.add_card {
                                        set = 'Spectral',
                                        edition = "e_negative"
                                    }
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end
                            }))
                            SMODS.calculate_effect({ message = "Super Ghost", colour = G.C.BLUE },
                                context.blueprint_card or card)
                            return true
                        end)
                    }))
                    G.E_MANAGER:add_event(Event({
                        func = (function()
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    SMODS.add_card {
                                        set = 'Tarot',
                                        edition = "e_negative"
                                    }
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end
                            }))
                            SMODS.calculate_effect({ message = "Kamikaze", colour = G.C.BLUE },
                                context.blueprint_card or card)
                            return true
                        end)
                    }))
                    G.E_MANAGER:add_event(Event({
                        func = (function()
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    SMODS.add_card {
                                        set = 'Planet',
                                        edition = "e_negative"
                                    }
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end
                            }))
                            SMODS.calculate_effect({ message = "Attack!", colour = G.C.BLUE },
                                context.blueprint_card or card)
                            return true
                        end)
                    }))
                end
            }
        end
	end,
}

local revolving = SMODS.Sound{
    key = "revolvingmusic",
    path = "music_revolving.ogg",
    sync = false,
    pitch = 1,
    select_music_track = function(self)
        if sizi.config.revolving == 1 and #SMODS.find_card("j_sizimod_jevil") > 0 then
            -- When Gogeta is present
            return 100
        else
            -- always disabled
        end
    end
}
SMODS.Sound({
    key = "jevil1",
    path = "jevil_1.ogg",
})
SMODS.Sound({
    key = "jevil2",
    path = "jevil_2.ogg",
})
SMODS.Sound({
    key = "jevil3",
    path = "jevil_3.ogg",
})
SMODS.Sound({
    key = "jevil4",
    path = "jevil_4.ogg",
})
SMODS.Atlas{
    key = 'jevil',
    path = 'jevil.png',
    px = 71,
    py = 96,
}
SMODS.Joker{
    key = 'jevil',
    loc_txt= {
        name = 'Jevil',
        text = { 
            "Retriggers all {C:attention}Jokers once",
            "and creates a random Negative {C:attention}Joker{}",
            "when {C:attention}Blind{} is selected"
            }
    },
    atlas = 'jevil',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x=0, y= 0},
    soul_pos = {x=0, y= 1},
    config = { extra = {retriggers = 1} },
	loc_vars = function(self, info_queue, center)
        return { vars = {center.ability.extra.retriggers} }
	end,
    calculate = function(self, card, context)
        if
			context.setting_blind
			and not context.individual
			and not context.repetition then
			G.GAME.joker_buffer = G.GAME.joker_buffer + 1
			G.E_MANAGER:add_event(Event({
				func = function()
						local card = create_card("Joker", G.jokers, nil, nil, nil, nil, nil, "jevil")
                        card:set_edition({ negative = true }, true)
						card:add_to_deck()
						G.jokers:emplace(card)
						card:start_materialize()
						G.GAME.joker_buffer = 0
					return true
				end,
			}))
			card_eval_status_text(
				context.blueprint_card or card,
				"extra",
				nil,
				nil,
				nil,
				{ message = localize("k_plus_joker"), colour = G.C.BLUE }
			)
            if math.random(4) == 1 then
                play_sound("sizimod_jevil1")
            elseif math.random(4) == 2 then
                play_sound("sizimod_jevil2")  
            elseif math.random(4) == 2 then
                play_sound("sizimod_jevil3")     
            else
                play_sound("sizimod_jevil4")    
            end
			return nil, true
		end
        if context.retrigger_joker_check
		and context.other_card.config.center.key ~= self.key then
			if not (context.other_ret and context.other_ret.jokers and context.other_ret.jokers.was_blueprinted) then
				return {
					message = "CHAOS!",
                    repetitions = card.ability.extra.retriggers,
					was_blueprinted = context.blueprint,
                    card = card,
					
				}
			end
		end
    end,
}

SMODS.Atlas{
    key = 'stan',
    path = 'stanczyk.png',
    px = 71,
    py = 96,
}
SMODS.Joker{
    key = 'stan',
    loc_txt= {
        name = 'Stanczyk',
        text = { 
            "Retriggers all {C:attention}scored{} cards",
            "and cards {C:attention}held in hand{}",
            "{C:attention}twice{}"
            }
    },
    atlas = 'stan',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x=0, y= 0},
    soul_pos = {x=0, y= 1},
    config = { extra = {retriggers = 2} },
	loc_vars = function(self, info_queue, center)
        return { vars = {center.ability.extra.retriggers} }
	end,
    calculate = function(self, card, context)
        if context.repetition then
            if context.cardarea == G.play then
                return {
                    message = "Again!",
                    repetitions = card.ability.extra.retriggers,
                    card = card,
                }
            end
        end
        if context.repetition and context.cardarea == G.hand and not context.end_of_round then
            if context.other_card.debuff then
                return {
                    message = localize('k_debuffed'),
                    colour = G.C.RED
                }
            else
                return {
                    message = "Again!",
                    repetitions = card.ability.extra.retriggers,
                    card = card,
                }
            end
        end
    end,
}

SMODS.Atlas{
    key = 'will',
    path = 'sommers.png',
    px = 71,
    py = 96,
}
SMODS.Joker{
    key = 'will',
    loc_txt= {
        name = 'Will Sommers',
        text = { 
            "All Face cards are considered {C:attention}Kings{}",
            "and all {C:attention}Kings{} give",
            "{C:money}$3{} and {X:chips,C:white}X2{} Chips"
            }
    },
    atlas = 'will',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x=0, y= 0},
    soul_pos = {x=0, y= 1},
    config = { extra = {dollars = 3, x_chips = 2} },
	loc_vars = function(self, info_queue, center)
        return { vars = {center.ability.extra.dollars, center.ability.extra.x_chips} }
	end,
    add_to_deck = function(self, card, from_debuff)
       local cgi_ref = Card.get_id
	   function Card:get_id()
			local id = cgi_ref(self)
			if next(find_joker("j_sizimod_will")) then
				if id >= 11 and id <= 13 then
					id = 13
				end
			end
			return id
	    end
    end,
    remove_from_deck = function(self, card, from_debuff)
        local cgi_ref = Card.get_id
	    function Card:get_id()
			local id = cgi_ref(self)
			if next(find_joker("j_sizimod_will")) then
				if id == 11 then
					id = 11
                elseif id == 12 then
                    id = 12
                elseif id == 13 then
                    id = 13
				end
			end
			return id
	    end
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
            context.other_card:get_id() == 13 then
            return {
                x_chips = card.ability.extra.x_chips,
                dollars = card.ability.extra.dollars
            }
        end
    end,
}
----------------Decks-------------------------



SMODS.Atlas{
    key = 'ascended',
    path = 'ascended.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "ascended",
    loc_txt = {
        name = "Ascended Deck",
        text={
        "Start with a copy of {C:spectral}The Soul{}",
        },
    },
	
	config = { hands = 0, discards = 0},
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "ascended",
    unlocked = true,

	apply = function(self)
        G.E_MANAGER:add_event(Event({
			func = function()
				if G.consumeables then
                        local card = create_card("Spectral", G.consumeables, nil, nil, nil, nil, "c_soul", "")
                        card:add_to_deck()
                        --card:start_materialize()
                        G.consumeables:emplace(card)
                        return true
                end

			end,
		}))
	end,

	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})

SMODS.Atlas{
    key = 'shopper',
    path = 'shopper.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "shopper",
    loc_txt = {
        name = "Smart Shopper Deck",
        text={
        "Start run with",
        "{C:money}Clearance Sale{}",
        "and {C:green}Reroll Surplus{}"
        },
    },
	
	config = { hands = 0, discards = 0, vouchers = {"v_clearance_sale", "v_reroll_surplus"} },
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "shopper",
    unlocked = true,
	
    loc_vars = function(self, info_queue, back)
        return {
            vars = { localize { type = 'name_text', key = self.config.vouchers[1], set = 'Voucher' },
                localize { type = 'name_text', key = self.config.vouchers[2], set = 'Voucher' }
            }
        }
    end,

	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})


SMODS.Atlas{
    key = 'unified',
    path = 'unified.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "unified",
    loc_txt = {
        name = "Unified Deck",
        text={
        "Start run with an Eternal {C:attention}Unity{}"
        },
    },
	
	config = { hands = 0, discards = 0},
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "unified",
    unlocked = true,

	apply = function(self)
        G.E_MANAGER:add_event(Event({
			func = function()
				if G.consumeables then
                    local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_sizimod_unity")
                    card:add_to_deck()
                    card:set_eternal(true)
                    G.jokers:emplace(card)
                    
                    return true
                end
			end,
		}))
	end,

	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})

-- SMODS.Atlas{
--     key = 'dice',
--     path = 'dice.png',
--     px = 71,
--     py = 95,
-- }

-- SMODS.Back({
--     key = "dice",
--     loc_txt = {
--         name = "Dicey Deck",
--         text={
--         "Start run with 2 {C:attention}Oops All 6s{}",
--         "and 1 copy of",
--         "{C:tarot}Wheel of Fortune{}"
--         },
--     },
	
-- 	config = { hands = 0, discards = 0},
-- 	pos = { x = 0, y = 0 },
-- 	order = 1,
-- 	atlas = "dice",
--     unlocked = true,

--     apply = function(self)
--         G.E_MANAGER:add_event(Event({
-- 			func = function()
-- 				if G.consumeables then
--                     local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_oops")
--                     card:add_to_deck()
--                     -- card:set_eternal(true)
--                     G.jokers:emplace(card)
--                     local card2 = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_oops")
--                     card2:add_to_deck()
--                     -- card2:set_eternal(true)
--                     G.jokers:emplace(card2)
--                     local card3 = create_card("Tarot", G.consumables, nil, nil, nil, nil, "c_wheel_of_fortune")
--                     card3:add_to_deck()
--                     G.consumeables:emplace(card3)
                    
--                     return true
--                 end
-- 			end,
-- 		}))
-- 	end,

-- 	check_for_unlock = function(self, args)
-- 		if args.type == "win_deck" then
--             unlock_card(self)
--         else
-- 			unlock_card(self)
-- 		end
-- 	end,
-- })

SMODS.Atlas{
    key = 'mint',
    path = 'mint.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "mint",
    loc_txt = {
        name = "Minted Deck",
        text={
        "All cards have a",
        "random {C:attention}edition{}",
        "{C:blue}-1{} hand every round"
        },
    },
	
	config = { hands = -1, discards = 0},
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "mint",
    unlocked = true,
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if math.random(1,3) == 1 then
                        v:set_edition("e_polychrome", true)
                    elseif math.random(1,3) == 2 then
                        v:set_edition("e_foil", true)
                    else 
                        v:set_edition("e_holo", true)
                    end
                end
                return true
            end
        }))
    end,

	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})


SMODS.Atlas{
    key = 'fast',
    path = 'forward.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "fast",
    loc_txt = {
        name = "Fast Forward Deck",
        text={
        "Start with 5 random Jokers",
        "Start on {C:attention}Ante 3"
        },
    },
	
	config = { blind_ante = 3 },
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "fast",
    unlocked = true,
    apply = function(self, back)
        ease_ante(2)
        -- G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
        -- G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante + card.ability.extra.
        G.E_MANAGER:add_event(Event({
            func = function()
                if G.consumeables then
                    local card = create_card("Joker", G.jokers, nil, nil, nil, nil, nil, "fast")
                                card:add_to_deck()
                                G.jokers:emplace(card)
                                card:start_materialize()
                    local card = create_card("Joker", G.jokers, nil, nil, nil, nil, nil, "fast")
                                card:add_to_deck()
                                G.jokers:emplace(card)
                                card:start_materialize()
                    local card = create_card("Joker", G.jokers, nil, nil, nil, nil, nil, "fast")
                                card:add_to_deck()
                                G.jokers:emplace(card)
                                card:start_materialize()
                    local card = create_card("Joker", G.jokers, nil, nil, nil, nil, nil, "fast")
                                card:add_to_deck()
                                G.jokers:emplace(card)
                                card:start_materialize()
                    local card = create_card("Joker", G.jokers, nil, nil, nil, nil, nil, "fast")
                                card:add_to_deck()
                                G.jokers:emplace(card)
                                card:start_materialize()
                            
                    return true
                end
            end,
        }))
    end,

	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})

SMODS.Atlas{
    key = 'eccentric',
    path = 'eccentric.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "eccentric",
    loc_txt = {
        name = "Eccentric Deck",
        text={
        "{C:green}Uncommon{} Jokers",
        "and {C:red}Rare{} Jokers",
        "appear more frequently"
        },
    },
	
	config = { blind_ante = 3 },
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "eccentric",
    unlocked = true,
    apply = function(self, back)
        G.GAME.uncommon_mod = G.GAME.uncommon_mod * 15
        G.GAME.rare_mod = G.GAME.rare_mod * 15
    end,

	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})

SMODS.Atlas{
    key = 'hands',
    path = 'hands.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "hands",
    loc_txt = {
        name = "Handful Deck",
        text={
       "{C:blue}+4{} hands",
       "Lose all {C:red}discards{}",
       "{C:red}-2{} hand size"
        },
    },
	
	config = {hands = 4, discards = -3, hand_size = -2},
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "hands",
    unlocked = true,
	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})

SMODS.Atlas{
    key = 'stone',
    path = 'stoneage.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "stone",
    loc_txt = {
        name = "Stone Age Deck",
        text={
       "All cards are {C:attention}Stone{} cards"
        },
    },
	config = {},
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "stone",
    unlocked = true,
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    v:set_ability("m_stone", nil, true)
                end
                return true
            end
        }))

    end,
	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})


SMODS.Atlas{
    key = 'bunny',
    path = 'bunny.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "bunny",
    loc_txt = {
        name = "Bunny Hop Deck",
        text={
       "{C:attention}+3 hand size{} with",
       "every Blind skipped, {C:attention}-1 hand size{}",
       "with every Blind selected"
        },
    },
	config = {},
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "bunny",
    unlocked = true,
    calculate = function(self, back, context)
        if context.skip_blind then 
             G.hand:change_size(3)
        end
        if context.setting_blind then
             G.hand:change_size(-1)
        end
    end,
	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})

SMODS.Atlas{
    key = 'anemic',
    path = 'anemic.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "anemic",
    loc_txt = {
        name = "Anemic Deck",
        text={
       "Start run with all {C:hearts}Heart{} cards,",
       "{C:green}1 in 2{} chance to",
       "destroy a random",
       "{C:hearts}Heart{} card played",
        },
    },
	config = {},
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "anemic",
    unlocked = true,
    apply = function(self, back)
         G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                        v:change_suit('Hearts')
                end
                return true
            end
        }))
    end,

    calculate = function(self, back, context)
       if context.before then
            local heart_count = {}
            for _, v in pairs(context.scoring_hand) do
                if v:is_suit("Hearts") then
                    table.insert(heart_count, v)
                end
            end
            if #heart_count > 0 then
                pseudorandom_element(heart_count, pseudoseed('exampleseed')).ability.heartbreak = true
            end
        end
        if context.destroying_card and context.destroying_card.ability.heartbreak and math.random(1,2) == 2 then
            return {
                remove = true,
            }
        end
    end,
	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})

SMODS.Atlas{
    key = 'mono',
    path = 'mono.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "mono",
    loc_txt = {
        name = "Monochromatic Deck",
        text={
      "The suit of every card",
      "in the deck {C:attention}changes{}",
      "when beating a {C:attention}Boss Blind{}"
        },
    },
	config = {},
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "mono",
    unlocked = true,
    apply = function(self, back)
    if math.random(1,4) == 1 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    for k, v in pairs(G.playing_cards) do
                            v:change_suit("Spades")
                    end
                    return true
                end
            }))
    elseif math.random(1,4) == 2 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    for k, v in pairs(G.playing_cards) do
                            v:change_suit("Hearts")
                    end
                    return true
                end
            }))
    elseif math.random(1,4) == 3 then
            G.E_MANAGER:add_event(Event({
                func = function()
                    for k, v in pairs(G.playing_cards) do
                            v:change_suit("Diamonds")
                    end
                    return true
                end
            }))
    else 
        G.E_MANAGER:add_event(Event({
                func = function()
                    for k, v in pairs(G.playing_cards) do
                            v:change_suit("Clubs")
                    end
                    return true
                end
        }))
    end

    end,

    calculate = function(self, back, context)
    if context.end_of_round and context.game_over == false and not context.individual and not context.repetition and G.GAME.blind:get_type() == 'Boss' then
        if math.random(1,4) == 1 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        for k, v in pairs(G.playing_cards) do
                                SMODS.change_base(v, "Spades")
                        end
                        return true
                    end
                }))
        elseif math.random(1,4) == 2 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        for k, v in pairs(G.playing_cards) do
                                 SMODS.change_base(v, "Hearts")
                        end
                        return true
                    end
                }))
        elseif math.random(1,4) == 3 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        for k, v in pairs(G.playing_cards) do
                                 SMODS.change_base(v, "Diamonds")
                        end
                        return true
                    end
                }))
        else 
            G.E_MANAGER:add_event(Event({
                    func = function()
                        for k, v in pairs(G.playing_cards) do
                                 SMODS.change_base(v, "Clubs")
                        end
                        return true
                    end
            }))
        end
    end
    end,
	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})


SMODS.Atlas{
    key = 'chaos',
    path = 'chaos.png',
    px = 71,
    py = 95,
}

SMODS.Back({
    key = "chaos",
    loc_txt = {
        name = "Chaotic Deck",
        text={
       "When selecting a Blind,",
       "{C:attention}a random event occurs{}"
        },
    },
	config = {},
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "chaos",
    unlocked = true,

    calculate = function(self, back, context)
       if context.setting_blind then
           if math.random(1,8) == 1 then 
             G.E_MANAGER:add_event(Event({
                func = function()
                    ease_hands_played(1)
                    return true
                end
            }))
            elseif math.random(1,8) == 2 then 
             G.E_MANAGER:add_event(Event({
                func = function()
                    ease_discard(1)
                end
            }))
            elseif math.random(1,8) == 3 then 
             G.E_MANAGER:add_event(Event({
                func = function()
                    ease_discard(-1)
            
                    return true
                end
            }))
            elseif math.random(1,8) == 4 then 
             G.E_MANAGER:add_event(Event({
                func = function()
                    ease_hands_played(-1)
                    return true
                end
            }))
            elseif math.random(1,8) == 5 then 
             G.E_MANAGER:add_event(Event({
                func = function()
                    G.hand:change_size(math.random(-3,5))
                    return true
                end
            }))
            elseif math.random(1,8) == 5 then 
                if math.random(1,2) == 1 then
                    return {
                        dollars = math.random(5,10)
                    }
                else
                    return {
                        dollars = math.random(-10,-5)
                    }
                end
            elseif math.random(1,8) == 6 then
                G.E_MANAGER:add_event(Event({
				func = function()
						local card = create_card("Joker", G.jokers, nil, nil, nil, nil, nil, "chaos")
						card:add_to_deck()
						G.jokers:emplace(card)
						card:start_materialize()
						G.GAME.joker_buffer = 0
					return true
				end,
			    }))
            elseif math.random(1,8) == 7 then
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    local card = create_card("Consumeables", G.consumeables, nil, nil, nil, nil, nil, "chaos")
                    card:add_to_deck()
                    G.consumeables:emplace(card)
			    end
            else 
                if math.random(1,2) == 1 then
                    ease_ante(1)
                else
                    ease_ante(-1)
                end
            end
        end
    end,
	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})

SMODS.Atlas{
    key = 'universe',
    path = 'universe.png',
    px = 71,
    py = 95,
}
SMODS.Back({
    key = "universe",
    loc_txt = {
        name = "Universal Deck",
        text={
        "Start run with",
        "{C:attention}Telescope and Observatory{}",
        "and a random {C:attention}Eternal{}",
        "Space-themed Joker"
        },
    },
	
	config = {vouchers = {"v_telescope", "v_observatory"} },
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "universe",
    unlocked = true,
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                local space_jonkers = {"j_sizimod_blackhole", "j_sizimod_belt", "j_sizimod_alien","j_sizimod_eclipse","j_sizimod_solar","j_sizimod_star","j_rocket","j_constellation","j_astronomer","j_satellite","j_space"}
                local space = pseudorandom_element(space_jonkers, pseudoseed('exampleseed'))
                print(space)
                if G.consumeables then
                    SMODS.add_card {
                            key = space,
                            stickers = { "eternal" }
                    }
                    return true
                end
            end,
        }))
    end,

	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
            unlock_card(self)
        else
			unlock_card(self)
		end
	end,
})

----------------------- Vouchers --------------------------
SMODS.Atlas{
    key = 'warp',
    path = 'v_warp.png',
    px = 71,
    py = 95,
}
SMODS.Voucher {
    key = 'warp',
    loc_txt = {
        name = "Time Warp",
        text={
        "{C:attention}+1 Ante{}",
        "{C:attention}+2{} hand size"
        },
    },
    atlas = 'warp', 
    pos = { x = 0, y = 0 } ,
    config = { extra = { forward = 1, h_size = 2 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.forward, card.ability.extra.h_size} }
    end,
    redeem = function(self, card)
        ease_ante(card.ability.extra.forward)
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante + card.ability.extra.forward

        G.hand:change_size(card.ability.extra.h_size)
    end
}

SMODS.Atlas{
    key = 'vortex',
    path = 'v_vortex.png',
    px = 71,
    py = 95,
}
SMODS.Voucher {
    key = 'vortex',
    loc_txt = {
        name = "Time Vortex",
        text={
        "{C:attention}+1 Ante{}",
        "{C:blue}+2{} Hands"
        },
    },
    unlocked = true,
    atlas = 'vortex', 
    pos = { x = 0, y = 0 } ,
    config = { extra = { forward = 1, extra_hands = 2 } },
    requires = { 'v_sizimod_warp' },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.forward, card.ability.extra.extra_hands} }
    end,
    redeem = function(self, card)
        ease_ante(card.ability.extra.forward)
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante + card.ability.extra.forward

        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.extra_hands
        ease_hands_played(card.ability.extra.extra_hands)
    end
}

SMODS.Atlas{
    key = 'prize',
    path = 'v_trophy.png',
    px = 71,
    py = 95,
}
SMODS.Voucher {
    key = 'prize',
    loc_txt = {
        name = "Prized Possession",
        text={
        "{C:money}$1{} back for",
        "every card {C:attention}purchased{}",
        "in the shop"
        },
    },
    unlocked = true,
    atlas = 'prize', 
    pos = { x = 0, y = 0 } ,
    config = { extra = {dollars = 1} },
    requires = { 'v_sizimod_prize' },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dollars} }
    end,
    calculate = function(self, card, context)
        if context.buying_card then 
            return {
                dollars = to_number(card.ability.extra.dollars)
            }
        end
    end
}

SMODS.Atlas{
    key = 'clock',
    path = 'v_clock.png',
    px = 71,
    py = 95,
}
SMODS.Voucher {
    key = 'clock',
    loc_txt = {
        name = "Heirloom",
        text={
        "{C:money}$1{} back for",
        "every {C:attention}consumable{} used",
        },
    },
    unlocked = true,
    atlas = 'clock', 
    pos = { x = 0, y = 0 } ,
    config = { extra = {dollars = 1} },
    requires = { 'v_sizimod_clock' },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dollars} }
    end,
    calculate = function(self, card, context)
        if context.using_consumeable then 
            return {
                dollars = to_number(card.ability.extra.dollars)
            }
        end
    end
}

SMODS.Atlas{
    key = 'bottle',
    path = 'v_bottle.png',
    px = 71,
    py = 95,
}
SMODS.Voucher {
    key = 'bottle',
    loc_txt = {
        name = "Reusable Bottle",
        text={
        "{C:blue}+1{} Hand,",
        "{C:red}-1{} Discard"
        },
    },
    unlocked = true,
    atlas = 'bottle', 
    pos = { x = 0, y = 0 } ,
    config = { extra = {hands = 1, deduction = 1} },
    -- requires = { 'v_sizimod_clock' },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.extra} }
    end,
    redeem = function(self, card)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
        ease_hands_played(card.ability.extra.hands)

        G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.deduction
        ease_discard(-card.ability.extra.deduction, nil, true)
    end
}

SMODS.Atlas{
    key = 'bag',
    path = 'v_bag.png',
    px = 71,
    py = 95,
}
SMODS.Voucher {
    key = 'bag',
    loc_txt = {
        name = "Reusable bag",
        text={
        "{C:blue}+1{} Hand,",
        "{C:attention}-1{} hand size"
        },
    },
    unlocked = true,
    atlas = 'bag', 
    pos = { x = 0, y = 0 } ,
    config = { extra = {hands = 1, size = 1} },
    requires = { 'v_sizimod_bottle' },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands, card.ability.extra.size} }
    end,
    redeem = function(self, card)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
		ease_hands_played(card.ability.extra.hands)

        G.hand:change_size(-card.ability.extra.size)
    end
}


SMODS.Atlas{
    key = 'sleeve',
    path = 'v_sleeve.png',
    px = 71,
    py = 95,
}
SMODS.Voucher {
    key = 'sleeve',
    loc_txt = {
        name = "Card Sleeve",
        text={
        "Increases the rate of",
        "{C:green}Uncommon{} Jokers",
        "appearing in the {C:attention}shop"
        },
    },
    atlas = 'sleeve', 
    pos = { x = 0, y = 0 } ,
    redeem = function(self, card)
        G.GAME.uncommon_mod = G.GAME.uncommon_mod * 7
    end
}

SMODS.Atlas{
    key = 'binder',
    path = 'v_binder.png',
    px = 71,
    py = 95,
}
SMODS.Voucher {
    key = 'binder',
    loc_txt = {
        name = "Card Binder",
        text={
        "Increases the rate of",
        "{C:red}Rare{} Jokers",
        "appearing in the {C:attention}shop"
        },
    },
    unlocked = true,
    atlas = 'binder', 
    pos = { x = 0, y = 0 } ,
    requires = { 'v_sizimod_sleeve' },
    redeem = function(self, card)
       G.GAME.rare_mod = G.GAME.rare_mod * 7
    end
}

SMODS.Atlas{
    key = 'scrape',
    path = 'v_scrape.png',
    px = 71,
    py = 95,
}
SMODS.Voucher {
    key = 'scrape',
    loc_txt = {
        name = "Sticker Scraper",
        text={
        "Decreases the chances",
        "of {C:attention}Stickers{} appearing",
        "on {C:attention{}Jokers{}"
        },
    },
    unlocked = true,
    atlas = 'scrape', 
    pos = { x = 0, y = 0 } ,
    config = { },
    redeem = function(self, card)
        G.GAME.sizimod_eternal_rate = 0.3
        G.GAME.sizimod_perish_rate = 0.3
        G.GAME.sizimod_perish_low = 0.1
        G.GAME.sizimod_rental_rate = 0.1
    end
}


----------------------------------------------
------------MOD CODE END----------------------