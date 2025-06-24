package net.fdgames.Rules;

import net.fdgames.Helpers.FDUtils;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class Plant {
    public String ID;
    public int chance;
    public int item_ID;

    public Plant(String str, String str2, String str3) {
        this.ID = str;
        this.item_ID = Integer.parseInt(str2);
        this.chance = Integer.parseInt(str3);
    }

    public boolean a() {
        return FDUtils.a(1, 100) < this.chance;
    }
}
