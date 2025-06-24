package net.fdgames.Rules;

import com.badlogic.gdx.Gdx;
import d.a.a.a.a;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class Plants {
    public static ArrayList a = new ArrayList();

    public static Plant a(String str) {
        Iterator it = a.iterator();
        while (it.hasNext()) {
            Plant plant = (Plant) it.next();
            if (plant.ID.equals(str)) {
                return plant;
            }
        }
        return null;
    }

    public static void a() {
        a = new ArrayList();
        String[] a2 = a.a(Gdx.files, "data/rules/plants.txt", "\n");
        for (int i = 0; i < a2.length; i++) {
            a2[i] = a2[i].replace("\n", "");
            a2[i] = a2[i].replace("\r", "");
            String[] split = a2[i].split("\t", -1);
            a.add(new Plant(split[0], split[1], split[2]));
        }
    }
}
