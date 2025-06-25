package net.fdgames.Rules;

import com.badlogic.gdx.Gdx;
import d.a.a.a.a;
import e.a.e.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import net.fdgames.GameEntities.Character;
import net.fdgames.GameEntities.CharacterSheet.CharacterResistances;
import net.fdgames.GameEntities.CharacterSheet.CharacterSheet;
import net.fdgames.GameLogic.ActionsSet;
import net.fdgames.GameLogic.ConditionsSet;
import net.fdgames.GameLogic.PlayerRequirements;
import net.fdgames.GameLogic.ScriptedAction;
import net.fdgames.GameWorld.GameData;
import net.fdgames.Helpers.FDUtils;
import net.fdgames.Helpers.GameString;
import net.fdgames.Helpers.GameText;
import net.fdgames.Rules.Item;
import net.fdgames.assets.GameAssets;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.enb.mod/classes.dex */
public class Rules {
    public static Item[] a;
    private static Spawn[] b;
    private static GameText[] c;
    private static GameText[] d;
    private static GameText[] e;
    public static int[] f;
    private static ArrayList g;
    private static ArrayList h;
    private static ArrayList i;
    public static TrapData j;
    public static MapEffectData k;

    public enum CharacterClass {
        WARRIOR,
        ROGUE,
        CLERIC,
        WIZARD,
        MONSTER,
        GENERAL,
        NONE;

        public static String a(CharacterClass characterClass) {
            int ordinal = characterClass.ordinal();
            return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? ordinal != 5 ? "" : GameString.a("GENERAL_CLASS") : GameString.a("MONSTER") : GameString.a("MAGE") : GameString.a("CLERIC") : GameString.a("ROGUE") : GameString.a("WARRIOR");
        }
    }

    public enum CharacterRace {
        HUMAN,
        HALFLING,
        GOBLIN,
        ORC,
        MINOTAUR,
        MONSTER,
        MONSTER_WEAK,
        MONSTER_STRONG,
        MINIBOSS,
        BOSS,
        NPC
    }

    public static int a(int i2) {
        if (i2 <= 950) {
            return f[i2];
        }
        return 0;
    }

    public static Boolean a(int i2, CharacterSheet characterSheet) {
        if (!e(i2).booleanValue()) {
            return false;
        }
        if (c(i2).classes.a(characterSheet.n()).booleanValue()) {
            return true;
        }
        Item c2 = c(i2);
        if (characterSheet.n() != CharacterClass.WIZARD || c2.type != Item.ItemType.WEAPON || c2.weaponStats.ranged) {
            return false;
        }
        if (characterSheet.skillSet.c("vampiric_blade") <= 0 || !c2.i()) {
            return characterSheet.skillSet.c("arcane_blade") > 0 && c2.j();
        }
        return true;
    }

    public static String a(String str, int i2) {
        Iterator it = i.iterator();
        while (it.hasNext()) {
            RewardTable rewardTable = (RewardTable) it.next();
            if (rewardTable.id.equals(str)) {
                return rewardTable.a(i2);
            }
        }
        return "";
    }

    public static CharacterClass a(String str) {
        if (str.equals("warrior")) {
            return CharacterClass.WARRIOR;
        }
        if (!str.equals("wizard") && !str.equals("mage")) {
            if (!str.equals("priest") && !str.equals("cleric")) {
                return str.equals("rogue") ? CharacterClass.ROGUE : CharacterClass.MONSTER;
            }
            return CharacterClass.CLERIC;
        }
        return CharacterClass.WIZARD;
    }

