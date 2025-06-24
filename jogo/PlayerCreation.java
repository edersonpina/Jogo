package net.fdgames.Rules;

import net.fdgames.GameEntities.Character;
import net.fdgames.Rules.Rules;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class PlayerCreation {
    public Rules.CharacterClass charClass;
    public int difficulty;
    public Character.Gender gender;
    public String name;
    public int portraitIndex;

    public PlayerCreation(String str, int i, Character.Gender gender, Rules.CharacterClass characterClass, int i2) {
        this.name = str;
        this.portraitIndex = i;
        this.gender = gender;
        this.charClass = characterClass;
        this.difficulty = i2;
    }
}
