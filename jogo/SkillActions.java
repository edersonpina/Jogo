package net.fdgames.Rules;

import com.badlogic.gdx.graphics.Color;
import e.a.a.a;
import e.a.c.b;
import e.a.d.x;
import java.util.Iterator;
import net.fdgames.GameEntities.Character;
import net.fdgames.GameEntities.CharacterSheet.CharacterEffects;
import net.fdgames.GameEntities.CharacterSheet.CharacterResistances;
import net.fdgames.GameEntities.CharacterSheet.CharacterSheet;
import net.fdgames.GameEntities.Final.NPC;
import net.fdgames.GameEntities.Final.SecretDoor;
import net.fdgames.GameEntities.Final.Trap;
import net.fdgames.GameEntities.Helpers.DamageEffect;
import net.fdgames.GameLevel.GameLevel;
import net.fdgames.GameLevel.GameLevelData;
import net.fdgames.GameWorld.Follower;
import net.fdgames.GameWorld.GameData;
import net.fdgames.GameWorld.GameWorld;
import net.fdgames.Helpers.FDUtils;
import net.fdgames.Helpers.GameString;
import net.fdgames.TiledMap.Objects.Transition;
import net.fdgames.assets.AnimationLoader;
import net.fdgames.assets.GameAssets;
import net.fdgames.ek.Settings;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class SkillActions {
    public static float a(CharacterSheet characterSheet) {
        int c = characterSheet.skillSet.c("gossip");
        if (c == 1) {
            return 0.97f;
        }
        if (c == 2) {
            return 0.94f;
        }
        return c == 3 ? 0.91f : 1.0f;
    }

    public static DamageEffect a(int i) {
        if (i > 0) {
            return new DamageEffect(DamageEffect.EffectType.CRUSADER, i, 100);
        }
        return null;
    }

    public static Transition a() {
        String str = GameData.O().CurrentLevel;
        Transition transition = new Transition();
        transition.entry_id = 999;
        transition.area_id = "";
        boolean z = false;
        if (!str.contains("E9_cave") && ((!str.equals("G7_tomb") || GameLevel.h().sheet.i(2618) <= 0) && !b.q().n)) {
            z = true;
        }
        if (!z) {
            return transition;
        }
        if (str.contains("H10")) {
            transition.area_id = "H10";
        } else if (str.contains("H11")) {
            transition.area_id = "H10";
        } else if (str.contains("I11")) {
            transition.area_id = "H10";
        } else if (str.contains("I10")) {
            transition.area_id = "H10";
        } else if (str.contains("I9")) {
            transition.area_id = "H10";
        } else if (str.contains("G10")) {
            transition.area_id = "H10";
        } else if (str.contains("F9")) {
            transition.area_id = "G9";
        } else if (str.contains("F8")) {
            transition.area_id = "F8";
        } else if (str.contains("E8")) {
            transition.area_id = "F8";
        } else if (str.contains("G9")) {
            transition.area_id = "G9";
        } else if (str.contains("H9")) {
            transition.area_id = "G9";
        } else if (str.contains("G11")) {
            transition.area_id = "NI";
        } else if (str.contains("F11")) {
            transition.area_id = "NI";
        } else if (str.contains("F10")) {
            transition.area_id = "F10";
        } else if (str.contains("E10")) {
            transition.area_id = "E10";
        } else if (str.contains("E9")) {
            transition.area_id = "E10";
        } else if (str.contains("G8")) {
            transition.area_id = "NG";
        } else if (str.contains("G7")) {
            transition.area_id = "NG";
        } else if (str.contains("H8")) {
            transition.area_id = "NG";
        } else if (str.contains("I8")) {
            transition.area_id = "NG";
        } else if (str.contains("D9")) {
            transition.area_id = "FT";
        } else if (str.contains("D8")) {
            transition.area_id = "FT";
        } else if (str.contains("D10")) {
            transition.area_id = "FT";
        } else if (str.contains("C10")) {
            transition.area_id = "FT";
        } else if (str.contains("J8")) {
            transition.area_id = "J7";
        } else if (str.contains("J9")) {
            transition.area_id = "J10";
        } else if (str.contains("J10")) {
            transition.area_id = "J10";
        } else if (str.contains("J11")) {
            transition.area_id = "J10";
        } else if (str.contains("K11")) {
            transition.area_id = "K11";
        } else if (str.contains("J12")) {
            transition.area_id = "K11";
        } else if (str.contains("D11")) {
            transition.area_id = "D11";
        } else if (str.contains("E11")) {
            transition.area_id = "D11";
        } else if (str.contains("E12")) {
            transition.area_id = "D11";
        } else if (str.contains("D12")) {
            transition.area_id = "D11";
        } else if (str.contains("C11")) {
            transition.area_id = "D11";
        } else if (str.contains("C12")) {
            transition.area_id = "D11";
        } else if (str.contains("H7")) {
            transition.area_id = "H6";
        } else if (str.contains("H6")) {
            transition.area_id = "H6";
        } else if (str.contains("G6")) {
            transition.area_id = "H6";
        } else if (str.contains("F6")) {
            transition.area_id = "H6";
        } else if (str.contains("H5")) {
            transition.area_id = "H6";
        } else if (str.contains("H4")) {
            transition.area_id = "H6";
        } else if (str.contains("H3")) {
            transition.area_id = "H6";
        } else if (str.contains("I3")) {
            transition.area_id = "H6";
        } else if (str.contains("I13")) {
            transition.area_id = "I13";
        } else if (str.contains("H13")) {
            transition.area_id = "H12";
        } else if (str.contains("G13")) {
            transition.area_id = "H12";
        } else if (str.contains("I12")) {
            transition.area_id = "H12";
        } else if (str.contains("H12")) {
            transition.area_id = "H12";
        } else if (str.contains("D13")) {
            transition.area_id = "C13";
        } else if (str.contains("C13")) {
            transition.area_id = "C13";
        } else if (str.contains("C12")) {
            transition.area_id = "C13";
        } else if (str.contains("E13")) {
            transition.area_id = "C13";
        } else if (str.contains("F13")) {
            transition.area_id = "C13";
        } else if (str.contains("J7")) {
            transition.area_id = "J7";
        } else if (str.contains("C8")) {
            transition.area_id = "C9";
        } else if (str.contains("C9")) {
            transition.area_id = "C9";
        } else if (str.contains("N7")) {
            transition.area_id = "O7";
        } else if (str.contains("O7")) {
            transition.area_id = "O7";
        } else if (str.contains("M7")) {
            transition.area_id = "O7";
        } else if (str.contains("P8")) {
            transition.area_id = "P7";
        } else if (str.contains("P7")) {
            transition.area_id = "P7";
        } else if (str.contains("O8")) {
            transition.area_id = "P7";
        } else if (str.contains("P9")) {
            transition.area_id = "O9";
        } else if (str.contains("O9")) {
            transition.area_id = "O9";
        } else if (str.contains("R9")) {
            transition.area_id = "R8";
        } else if (str.contains("R8")) {
            transition.area_id = "R8";
        } else if (str.contains("R10")) {
            transition.area_id = "R8";
        } else if (str.contains("P10")) {
            transition.area_id = "O10";
        } else if (str.contains("O10")) {
            transition.area_id = "O10";
        } else if (str.contains("P11")) {
            transition.area_id = "P12";
        } else if (str.contains("P12")) {
            transition.area_id = "P12";
        } else if (str.contains("R11")) {
            transition.area_id = "P12";
        } else if (str.contains("R12")) {
            transition.area_id = "P12";
        } else if (str.contains("S11")) {
            transition.area_id = "P12";
        } else if (str.contains("J7")) {
            transition.area_id = "J7";
        } else if (str.contains("C6")) {
            transition.area_id = "C7";
        } else if (str.contains("C7")) {
            transition.area_id = "C7";
        } else if (str.contains("K7")) {
            transition.area_id = "J7";
        }
        return transition;
    }

    public static void a(Character character) {
        if (character.sheet.c() || character.sheet.skillSet.c("fury") <= 0 || character.sheet.t() <= 0.0f) {
            character.sheet.effects.fury = false;
            return;
        }
        boolean booleanValue = character.sheet.effects.fury.booleanValue();
        int c = character.sheet.skillSet.c("fury");
        float t = character.sheet.t();
        character.sheet.effects.fury = true;
        if (c == 1 && t >= 0.7f) {
            character.sheet.effects.furyMultiplier = 1.3f;
        } else if (c == 2 && t >= 0.65f) {
            character.sheet.effects.furyMultiplier = 1.5f;
        } else if (c != 3 || t < 0.65f) {
            character.sheet.effects.fury = false;
            CharacterEffects characterEffects = character.sheet.effects;
            characterEffects.furyBonus = 0;
            characterEffects.furyMultiplier = 1.0f;
        } else {
            character.sheet.effects.furyMultiplier = 1.65f;
        }
        if (!character.sheet.effects.fury.booleanValue() || booleanValue) {
            return;
        }
        a.h().a(new x(character.m(), "FURY!", 1.0f, Color.BLUE, 1.2f, 0.7f));
    }

    public static void a(Character character, String str, int i, int i2) {
        if (Rules.d(str) == null) {
            System.out.println("WARNING: null spawn for id:" + str);
            Settings.b("GL_spawnerror_" + str, 1);
            return;
        }
        int min = Math.min(i, character.sheet.z());
        Spawn spawn = new Spawn(Rules.d(str));
        AnimationLoader.a(str);
        NPC npc = new NPC(spawn);
        npc.tag = Integer.toHexString(FDUtils.a(1, 1000));
        npc.x = character.x;
        npc.y = character.y;
        GameLevelData.a(npc);
        npc.M0();
        npc.y0();
        npc.visibleToPlayer = true;
        int c = character.sheet.skillSet.c("summoner") > 0 ? character.sheet.skillSet.c("summoner") : 0;
        if (min > 0) {
            npc.sheet.p(min + c);
        }
        if (character.m() == 1 || character.P()) {
            GameData.O().party.b();
            npc.tag = "player_summon";
            npc.z0();
        } else {
            npc.b(character.n());
        }
        npc.respawned = true;
        npc.summoned = true;
        npc.dismissTime = (int) (GameData.O().s() + i2);
        npc.sheet.attributes.outsider = true;
        a.h().a(new x(npc.m(), GameString.a("SUMMONED"), 1.2f, Color.BLUE, 0.8f, 0.8f));
        a.h().a(npc, a.a.CASTING, 1.0f);
        GameAssets.i("spell1");
    }

    public static void a(Character character, Character character2) {
        int D;
        int D2;
        int c = character.sheet.skillSet.c("heal_wounds");
        int D3 = character.sheet.D();
        int i = c == 1 ? 30 : 0;
        if (c == 2) {
            i = 75;
        }
        if (c == 3) {
            i = 125;
        }
        if (c == 4) {
            i = 180;
        }
        character.sheet.skillSet.k("heal_wounds");
        if (D3 > 0) {
            character.l(i);
            i -= D3;
        }
        if (i <= 0) {
            return;
        }
        int D4 = character2.sheet.D();
        if (D4 > 0) {
            character2.l(i);
            i -= D4;
        }
        if (i <= 0) {
            return;
        }
        if (character.P() || character.m() == 1) {
            int D5 = GameLevel.h().sheet.D();
            if (D5 > 0) {
                GameLevel.h().l(i);
                i -= D5;
            }
            if (i <= 0) {
                return;
            }
            if (GameData.O().party.h() && (D2 = GameData.O().party.c().sheet.D()) > 0) {
                GameData.O().party.c().l(i);
                i -= D2;
            }
            if (GameData.O().party == null || GameData.O().party.followers == null) {
                return;
            }
            Iterator it = GameData.O().party.followers.iterator();
            while (it.hasNext()) {
                Follower follower = (Follower) it.next();
                if (i <= 0 || follower == null || follower.a() == null || follower.a().tag == null) {
                    return;
                }
                NPC b = GameLevel.b(follower.a().tag);
                if (b != null && (D = b.sheet.D()) > 0) {
                    b.l(i);
                    i -= D;
                }
            }
        }
    }

    public static void a(Character character, boolean z) {
        int i = z ? 95 : 75;
        int i2 = z ? 640 : 320;
        int i3 = 0;
        Iterator it = GameLevelData.s().secretDoors.iterator();
        while (it.hasNext()) {
            SecretDoor secretDoor = (SecretDoor) it.next();
            if (secretDoor.v() == SecretDoor.SecretDoorState.UNDETECTED && b.d(secretDoor.q(), character.q()) < i2 && FDUtils.a(1, 100) < i) {
                secretDoor.a(character.getName(), i);
            }
        }
        Iterator it2 = GameLevelData.s().secretDoors.iterator();
        while (it2.hasNext()) {
            if (((SecretDoor) it2.next()).v() == SecretDoor.SecretDoorState.UNDETECTED) {
                i3++;
            }
        }
        GameLevelData.s();
        Iterator it3 = GameLevelData.A().iterator();
        while (it3.hasNext()) {
            Trap trap = (Trap) it3.next();
            if (!trap.discovered && b.d(trap.q(), character.q()) < i2 && FDUtils.a(1, 100) < i) {
                trap.a(character.getName(), i);
            }
        }
        if (i3 > 0) {
            if (!z) {
                GameData.O().log.a(GameString.a("DOORS_REMAINING_1") + " [BLUE]some[] " + GameString.a("DOORS_REMAINING_2"));
                return;
            }
            GameData.O().log.a(GameString.a("DOORS_REMAINING_1") + " [BLUE]" + i3 + "[] " + GameString.a("DOORS_REMAINING_2"));
        }
    }

    public static DamageEffect b(int i) {
        if (i <= 0) {
            return null;
        }
        if (i == 1) {
            return new DamageEffect(DamageEffect.EffectType.STUN, 1, 2);
        }
        if (i == 2) {
            return new DamageEffect(DamageEffect.EffectType.STUN, 1, 4);
        }
        if (i == 3) {
            return new DamageEffect(DamageEffect.EffectType.STUN, 1, 5);
        }
        return null;
    }

    public static void b(Character character) {
        int c = character.sheet.skillSet.c("flurry");
        if (c == 1) {
            character.h(6.0f);
        } else if (c == 2) {
            character.h(6.0f);
        } else if (c == 3) {
            character.h(6.0f);
        }
        character.sheet.skillSet.k("flurry");
        a.h().a(new x(character.m(), "Flurry!", 0.7f, Color.GREEN, 1.0f, 0.7f));
    }

    public static void c(Character character) {
        int i;
        if (character.b(character.sheet.skillSet.b("holy_shield"), 0.5f)) {
            int c = character.sheet.skillSet.c("holy_shield");
            int i2 = 0;
            if (c == 1) {
                i2 = 25;
                i = 4;
            } else {
                i = 0;
            }
            if (c == 2) {
                i2 = 40;
                i = 6;
            }
            if (c == 3) {
                i2 = 60;
                i = 8;
            }
            if (c == 4) {
                i2 = 70;
                i = 10;
            }
            character.a(i, 12.0f);
            character.a(CharacterResistances.ResistanceType.Death, i2, 12.0f);
            character.sheet.skillSet.k("holy_shield");
        }
    }

    public static void d(Character character) {
        int c = character.sheet.skillSet.c("rapid_fire");
        if (c == 1) {
            character.i(6.0f);
        } else if (c == 2) {
            character.i(6.0f);
        } else if (c == 3) {
            character.i(6.0f);
        }
        character.sheet.skillSet.k("rapid_fire");
    }

    public static void e(Character character) {
        int c = character.sheet.skillSet.c("resilience");
        if (c == 1) {
            character.h(5, 6.0f);
        }
        if (c == 2) {
            character.h(9, 8.0f);
        }
        if (c == 3) {
            character.h(14, 10.0f);
        }
        character.sheet.skillSet.k("resilience");
    }

    public static void f(Character character) {
        int c = character.sheet.skillSet.c("stab");
        int z = character.sheet.z();
        if (c == 1) {
            character.p(z + 6);
        } else if (c == 2) {
            character.p(z + 10);
        } else if (c == 3) {
            character.p(Math.round(z * 1.4f) + 10);
        } else if (c == 4) {
            character.p(Math.round(z * 1.8f) + 10);
        }
        character.sheet.skillSet.k("stab");
    }

    public static void g(Character character) {
        GameAssets.i("spell1");
        Iterator it = GameLevelData.w().iterator();
        while (it.hasNext()) {
            NPC npc = (NPC) it.next();
            if (!npc.destroy && npc.sheet.c("undead") && b.d(npc.q(), character.q()) <= 128 && GameWorld.c.a(npc.n(), character.n())) {
                npc.m(3);
            }
        }
        a.h().a(character.x, character.y, "flash_red", 128, 1.0f);
    }

    public static void h(Character character) {
        int c;
        if (character.SkillUseData_consecutive_hits <= 1 || (c = character.sheet.skillSet.c("duel")) == 0) {
            return;
        }
        if (c == 1) {
            CharacterEffects characterEffects = character.sheet.effects;
            characterEffects.duelbonus = character.SkillUseData_consecutive_hits - 1;
            if (characterEffects.duelbonus < 1) {
                characterEffects.duelbonus = 1;
            }
            CharacterEffects characterEffects2 = character.sheet.effects;
            if (characterEffects2.duelbonus > 4) {
                characterEffects2.duelbonus = 4;
            }
        }
        if (c == 2) {
            CharacterEffects characterEffects3 = character.sheet.effects;
            characterEffects3.duelbonus = (character.SkillUseData_consecutive_hits - 1) * 2;
            if (characterEffects3.duelbonus < 2) {
                characterEffects3.duelbonus = 2;
            }
            CharacterEffects characterEffects4 = character.sheet.effects;
            if (characterEffects4.duelbonus > 6) {
                characterEffects4.duelbonus = 6;
            }
        }
        if (c == 3) {
            CharacterEffects characterEffects5 = character.sheet.effects;
            characterEffects5.duelbonus = (character.SkillUseData_consecutive_hits - 1) * 2;
            if (characterEffects5.duelbonus < 2) {
                characterEffects5.duelbonus = 2;
            }
            CharacterEffects characterEffects6 = character.sheet.effects;
            if (characterEffects6.duelbonus > 10) {
                characterEffects6.duelbonus = 10;
            }
        }
        CharacterEffects characterEffects7 = character.sheet.effects;
        if (characterEffects7.duelbonus > 0) {
            characterEffects7.duel = true;
        } else {
            characterEffects7.duel = false;
        }
        a h = a.h();
        int m = character.m();
        StringBuilder sb = new StringBuilder();
        d.a.a.a.a.c("duel", sb, " +");
        sb.append(character.sheet.effects.duelbonus);
        h.a(new x(m, sb.toString(), 1.0f, Color.YELLOW, 1.5f, 0.7f));
    }
}
