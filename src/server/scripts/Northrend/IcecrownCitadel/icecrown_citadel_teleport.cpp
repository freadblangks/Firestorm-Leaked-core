////////////////////////////////////////////////////////////////////////////////
//
//  MILLENIUM-STUDIO
//  Copyright 2016 Millenium-studio SARL
//  All Rights Reserved.
//
////////////////////////////////////////////////////////////////////////////////

#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "icecrown_citadel.h"
#include "Spell.h"

#define GOSSIP_SENDER_ICC_PORT 631

class icecrown_citadel_teleport : public GameObjectScript
{
    public:
        icecrown_citadel_teleport() : GameObjectScript("icecrown_citadel_teleport") { }

        bool OnGossipHello(Player* player, GameObject* go)
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport to Light's Hammer.", GOSSIP_SENDER_ICC_PORT, LIGHT_S_HAMMER_TELEPORT);
            if (InstanceScript* instance = go->GetInstanceScript())
            {
                if (instance->GetBossState(DATA_LORD_MARROWGAR) == DONE)
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport to the Oratory of the Damned.", GOSSIP_SENDER_ICC_PORT, ORATORY_OF_THE_DAMNED_TELEPORT);
                if (instance->GetBossState(DATA_LADY_DEATHWHISPER) == DONE)
                {
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport to the Rampart of Skulls.", GOSSIP_SENDER_ICC_PORT, RAMPART_OF_SKULLS_TELEPORT);
                //if (instance->GetBossState(DATA_GUNSHIP_EVENT) == DONE)
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport to the Deathbringer's Rise.", GOSSIP_SENDER_ICC_PORT, DEATHBRINGER_S_RISE_TELEPORT);
                }
                if (instance->GetData(DATA_COLDFLAME_JETS) == DONE)
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport to the Upper Spire.", GOSSIP_SENDER_ICC_PORT, UPPER_SPIRE_TELEPORT);
                if (instance->GetData(DATA_SINDRAGOSA_GAUNTLET) == DONE)
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport to Sindragosa's Lair", GOSSIP_SENDER_ICC_PORT, SINDRAGOSA_S_LAIR_TELEPORT);
            }

            player->SEND_GOSSIP_MENU(player->GetGossipTextId(go), go->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, GameObject* /*go*/, uint32 sender, uint32 action)
        {
            player->PlayerTalkClass->ClearMenus();
            player->CLOSE_GOSSIP_MENU();
            SpellInfo const* spell = sSpellMgr->GetSpellInfo(action);
            if (!spell)
                return false;

            if (player->isInCombat())
            {
                Spell::SendCastResult(player, spell, 0, SPELL_FAILED_AFFECTING_COMBAT);
                return true;
            }

            if (sender == GOSSIP_SENDER_ICC_PORT)
                player->CastSpell(player, spell, true);

            return true;
        }
};

class at_frozen_throne_teleport : public AreaTriggerScript
{
    public:
        at_frozen_throne_teleport() : AreaTriggerScript("at_frozen_throne_teleport") { }

        bool OnTrigger(Player* player, AreaTriggerEntry const* /*areaTrigger*/)
        {
            if (player->isInCombat())
            {
                if (SpellInfo const* spell = sSpellMgr->GetSpellInfo(FROZEN_THRONE_TELEPORT))
                    Spell::SendCastResult(player, spell, 0, SPELL_FAILED_AFFECTING_COMBAT);
                return true;
            }

            if (InstanceScript* instance = player->GetInstanceScript())
                if (instance->GetBossState(DATA_PROFESSOR_PUTRICIDE) == DONE &&
                    instance->GetBossState(DATA_BLOOD_QUEEN_LANA_THEL) == DONE &&
                    instance->GetBossState(DATA_SINDRAGOSA) == DONE &&
                    instance->GetBossState(DATA_THE_LICH_KING) != IN_PROGRESS)
                    player->CastSpell(player, FROZEN_THRONE_TELEPORT, true);

            return true;
        }
};

#ifndef __clang_analyzer__
void AddSC_icecrown_citadel_teleport()
{
    new icecrown_citadel_teleport();
    new at_frozen_throne_teleport();
}
#endif
