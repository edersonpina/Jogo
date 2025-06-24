package net.fdgames.Rules;

import d.a.a.a.a;
import java.util.HashSet;
import net.fdgames.GameEntities.CharacterSheet.CharacterSheet;
import net.fdgames.Helpers.GameString;
import net.fdgames.Rules.Rules;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class ClassRestriction {
    private HashSet classes = new HashSet();

    public ClassRestriction(String str) {
        if (str.contains("G")) {
            this.classes.add(Rules.CharacterClass.g);
        }
        if (str.contains("W")) {
            this.classes.add(Rules.CharacterClass.b);
        }
        if (str.contains("R")) {
            this.classes.add(Rules.CharacterClass.c);
        }
        if (str.contains("M")) {
            this.classes.add(Rules.CharacterClass.e);
        }
        if (str.contains("C")) {
            this.classes.add(Rules.CharacterClass.d);
        }
        if (str.contains("X")) {
            this.classes.add(Rules.CharacterClass.h);
        }
    }

    public Boolean a(Rules.CharacterClass characterClass) {
        return this.classes.size() == 0 || this.classes.contains(characterClass);
    }

    public String a() {
        String str;
        if (this.classes.contains(Rules.CharacterClass.b)) {
            StringBuilder a = a.a("");
            a.append(Rules.CharacterClass.a(Rules.CharacterClass.b));
            str = a.toString();
        } else {
            str = "";
        }
        if (this.classes.contains(Rules.CharacterClass.c)) {
            if (!str.equals("")) {
                str = a.a(str, ", ");
            }
            StringBuilder a2 = a.a(str);
            a2.append(Rules.CharacterClass.a(Rules.CharacterClass.c));
            str = a2.toString();
        }
        if (this.classes.contains(Rules.CharacterClass.d)) {
            if (!str.equals("")) {
                str = a.a(str, ", ");
            }
            StringBuilder a3 = a.a(str);
            a3.append(Rules.CharacterClass.a(Rules.CharacterClass.d));
            str = a3.toString();
        }
        if (this.classes.contains(Rules.CharacterClass.e)) {
            if (!str.equals("")) {
                str = a.a(str, ", ");
            }
            StringBuilder a4 = a.a(str);
            a4.append(Rules.CharacterClass.a(Rules.CharacterClass.e));
            str = a4.toString();
        }
        return str.equals("") ? GameString.a("CLASS_ALL") : str;
    }

    public String a(CharacterSheet characterSheet) {
        String str;
        if (characterSheet == null) {
            return "";
        }
        if (this.classes.contains(Rules.CharacterClass.b)) {
            StringBuilder a = a.a("");
            a.append(Rules.CharacterClass.a(Rules.CharacterClass.b));
            str = a.toString();
        } else {
            str = "";
        }
        if (this.classes.contains(Rules.CharacterClass.c)) {
            if (!str.equals("")) {
                str = a.a(str, ", ");
            }
            StringBuilder a2 = a.a(str);
            a2.append(Rules.CharacterClass.a(Rules.CharacterClass.c));
            str = a2.toString();
        }
        if (this.classes.contains(Rules.CharacterClass.d)) {
            if (!str.equals("")) {
                str = a.a(str, ", ");
            }
            StringBuilder a3 = a.a(str);
            a3.append(Rules.CharacterClass.a(Rules.CharacterClass.d));
            str = a3.toString();
        }
        if (this.classes.contains(Rules.CharacterClass.e)) {
            if (!str.equals("")) {
                str = a.a(str, ", ");
            }
            StringBuilder a4 = a.a(str);
            a4.append(Rules.CharacterClass.a(Rules.CharacterClass.e));
            str = a4.toString();
        }
        if (str.equals("")) {
            return a.a("[BLACK]", "All[]");
        }
        return a.a(a(characterSheet.n()).booleanValue() ? "[BLACK]" : "[RED]", str, "[]");
    }
}
