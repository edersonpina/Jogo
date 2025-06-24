package net.fdgames.Rules;

import d.a.a.a.a;
import java.util.Arrays;
import java.util.List;
import net.fdgames.GameEntities.CharacterSheet.CharacterResistances;
import net.fdgames.GameEntities.CharacterSheet.CharacterSheet;
import net.fdgames.GameEntities.Helpers.Damage;
import net.fdgames.GameEntities.Helpers.DamageEffect;
import net.fdgames.GameLogic.ActionsSet;
import net.fdgames.GameLogic.ConditionsSet;
import net.fdgames.GameLogic.PlayerRequirements;
import net.fdgames.Helpers.GameString;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class Item {
    public int DevicesBonus;
    public int HPBonus;
    public int ManaBonus;
    public ActionsSet OnTake;
    public ConditionsSet OnTakeconditions;
    public ActionsSet OnUse;
    private CharacterResistances ResistanceBonus;
    public int armorBonus;
    public ItemAttributes attributes;
    public ClassRestriction classes;
    public int damageBonus;
    public Damage.DamageType damageBonusType;
    private String description;
    public boolean hasDamageBonus;
    public boolean hasProc;
    public String icon;
    public int item_ID;
    public int manaCost;
    public String name;
    public int procChance;
    public DamageEffect.EffectType procEffect;
    public int procLevel;
    public PlayerRequirements requisites;
    public String sprite;
    public boolean stackable;
    public int[] traitBonus;
    public ItemType type;
    public int value;
    public WeaponStats weaponStats;

    public enum ItemType {
        GENERAL,
        WEAPON,
        SHIELD,
        ARMOR_HEAD,
        ARMOR_CHEST,
        ARMOR_FEET,
        ARMOR_LEGS,
        ARMOR_ARMS,
        POTION,
        WAND,
        KEY,
        RING,
        BELT,
        CLOAK,
        NECKLACE,
        SCROLL
    }

    public int a(int i) {
        if (this.traitBonus == null) {
            this.traitBonus = new int[6];
        }
        return this.traitBonus[i];
    }

    public int a(CharacterResistances.ResistanceType resistanceType) {
        return this.ResistanceBonus.a(resistanceType);
    }

    public ItemAttributes a() {
        if (this.attributes == null) {
            this.attributes = new ItemAttributes("");
        }
        return this.attributes;
    }

    public void a(String str) {
        CharacterResistances characterResistances = new CharacterResistances();
        characterResistances.a(str);
        this.ResistanceBonus = characterResistances;
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        if (!str.equals("")) {
            this.damageBonus = Integer.parseInt(str);
            this.damageBonusType = Damage.a(str2);
            this.hasDamageBonus = true;
        }
        if (str3.equals("")) {
            return;
        }
        this.hasProc = true;
        this.procEffect = WeaponStats.a(str3);
        this.procChance = Integer.parseInt(str4);
        this.procLevel = Integer.parseInt(str5);
    }

    public boolean a(CharacterSheet characterSheet) {
        ItemType itemType = this.type;
        return (itemType == ItemType.POTION || itemType == ItemType.SCROLL || itemType == ItemType.WAND) && characterSheet.n(this.manaCost) && this.classes.a(characterSheet.n()).booleanValue() && this.requisites.a(characterSheet, false);
    }

    public String b() {
        String str;
        WeaponStats weaponStats;
        String b = this.attributes.b();
        if (this.type != ItemType.WEAPON || (weaponStats = this.weaponStats) == null) {
            str = "";
        } else {
            if (!weaponStats.twohanded || weaponStats.ranged) {
                WeaponStats weaponStats2 = this.weaponStats;
                str = (!weaponStats2.ranged || weaponStats2.c()) ? this.weaponStats.light ? GameString.a("WEAPON_LIGHT") : "" : GameString.a("WEAPON_RANGED");
            } else {
                str = GameString.a("WEAPON_2HANDED");
            }
            if (this.weaponStats.wand) {
                str = GameString.a("WEAPON_RANGED");
            }
            if (this.weaponStats.staff) {
                str = GameString.a("WEAPON_RANGED") + ", " + GameString.a("WEAPON_2HANDED");
            }
        }
        return (b.equals("") || str.equals("")) ? a.a(b, str) : a.a(b, ", ", str);
    }

    public void b(String str) {
        this.traitBonus = new int[6];
        List asList = Arrays.asList(str.trim().replace("\"", "").split(","));
        if (asList.size() == 6) {
            for (int i = 0; i < 6; i++) {
                this.traitBonus[i] = Integer.parseInt((String) asList.get(i));
            }
        }
    }

    public String c() {
        WeaponStats weaponStats;
        StringBuilder a = a.a("[BLUE]");
        a.append(GameString.a("WEAPON_2HANDED"));
        a.append(":[] ");
        a.append(GameString.a("DESC_ITEM_2HANDED"));
        String sb = a.toString();
        StringBuilder a2 = a.a("[BLUE]");
        a2.append(GameString.a("WEAPON_RANGED"));
        a2.append(":[] ");
        a2.append(GameString.a("DESC_ITEM_RANGED"));
        String sb2 = a2.toString();
        StringBuilder a3 = a.a("[BLUE]");
        a3.append(GameString.a("WEAPON_LIGHT"));
        a3.append(":[] ");
        a3.append(GameString.a("DESC_ITEM_LIGHT"));
        String sb3 = a3.toString();
        String e = this.attributes.e();
        if (this.type != ItemType.WEAPON || (weaponStats = this.weaponStats) == null) {
            sb3 = "";
        } else {
            if (!weaponStats.twohanded || weaponStats.ranged) {
                WeaponStats weaponStats2 = this.weaponStats;
                if (weaponStats2.ranged && !weaponStats2.c()) {
                    sb3 = sb2;
                } else if (!this.weaponStats.light) {
                    sb3 = "";
                }
            } else {
                sb3 = sb;
            }
            if (this.weaponStats.wand) {
                sb3 = sb2;
            }
            if (this.weaponStats.staff) {
                sb3 = a.a(sb2, "\r\n\r\n", sb);
            }
        }
        return (e.equals("") || sb3.equals("")) ? a.a(e, sb3) : a.a(e, "\r\n\r\n", sb3);
    }

    public void c(String str) {
        this.description = str;
    }

    public String d() {
        return this.description;
    }

    public void d(String str) {
        this.name = str;
    }

    public String e() {
        return this.name;
    }

    public CharacterResistances f() {
        return this.ResistanceBonus;
    }

    public boolean g() {
        PlayerRequirements playerRequirements = this.requisites;
        if (playerRequirements == null) {
            return false;
        }
        return playerRequirements.a();
    }

    public boolean h() {
        if (this.traitBonus == null) {
            return false;
        }
        for (int i = 0; i < 6; i++) {
            if (this.traitBonus[i] != 0) {
                return true;
            }
        }
        return false;
    }

    public boolean i() {
        WeaponStats weaponStats;
        return this.type == ItemType.WEAPON && (weaponStats = this.weaponStats) != null && !weaponStats.ranged && weaponStats.has_secondary_damage && weaponStats.secondary_damageType == Damage.DamageType.Death;
    }

    public boolean j() {
        WeaponStats weaponStats;
        Damage.DamageType damageType;
        return this.type == ItemType.WEAPON && (weaponStats = this.weaponStats) != null && !weaponStats.twohanded && !weaponStats.ranged && weaponStats.has_secondary_damage && ((damageType = weaponStats.secondary_damageType) == Damage.DamageType.Cold || damageType == Damage.DamageType.Fire || damageType == Damage.DamageType.Shock);
    }

    public boolean k() {
        ItemType itemType = this.type;
        return itemType == ItemType.ARMOR_ARMS || itemType == ItemType.ARMOR_CHEST || itemType == ItemType.ARMOR_FEET || itemType == ItemType.ARMOR_HEAD || itemType == ItemType.ARMOR_LEGS || itemType == ItemType.RING || itemType == ItemType.BELT || itemType == ItemType.WEAPON || itemType == ItemType.SHIELD || itemType == ItemType.NECKLACE || itemType == ItemType.CLOAK;
    }
}
