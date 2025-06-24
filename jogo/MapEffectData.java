package net.fdgames.Rules;

import com.badlogic.gdx.Gdx;
import java.util.ArrayList;
import net.fdgames.GameEntities.Helpers.Damage;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class MapEffectData {
    private ArrayList effects = new ArrayList();

    public class MapEffectDataLine {
        public int damage;
        public Damage.DamageType dmgType;
        public float duration;
        public String effect;
        public float fadeInDuration;
        public float fadeOutDuration;
        public String id;
        public String name;
        public String name_ES;
        public int range;
        public String sprite;

        public MapEffectDataLine(String str) {
            String[] split = str.replace("\"", "").split("\t", -1);
            this.id = split[0];
            this.name = split[1];
            this.name_ES = split[2];
            this.damage = Integer.parseInt(split[3]);
            this.dmgType = Damage.a(split[4]);
            this.range = Integer.parseInt(split[5]);
            this.duration = Float.parseFloat(split[6]);
            this.sprite = split[7];
            this.effect = split[8];
            this.fadeInDuration = Float.parseFloat(split[9]);
            this.fadeOutDuration = Float.parseFloat(split[10]);
        }
    }

    public MapEffectData() {
        String[] split = Gdx.files.internal("data/rules/map_effects.txt").readString("UTF-8").split("\n");
        for (int i = 1; i < split.length; i++) {
            split[i] = split[i].replace("\n", "");
            split[i] = split[i].replace("\r", "");
            this.effects.add(new MapEffectDataLine(split[i]));
        }
    }

    public MapEffectDataLine a(String str) {
        for (int i = 0; i < this.effects.size(); i++) {
            if (((MapEffectDataLine) this.effects.get(i)).id.equals(str)) {
                return (MapEffectDataLine) this.effects.get(i);
            }
        }
        System.out.println("effect '" + str + "' not found");
        return null;
    }
}
