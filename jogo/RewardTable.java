package net.fdgames.Rules;

import com.badlogic.gdx.Gdx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class RewardTable {
    String id;
    private ArrayList rewards = new ArrayList();

    public RewardTable(String str) {
        this.id = str;
        String[] split = Gdx.files.internal("data/rules/rewards/" + str + ".txt").readString().split("\n");
        for (int i = 1; i < split.length; i++) {
            split[i] = split[i].replace("\n", "");
            split[i] = split[i].replace("\r", "");
            String[] split2 = split[i].split("\t", -1);
            Reward reward = new Reward();
            reward.level = Integer.parseInt(split2[0].toLowerCase(Locale.ENGLISH).trim());
            reward.item_id = Integer.parseInt(split2[1].toLowerCase(Locale.ENGLISH).trim());
            this.rewards.add(reward);
        }
    }

    public String a(int i) {
        Iterator it = this.rewards.iterator();
        while (it.hasNext()) {
            Reward reward = (Reward) it.next();
            if (reward.level == i) {
                return reward.a();
            }
        }
        return "";
    }

    public void b(int i) {
        Iterator it = this.rewards.iterator();
        while (it.hasNext()) {
            Reward reward = (Reward) it.next();
            if (reward.level == i) {
                reward.b();
                return;
            }
        }
    }
}
