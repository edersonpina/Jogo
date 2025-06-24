package net.fdgames.Rules;

import d.a.a.a.a;
import net.fdgames.GameWorld.GameData;
import net.fdgames.Helpers.GameString;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class Reward {
    int item_id;
    int level;

    public String a() {
        int i = this.item_id;
        if (i > 0) {
            return Rules.d(i);
        }
        if (i >= 0) {
            return "";
        }
        StringBuilder a = a.a("");
        a.append(-this.item_id);
        a.append(" ");
        a.append(GameString.a("GOLD_COINS"));
        return a.toString();
    }

    public void b() {
        if (this.item_id > 0) {
            GameData.O().backpack.a(this.item_id);
        }
        if (this.item_id < 0) {
            GameData.O().player.s(-this.item_id);
            GameData.O().log.a(-this.item_id);
        }
    }
}
