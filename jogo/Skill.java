package net.fdgames.Rules;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import d.a.a.a.a;
import java.util.ArrayList;
import java.util.Locale;
import net.fdgames.GameEntities.CharacterSheet.CharacterSheet;
import net.fdgames.GameLogic.PlayerRequirements;
import net.fdgames.GameLogic.SkillRequirements;
import net.fdgames.Rules.Rules;
import net.fdgames.assets.Assets;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class Skill {
    public boolean NPCSkill;
    public boolean advanced;
    private String baseDescription;
    public String id;
    public ArrayList levels;
    private String name;
    public boolean requiresMelee;
    public boolean requiresRanged;
    public ClassRestriction skillClass;
    public SkillRequirements skillsRequired;
    public PlayerRequirements traitsRequired;
    public SKILL_TYPE type;

    public enum SKILL_TYPE {
        SKILL_ACTIVE,
        SKILL_PASSIVE
    }

    public Skill(String str, String str2, String str3, SKILL_TYPE skill_type, String str4, Boolean bool, boolean z, boolean z2, boolean z3) {
        this.levels = new ArrayList();
        this.id = str.toLowerCase(Locale.ENGLISH).trim().replace(" ", "_").replace("'", "");
        this.name = str2.replace("ecission", "ecision");
        this.type = skill_type;
        this.skillClass = new ClassRestriction(str4);
        this.baseDescription = str3;
        this.NPCSkill = bool.booleanValue();
        this.requiresMelee = z;
        this.requiresRanged = z2;
        this.advanced = z3;
        this.levels = new ArrayList();
    }

    public Boolean a(Rules.CharacterClass characterClass) {
        return this.skillClass.a(characterClass).booleanValue();
    }

    public String a() {
        return this.baseDescription;
    }

    public SkillLevel a(int i) {
        if (i < 0 || i > this.levels.size() - 1) {
            return null;
        }
        return (SkillLevel) this.levels.get(i);
    }

    public void a(String str) {
        if (str.trim().equals("")) {
            return;
        }
        this.skillsRequired = new SkillRequirements(str);
    }

    public void a(String str, int i, String str2, String str3) {
        if (this.levels.size() == 0) {
            this.levels.add(new SkillLevel(b(), "", 0, "", str3));
        }
        String str4 = this.levels.size() == 1 ? "I" : "";
        if (this.levels.size() == 2) {
            str4 = "II";
        }
        if (this.levels.size() == 3) {
            str4 = "III";
        }
        if (this.levels.size() == 4) {
            str4 = "IV";
        }
        if (this.levels.size() == 5) {
            str4 = "V";
        }
        this.levels.add(new SkillLevel(b() + " " + str4, str, i, str2, str3));
    }

    public boolean a(CharacterSheet characterSheet) {
        if (!this.advanced) {
            return true;
        }
        PlayerRequirements playerRequirements = this.traitsRequired;
        if (playerRequirements != null && !playerRequirements.a(characterSheet, true)) {
            return false;
        }
        SkillRequirements skillRequirements = this.skillsRequired;
        return (skillRequirements == null || skillRequirements.a(characterSheet)) && this.skillClass.a(characterSheet.n()).booleanValue();
    }

    public String b() {
        return this.name;
    }

    public String b(CharacterSheet characterSheet) {
        PlayerRequirements playerRequirements = this.traitsRequired;
        String a = playerRequirements == null ? "" : playerRequirements.a(characterSheet);
        SkillRequirements skillRequirements = this.skillsRequired;
        String b = skillRequirements == null ? "" : skillRequirements.b(characterSheet);
        return (a.equals("") && b.equals("")) ? a.a("NONE", a.a("[BLACK]"), "[]") : (a.equals("") || b.equals("")) ? a.a(a, b) : a.a(a, ", ", b);
    }

    public void b(String str) {
        this.traitsRequired = new PlayerRequirements(str);
    }

    public TextureRegion c() {
        return Assets.b(this.id.toLowerCase(Locale.ENGLISH).replace("'", ""));
    }

    public boolean d() {
        return this.type == SKILL_TYPE.SKILL_ACTIVE;
    }

    public int e() {
        return this.levels.size() - 1;
    }
}