    public static void a() {
        GameText gameText;
        GameText gameText2;
        GameText gameText3;
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 1/12: loading skills....");
        Skills.b();
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 2/12: loading plants....");
        Plants.a();
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 3/12: loading levels....");
        f = new int[1501];
        int[] iArr = f;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 300;
        iArr[3] = 1000;
        iArr[4] = 3000;
        iArr[5] = 6000;
        iArr[6] = 11000;
        iArr[7] = 18000;
        iArr[8] = 27000;
        iArr[9] = 38000;
        iArr[10] = 50000;
        iArr[11] = 64000;
        iArr[12] = 80000;
        iArr[13] = 100000;
        iArr[14] = 125000;
        iArr[15] = 160000;
        iArr[16] = 200000;
        iArr[17] = 250000;
        iArr[18] = 310000;
        iArr[19] = 380000;
        iArr[20] = 460000;
        iArr[21] = 560000;
        iArr[22] = 700000;
        iArr[23] = 1000000;
        iArr[24] = 1500000;
        iArr[25] = 2400000;
        int i2 = 26;
        while (i2 <= 99) {
            int[] iArr2 = f;
            iArr2[i2] = iArr2[i2 - 1] + 1000000;
            i2++;
        }
        int[] iArr3 = f;
        iArr3[i2] = iArr3[i2 - 1] + 2500000;
        while (i2 <= 199) {
            int[] iArr4 = f;
            iArr4[i2] = iArr4[i2 - 1] + 2000000;
            i2++;
        }
        int[] iArr5 = f;
        iArr5[i2] = iArr5[i2 - 1] + 3500000;
        while (i2 <= 299) {
            int[] iArr6 = f;
            iArr6[i2] = iArr6[i2 - 1] + 2000000;
            i2++;
        }
        int[] iArr7 = f;
        iArr7[i2] = iArr7[i2 - 1] + 5000000;
        while (i2 <= 399) {
            int[] iArr8 = f;
            iArr8[i2] = iArr8[i2 - 1] + 2000000;
            i2++;
        }
        int[] iArr9 = f;
        iArr9[i2] = iArr9[i2 - 1] + 6000000;
        while (i2 <= 499) {
            int[] iArr10 = f;
            iArr10[i2] = iArr10[i2 - 1] + 2000000;
            i2++;
        }
        int[] iArr11 = f;
        iArr11[i2] = iArr11[i2 - 1] + 8000000;
        while (i2 <= 599) {
            int[] iArr12 = f;
            iArr12[i2] = iArr12[i2 - 1] + 2000000;
            i2++;
        }
        int[] iArr13 = f;
        iArr13[i2] = iArr13[i2 - 1] + 9500000;
        while (i2 <= 699) {
            int[] iArr14 = f;
            iArr14[i2] = iArr14[i2 - 1] + 2000000;
            i2++;
        }
        int[] iArr15 = f;
        iArr15[i2] = iArr15[i2 - 1] + 11000000;
        while (i2 <= 799) {
            int[] iArr16 = f;
            iArr16[i2] = iArr16[i2 - 1] + 2000000;
            i2++;
        }
        int[] iArr17 = f;
        iArr17[i2] = iArr17[i2 - 1] + 13000000;
        while (i2 <= 899) {
            int[] iArr18 = f;
            iArr18[i2] = iArr18[i2 - 1] + 2000000;
            i2++;
        }
        int[] iArr19 = f;
        iArr19[i2] = iArr19[i2 - 1] + 16500000;
        while (i2 <= 950) {
            int[] iArr20 = f;
            iArr20[i2] = iArr20[i2 - 1] + 2000000;
            i2++;
        }
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 4/12: loading weapons....");
        h = new ArrayList();
        String[] a2 = a.a(Gdx.files, "data/rules/weapons.txt", "\n");
        for (int i3 = 1; i3 < a2.length; i3++) {
            a2[i3] = a2[i3].replace("\n", "");
            a2[i3] = a2[i3].replace("\r", "");
            h.add(new WeaponStats(a2[i3]));
        }
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 5/12: loading items text....");
        String[] split = Gdx.files.internal("data/rules/items_text.txt").readString("UTF-8").replaceAll("\\r+", "").split("\n");
        d = new GameText[split.length - 1];
        for (int i4 = 1; i4 < split.length; i4++) {
            d[i4 - 1] = new GameText(split[i4], true, false);
        }
        e = new GameText[split.length - 1];
        for (int i5 = 1; i5 < split.length; i5++) {
            e[i5 - 1] = new GameText(split[i5], true, true);
        }
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 6/12: loading items....");
        String[] a3 = a.a(Gdx.files, "data/rules/items.txt", "\n");
        a = new Item[a3.length - 1];
        int i6 = 0;
        while (i6 < a.length) {
            int i7 = i6 + 1;
            a3[i7] = a3[i7].replace("\n", "");
            a3[i7] = a3[i7].replace("\r", "");
            String[] split2 = a3[i7].split("\t", -1);
            if (Integer.parseInt(split2[0]) != 0) {
                a[i6] = new Item();
                a[i6].weaponStats = new WeaponStats();
                a[i6].item_ID = Integer.parseInt(split2[0]);
                Item item = a[i6];
                String trim = split2[2].toLowerCase(Locale.ENGLISH).trim();
                item.type = trim.equals("general") ? Item.ItemType.GENERAL : trim.equals("weapon") ? Item.ItemType.WEAPON : trim.equals("shield") ? Item.ItemType.SHIELD : trim.equals("armor_arms") ? Item.ItemType.ARMOR_ARMS : trim.equals("armor_chest") ? Item.ItemType.ARMOR_CHEST : trim.equals("armor_feet") ? Item.ItemType.ARMOR_FEET : trim.equals("armor_legs") ? Item.ItemType.ARMOR_LEGS : trim.equals("armor_head") ? Item.ItemType.ARMOR_HEAD : trim.equals("key") ? Item.ItemType.KEY : trim.equals("potion") ? Item.ItemType.POTION : trim.equals("wand") ? Item.ItemType.WAND : trim.equals("ring") ? Item.ItemType.RING : trim.equals("belt") ? Item.ItemType.BELT : trim.equals("cloak") ? Item.ItemType.CLOAK : trim.equals("necklace") ? Item.ItemType.NECKLACE : trim.equals("scroll") ? Item.ItemType.SCROLL : Item.ItemType.GENERAL;
                Item item2 = a[i6];
                String str = split2[0];
                int i8 = 0;
                while (true) {
                    GameText[] gameTextArr = d;
                    if (i8 >= gameTextArr.length) {
                        System.out.println("WARNING: item name not found, " + str);
                        gameText2 = null;
                        break;
                    }
                    if (gameTextArr[i8].tag.equals(str)) {
                        gameText2 = d[i8];
                        break;
                    }
                    i8++;
                }
                item2.d(gameText2.get());
                Item item3 = a[i6];
                String str2 = split2[0];
                int i9 = 0;
                while (true) {
                    GameText[] gameTextArr2 = e;
                    if (i9 >= gameTextArr2.length) {
                        System.out.println("WARNING: item description not found, " + str2);
                        gameText3 = null;
                        break;
                    }
                    if (gameTextArr2[i9].tag.equals(str2)) {
                        gameText3 = e[i9];
                        break;
                    }
                    i9++;
                }
                item3.c(gameText3.get().replace("\"", ""));
                if (split2[3] != "") {
                    a[i6].weaponStats = e(split2[3]);
                }
                if (!split2[4].equals("")) {
                    a[i6].armorBonus = Integer.parseInt(split2[4]);
                }
                a[i6].a(split2[5]);
                a[i6].b(split2[6]);
                a[i6].attributes = new ItemAttributes(split2[7]);
                if (!split2[8].equals("")) {
                    a[i6].value = Integer.parseInt(split2[8]);
                }
                Item[] itemArr = a;
                itemArr[i6].icon = split2[9];
                if (split2[10] != "") {
                    itemArr[i6].HPBonus = Integer.parseInt(split2[10]);
                }
                if (split2[11] != "") {
                    a[i6].ManaBonus = Integer.parseInt(split2[11]);
                }
                a[i6].a(split2[12], split2[13], split2[14], split2[15], split2[16]);
                Item[] itemArr2 = a;
                itemArr2[i6].sprite = split2[17];
                itemArr2[i6].OnTake = new ActionsSet(split2[18]);
                a[i6].OnTakeconditions = new ConditionsSet(split2[19]);
                a[i6].OnEquip = new ActionsSet(split2[20]);
                if (a[i6].type == Item.ItemType.POTION || a[i6].type == Item.ItemType.SCROLL) {
                    a[i6].OnEquip.actions.add(new ScriptedAction(ScriptedAction.ActionType.LoseItem, Integer.toString(a[i6].item_ID)));
                }
                if (!split2[21].equals("")) {
                    a[i6].manaCost = Integer.parseInt(split2[21]);
                }
                if (split2[22] != "") {
                    a[i6].requisites = new PlayerRequirements(split2[22]);
                }
                a[i6].classes = new ClassRestriction(split2[23]);
                if (split2[24].trim().equals("1")) {
                    a[i6].stackable = true;
                } else {
                    a[i6].stackable = false;
                }
            }
            i6 = i7;
        }
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 7/12: loading bestiary text....");
        String[] split3 = Gdx.files.internal("data/rules/bestiary_names.txt").readString("UTF-8").replaceAll("\\r+", "").split("\n");
        c = new GameText[split3.length - 1];
        for (int i10 = 1; i10 < split3.length; i10++) {
            c[i10 - 1] = new GameText(split3[i10]);
        }
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 8/12: loading bestiary....");
        String[] a4 = a.a(Gdx.files, "data/rules/bestiary.txt", "\n");
        b = new Spawn[a4.length - 1];
        int i11 = 0;
        while (i11 < b.length) {
            int i12 = i11 + 1;
            a4[i12] = a4[i12].replace("\n", "");
            a4[i12] = a4[i12].replace("\r", "");
            String[] split4 = a4[i12].split("\t", -1);
            b[i11] = new Spawn();
            b[i11].weaponStats = new WeaponStats();
            b[i11].spawn_ID = split4[0].toLowerCase(Locale.ENGLISH).trim();
            String str3 = b[i11].spawn_ID;
            int i13 = 0;
            while (true) {
                GameText[] gameTextArr3 = c;
                if (i13 >= gameTextArr3.length) {
                    System.out.println("WARNING: bestiary name not found, " + str3);
                    gameText = null;
                    break;
                }
                if (gameTextArr3[i13].tag.equals(str3)) {
                    gameText = c[i13];
                    break;
                }
                i13++;
            }
            if (gameText != null) {
                b[i11].a(gameText.get());
            }
            Spawn spawn = b[i11];
            String trim2 = split4[1].toLowerCase(Locale.ENGLISH).trim();
            spawn.race = trim2.equals("human") ? CharacterRace.HUMAN : trim2.equals("goblin") ? CharacterRace.GOBLIN : trim2.equals("orc") ? CharacterRace.ORC : trim2.equals("minotaur") ? CharacterRace.MINOTAUR : trim2.equals("weak") ? CharacterRace.MONSTER_WEAK : trim2.equals("strong") ? CharacterRace.MONSTER_STRONG : trim2.equals("miniboss") ? CharacterRace.MINIBOSS : trim2.equals("npc") ? CharacterRace.NPC : trim2.equals("boss") ? CharacterRace.BOSS : trim2.equals("") ? CharacterRace.MONSTER : CharacterRace.MONSTER;
            b[i11].characterclass = a(split4[2].toLowerCase(Locale.ENGLISH).trim());
            b[i11].minlevel = Integer.parseInt(split4[3]);
            b[i11].maxlevel = Integer.parseInt(split4[4]);
            b[i11].weaponStats = e(split4[5]);
            b[i11].baseArmor = Integer.parseInt(split4[6]);
            Spawn spawn2 = b[i11];
            String replace = split4[7].replace("\"", "");
            CharacterResistances characterResistances = new CharacterResistances();
            characterResistances.a(replace);
            spawn2.resistances = characterResistances;
            b[i11].speedModifier = Float.parseFloat(split4[8]);
            b[i11].attributes = split4[9].trim();
            b[i11].lootTable = split4[10].toLowerCase(Locale.ENGLISH).trim().replace("\"", "");
            b[i11].spriteName = split4[11].toLowerCase(Locale.ENGLISH).trim().replace("\"", "");
            Spawn[] spawnArr = b;
            spawnArr[i11].extraSize = spawnArr[i11].spriteName.contains("_large");
            b[i11].size = Float.valueOf(Float.parseFloat(split4[12]));
            b[i11].skills = split4[13].toLowerCase(Locale.ENGLISH).trim();
            b[i11].AI_type = split4[14].toLowerCase(Locale.ENGLISH).trim();
            Spawn[] spawnArr2 = b;
            spawnArr2[i11].faction = split4[15];
            spawnArr2[i11].gender = split4[16].trim().toLowerCase(Locale.ENGLISH).equals("f") ? Character.Gender.Female : Character.Gender.Male;
            b[i11].portrait = Integer.parseInt(split4[17]);
            Spawn[] spawnArr3 = b;
            spawnArr3[i11].onDieConditions = split4[18];
            spawnArr3[i11].onDieActions = split4[19];
            spawnArr3[i11].onAggroSound = FDUtils.a(split4[20]);
            b[i11].onDieSound = FDUtils.a(split4[21]);
            GameAssets.g(b[i11].onAggroSound);
            GameAssets.g(b[i11].onDieSound);
            i11 = i12;
        }
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 9/12: loading loot....");
        g = new ArrayList();
        String[] split5 = Gdx.files.internal("data/rules/loot.txt").readString("UTF-16").split("\n");
        for (int i14 = 1; i14 < split5.length; i14++) {
            split5[i14] = split5[i14].replace("\n", "");
            split5[i14] = split5[i14].replace("\r", "");
            String[] split6 = split5[i14].split("\t", -1);
            g.add(new LootItem(split6[0].toLowerCase(Locale.ENGLISH).trim(), Integer.parseInt(split6[1].toLowerCase(Locale.ENGLISH).trim()), Integer.parseInt(split6[3].toLowerCase(Locale.ENGLISH).trim()), split6[4].toLowerCase(Locale.ENGLISH).trim()));
        }
        if (g.size() < 100) {
            System.out.println("WARNING: ********** Loot Tables not correctly loaded ***********");
        }
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 10/12: loading rewards....");
        i = new ArrayList();
        i.add(new RewardTable("gold"));
        i.add(new RewardTable("potions"));
        i.add(new RewardTable("mercian_armor"));
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 11/12: loading traps....");
        j = new TrapData();
        b.a("ExiledKingdoms.Rules.Load() -        >Subtask 12/12: loading map effects....");
        k = new MapEffectData();
        b.a("ExiledKingdoms.Rules.Load() - Ruleset loaded");
    }

