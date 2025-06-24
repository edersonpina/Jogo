package net.fdgames.Rules;

import net.fdgames.GameLogic.ConditionsSet;
import net.fdgames.GameWorld.GameData;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class LootItem {
    public int chance;
    public ConditionsSet conditions;
    public int item_ID;
    public String table;

    public LootItem(String str, int i, int i2, String str2) {
        this.table = str;
        this.item_ID = i;
        this.chance = i2;
        this.conditions = new ConditionsSet(str2);
    }

    public Boolean a() {
        return GameData.O().m() <= this.chance;
    }
}