    public static float b(int i2) {
        return 10.0f / i2;
    }

    public static int b(String str) {
        Iterator it = g.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            LootItem lootItem = (LootItem) it.next();
            if (lootItem.item_ID < 0 && lootItem.table.equals(str) && lootItem.conditions.a().booleanValue() && lootItem.a().booleanValue()) {
                i2 = FDUtils.c(Math.abs(lootItem.item_ID), 6) + i2;
            }
        }
        return i2;
    }

    public static void b(String str, int i2) {
        Iterator it = i.iterator();
        while (it.hasNext()) {
            RewardTable rewardTable = (RewardTable) it.next();
            if (rewardTable.id.equals(str)) {
                rewardTable.b(i2);
            }
        }
        int i3 = i2 * 50;
        GameData.O().player.k(i3);
        GameData.O().log.c(i3);
    }

    public static ArrayList c(String str) {
        ArrayList arrayList = new ArrayList();
        int m = GameData.O().m();
        int i2 = m > 950 ? 3 : (m <= 700 || m > 950) ? 1 : 2;
        Iterator it = g.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            LootItem lootItem = (LootItem) it.next();
            if (lootItem.item_ID > 0 && lootItem.table.equals(str) && lootItem.conditions.a().booleanValue() && lootItem.a().booleanValue()) {
                arrayList.add(Integer.valueOf(lootItem.item_ID));
                int i4 = lootItem.chance < 1000 ? i3 + 1 : i3;
                if (i4 >= i2) {
                    break;
                }
                i3 = i4;
            }
        }
        return arrayList;
    }

    public static Item c(int i2) {
        int i3 = 0;
        while (true) {
            Item[] itemArr = a;
            if (i3 >= itemArr.length) {
                return null;
            }
            if (itemArr[i3].item_ID == i2) {
                return itemArr[i3];
            }
            i3++;
        }
    }

    public static String d(int i2) {
        return i2 != 0 ? c(i2).e() : "";
    }

    public static Spawn d(String str) {
        int length = b.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (b[i2].spawn_ID.equals(str.toLowerCase(Locale.ENGLISH).trim())) {
                return b[i2];
            }
        }
        System.out.println("WARNING: spawn " + str + " not found");
        return null;
    }

    public static Boolean e(int i2) {
        Item.ItemType itemType;
        return i2 != 0 && ((itemType = c(i2).type) == Item.ItemType.ARMOR_ARMS || itemType == Item.ItemType.ARMOR_CHEST || itemType == Item.ItemType.ARMOR_FEET || itemType == Item.ItemType.ARMOR_HEAD || itemType == Item.ItemType.ARMOR_LEGS || itemType == Item.ItemType.RING || itemType == Item.ItemType.BELT || itemType == Item.ItemType.WEAPON || itemType == Item.ItemType.SHIELD || itemType == Item.ItemType.NECKLACE || itemType == Item.ItemType.CLOAK);
    }

    public static WeaponStats e(String str) {
        int size = h.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((WeaponStats) h.get(i2)).id.equals(str)) {
                return (WeaponStats) h.get(i2);
            }
        }
        return null;
    }

    public static Boolean f(int i2) {
        int i3 = 0;
        while (true) {
            Item[] itemArr = a;
            if (i3 >= itemArr.length) {
                return false;
            }
            if (itemArr[i3].item_ID == i2) {
                return Boolean.valueOf(itemArr[i3].stackable);
            }
            i3++;
        }
    }

    public static String f(int i2) {
        return i2 != 0 ? c(i2).d() : "Apenas demonstração, não há item.";
    }
}
