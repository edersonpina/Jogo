package net.fdgames.Rules;

import d.a.a.a.a;
import e.a.d.e.h;
import java.util.Locale;
import net.fdgames.Helpers.FDUtils;
import net.fdgames.Helpers.GameString;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class ItemAttributes {
    public int antirad;
    public int arcane;
    public int banishing;
    public int beast_slayer;
    public int blessed;
    public int cover;
    public int detection;
    public int emp;
    public int gossip;
    public boolean hasAttributes;
    public int holy;
    public int offhand;
    public int orb;
    public int orc_slayer;
    public int paralysis;
    public int shield;
    public int silver;
    public int slow;
    public int stability;
    public int staff;
    public int stun;
    public int stunimmunity;
    public int tinkering;
    public int vicious;
    public int vorpal;
    public int wand;
    public int wisdom;

    public ItemAttributes(String str) {
        this.hasAttributes = false;
        if (str.trim() == "") {
            return;
        }
        this.hasAttributes = true;
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        if (lowerCase.contains("[orcslayer,1]")) {
            this.orc_slayer = 1;
        }
        if (lowerCase.contains("[orcslayer,2]")) {
            this.orc_slayer = 2;
        }
        if (lowerCase.contains("[orcslayer,3]")) {
            this.orc_slayer = 3;
        }
        if (lowerCase.contains("[orcslayer,4]")) {
            this.orc_slayer = 4;
        }
        if (lowerCase.contains("[orcslayer,5]")) {
            this.orc_slayer = 5;
        }
        if (lowerCase.contains("[arcane,1]")) {
            this.arcane = 1;
        }
        if (lowerCase.contains("[arcane,2]")) {
            this.arcane = 2;
        }
        if (lowerCase.contains("[arcane,3]")) {
            this.arcane = 3;
        }
        if (lowerCase.contains("[arcane,4]")) {
            this.arcane = 4;
        }
        if (lowerCase.contains("[arcane,5]")) {
            this.arcane = 5;
        }
        if (lowerCase.contains("[holy,1]")) {
            this.holy = 1;
        }
        if (lowerCase.contains("[holy,2]")) {
            this.holy = 2;
        }
        if (lowerCase.contains("[holy,3]")) {
            this.holy = 3;
        }
        if (lowerCase.contains("[holy,4]")) {
            this.holy = 4;
        }
        if (lowerCase.contains("[holy,5]")) {
            this.holy = 5;
        }
        if (lowerCase.contains("[emp,1]")) {
            this.emp = 1;
        }
        if (lowerCase.contains("[emp,2]")) {
            this.emp = 2;
        }
        if (lowerCase.contains("[emp,3]")) {
            this.emp = 3;
        }
        if (lowerCase.contains("[banishing,1]")) {
            this.banishing = 1;
        }
        if (lowerCase.contains("[banishing,2]")) {
            this.banishing = 2;
        }
        if (lowerCase.contains("[banishing,3]")) {
            this.banishing = 3;
        }
        if (lowerCase.contains("[banishing,4]")) {
            this.banishing = 4;
        }
        if (lowerCase.contains("[banishing,5]")) {
            this.banishing = 5;
        }
        if (lowerCase.contains("[beastslayer,1]")) {
            this.beast_slayer = 1;
        }
        if (lowerCase.contains("[beastslayer,2]")) {
            this.beast_slayer = 2;
        }
        if (lowerCase.contains("[beastslayer,3]")) {
            this.beast_slayer = 3;
        }
        if (lowerCase.contains("[beastslayer,4]")) {
            this.beast_slayer = 4;
        }
        if (lowerCase.contains("[beastslayer,5]")) {
            this.beast_slayer = 5;
        }
        if (lowerCase.contains("[slow,1]")) {
            this.slow = 1;
        }
        if (lowerCase.contains("[slow,2]")) {
            this.slow = 2;
        }
        if (lowerCase.contains("[slow,3]")) {
            this.slow = 3;
        }
        if (lowerCase.contains("[slow,4]")) {
            this.slow = 4;
        }
        if (lowerCase.contains("[slow,5]")) {
            this.slow = 5;
        }
        if (lowerCase.contains("[stun,1]")) {
            this.stun = 1;
        }
        if (lowerCase.contains("[stun,2]")) {
            this.stun = 2;
        }
        if (lowerCase.contains("[stun,3]")) {
            this.stun = 3;
        }
        if (lowerCase.contains("[stun,4]")) {
            this.stun = 4;
        }
        if (lowerCase.contains("[stun,5]")) {
            this.stun = 5;
        }
        if (lowerCase.contains("[paralysis,1]")) {
            this.paralysis = 1;
        }
        if (lowerCase.contains("[paralysis,2]")) {
            this.paralysis = 2;
        }
        if (lowerCase.contains("[paralysis,3]")) {
            this.paralysis = 3;
        }
        if (lowerCase.contains("[paralysis,4]")) {
            this.paralysis = 4;
        }
        if (lowerCase.contains("[paralysis,5]")) {
            this.paralysis = 5;
        }
        if (lowerCase.contains("[vorpal]")) {
            this.vorpal = 1;
        }
        if (lowerCase.contains("[vorpal,1]")) {
            this.vorpal = 1;
        }
        if (lowerCase.contains("[vorpal,2]")) {
            this.vorpal = 2;
        }
        if (lowerCase.contains("[vorpal,3]")) {
            this.vorpal = 3;
        }
        if (lowerCase.contains("[vorpal,4]")) {
            this.vorpal = 4;
        }
        if (lowerCase.contains("[vorpal,5]")) {
            this.vorpal = 5;
        }
        if (lowerCase.contains("[silver]")) {
            this.silver = 1;
        }
        if (lowerCase.contains("[stability]")) {
            this.stability = 1;
        }
        if (lowerCase.contains("[stunimmunity]")) {
            this.stunimmunity = 1;
        }
        if (lowerCase.contains("[rad]")) {
            this.antirad = 1;
        }
        if (lowerCase.contains("[wand]")) {
            this.wand = 1;
        }
        if (lowerCase.contains("[staff]")) {
            this.staff = 1;
        }
        if (lowerCase.contains("[vicious,1]")) {
            this.vicious = 1;
        }
        if (lowerCase.contains("[vicious,2]")) {
            this.vicious = 2;
        }
        if (lowerCase.contains("[vicious,3]")) {
            this.vicious = 3;
        }
        if (lowerCase.contains("[detection,1]")) {
            this.detection = 1;
        }
        if (lowerCase.contains("[detection,2]")) {
            this.detection = 2;
        }
        if (lowerCase.contains("[detection,3]")) {
            this.detection = 3;
        }
        if (lowerCase.contains("[tinkering,1]")) {
            this.tinkering = 1;
        }
        if (lowerCase.contains("[tinkering,2]")) {
            this.tinkering = 2;
        }
        if (lowerCase.contains("[tinkering,3]")) {
            this.tinkering = 3;
        }
        if (lowerCase.contains("[gossip,1]")) {
            this.gossip = 1;
        }
        if (lowerCase.contains("[gossip,2]")) {
            this.gossip = 2;
        }
        if (lowerCase.contains("[gossip,3]")) {
            this.gossip = 3;
        }
        if (lowerCase.contains("[wisdom,1]")) {
            this.wisdom = 1;
        }
        if (lowerCase.contains("[wisdom,2]")) {
            this.wisdom = 2;
        }
        if (lowerCase.contains("[wisdom,3]")) {
            this.wisdom = 3;
        }
        if (lowerCase.contains("[wisdom,4]")) {
            this.wisdom = 4;
        }
        if (lowerCase.contains("[wisdom,5]")) {
            this.wisdom = 5;
        }
        if (lowerCase.contains("[blessed,1]")) {
            this.blessed = 1;
        }
        if (lowerCase.contains("[blessed,2]")) {
            this.blessed = 2;
        }
        if (lowerCase.contains("[blessed,3]")) {
            this.blessed = 3;
        }
        if (lowerCase.contains("[cover,1]")) {
            this.cover = 1;
        }
        if (lowerCase.contains("[cover,2]")) {
            this.cover = 2;
        }
        if (lowerCase.contains("[cover,3]")) {
            this.cover = 3;
        }
        if (lowerCase.contains("[arcane,1]")) {
            this.arcane = 1;
        }
        if (lowerCase.contains("[arcane,2]")) {
            this.arcane = 2;
        }
        if (lowerCase.contains("[arcane,3]")) {
            this.arcane = 3;
        }
        if (lowerCase.contains("[shield]")) {
            this.shield = 1;
        }
        if (lowerCase.contains("[offhand]")) {
            this.offhand = 1;
        }
        if (lowerCase.contains("[orb]")) {
            this.orb = 1;
        }
    }

    public String a() {
        String str = "";
        if (this.orc_slayer > 0) {
            StringBuilder b = a.b("", "[BLUE]");
            b.append(h.c(this.orc_slayer * 2));
            b.append("[]");
            b.append(GameString.a("DAMAGE_ORCSLAYER"));
            b.append("\r\n");
            str = b.toString();
        }
        if (this.holy > 0) {
            StringBuilder b2 = a.b(str, "[BLUE]");
            b2.append(h.c(this.holy * 2));
            b2.append("[]");
            b2.append(GameString.a("DAMAGE_HOLY"));
            b2.append("\r\n");
            str = b2.toString();
        }
        if (this.banishing > 0) {
            StringBuilder b3 = a.b(str, "[BLUE]");
            b3.append(h.c(this.banishing * 2));
            b3.append("[]");
            b3.append(GameString.a("DAMAGE_BANISHING"));
            b3.append("\r\n");
            str = b3.toString();
        }
        if (this.beast_slayer > 0) {
            StringBuilder b4 = a.b(str, "[BLUE]");
            b4.append(h.c(this.beast_slayer * 2));
            b4.append("[]");
            b4.append(GameString.a("DAMAGE_BEASTSLAYER"));
            b4.append("\r\n");
            str = b4.toString();
        }
        if (this.vicious <= 0) {
            return str;
        }
        StringBuilder b5 = a.b(str, "[BLUE]");
        b5.append(h.c(this.vicious * 2));
        b5.append("[]");
        b5.append(GameString.a("DAMAGE_VICIOUS"));
        b5.append("\r\n");
        return b5.toString();
    }

    public String b() {
        String str;
        if (this.orc_slayer > 0) {
            StringBuilder a = a.a("");
            a.b("ITEM_ORCSLAYER", a, " ");
            a.append(FDUtils.a(this.orc_slayer));
            str = a.toString();
        } else {
            str = "";
        }
        if (this.arcane > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a2 = a.a(str);
            a.b("ITEM_ARCANE", a2, " ");
            a2.append(FDUtils.a(this.arcane));
            str = a2.toString();
        }
        if (this.shield > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a3 = a.a(str);
            a3.append(GameString.a("ITEM_SHIELD"));
            str = a3.toString();
        }
        if (this.offhand > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a4 = a.a(str);
            a4.append(GameString.a("ITEM_OFFHAND"));
            str = a4.toString();
        }
        if (this.orb > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a5 = a.a(str);
            a5.append(GameString.a("ITEM_OFFHAND"));
            str = a5.toString();
        }
        if (this.holy > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a6 = a.a(str);
            a.b("ITEM_HOLY", a6, " ");
            a6.append(FDUtils.a(this.holy));
            str = a6.toString();
        }
        if (this.emp > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a7 = a.a(str);
            a.b("ITEM_EMP", a7, " ");
            a7.append(FDUtils.a(this.emp));
            str = a7.toString();
        }
        if (this.antirad > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a8 = a.a(str);
            a8.append(GameString.a("ITEM_RAD"));
            str = a8.toString();
        }
        if (this.banishing > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a9 = a.a(str);
            a.b("ITEM_BANISHING", a9, " ");
            a9.append(FDUtils.a(this.banishing));
            str = a9.toString();
        }
        if (this.beast_slayer > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a10 = a.a(str);
            a.b("ITEM_BEASTSLAYER", a10, " ");
            a10.append(FDUtils.a(this.beast_slayer));
            str = a10.toString();
        }
        if (this.slow > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a11 = a.a(str);
            a.b("ITEM_SLOW", a11, " ");
            a11.append(FDUtils.a(this.slow));
            str = a11.toString();
        }
        if (this.stun > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a12 = a.a(str);
            a.b("ITEM_STUN", a12, " ");
            a12.append(FDUtils.a(this.stun));
            str = a12.toString();
        }
        if (this.paralysis > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a13 = a.a(str);
            a.b("ITEM_PARALYSIS", a13, " ");
            a13.append(FDUtils.a(this.paralysis));
            str = a13.toString();
        }
        if (this.vorpal > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a14 = a.a(str);
            a.b("ITEM_VORPAL", a14, " ");
            a14.append(FDUtils.a(this.vorpal));
            str = a14.toString();
        }
        if (this.silver > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a15 = a.a(str);
            a15.append(GameString.a("ITEM_SILVER"));
            str = a15.toString();
        }
        if (this.stability > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a16 = a.a(str);
            a16.append(GameString.a("ITEM_STABILITY"));
            str = a16.toString();
        }
        if (this.stunimmunity > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a17 = a.a(str);
            a17.append(GameString.a("ITEM_STUNIMMUNITY"));
            str = a17.toString();
        }
        if (this.vicious > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a18 = a.a(str);
            a.b("ITEM_VICIOUS", a18, " ");
            a18.append(FDUtils.a(this.vicious));
            str = a18.toString();
        }
        if (this.detection > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a19 = a.a(str);
            a.b("ITEM_DETECTION", a19, " ");
            a19.append(FDUtils.a(this.detection));
            str = a19.toString();
        }
        if (this.gossip > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a20 = a.a(str);
            a.b("ITEM_GOSSIP", a20, " ");
            a20.append(FDUtils.a(this.gossip));
            str = a20.toString();
        }
        if (this.tinkering > 0) {
            if (str != "") {
                str = a.a(str, ", ");
            }
            StringBuilder a21 = a.a(str);
            a.b("ITEM_TINKERING", a21, " ");
            a21.append(FDUtils.a(this.tinkering));
            str = a21.toString();
        }
        if (this.wisdom <= 0) {
            return str;
        }
        if (str != "") {
            str = a.a(str, ", ");
        }
        StringBuilder a22 = a.a(str);
        a.b("ITEM_WISDOM", a22, " ");
        a22.append(FDUtils.a(this.wisdom));
        return a22.toString();
    }

    public int c() {
        int i = this.detection;
        if (i > 0) {
            return i * 3;
        }
        return 0;
    }

    public int d() {
        int i = this.tinkering;
        if (i > 0) {
            return i * 5;
        }
        return 0;
    }

    public String e() {
        String str;
        if (this.orc_slayer > 0) {
            StringBuilder a = a.a("[BLUE]");
            a.b("ITEM_ORCSLAYER", a, " ");
            a.append(FDUtils.a(this.orc_slayer));
            a.append(":[] ");
            String a2 = GameString.a("DESC_ITEM_ORCSLAYER");
            StringBuilder a3 = a.a("");
            a3.append(this.orc_slayer * 2);
            a.append(a2.replace("{r}", a3.toString()));
            str = a.toString();
        } else {
            str = "";
        }
        if (this.offhand > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b = a.b(str, "[BLUE]");
            b.append(GameString.a("ITEM_OFFHAND"));
            b.append(":[] ");
            b.append(GameString.a("DESC_ITEM_OFFHAND"));
            str = b.toString();
        }
        if (this.orb > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b2 = a.b(str, "[BLUE]");
            b2.append(GameString.a("ITEM_OFFHAND"));
            b2.append(":[] ");
            b2.append(GameString.a("DESC_ITEM_OFFHAND_ORB"));
            str = b2.toString();
        }
        if (this.arcane > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b3 = a.b(str, "[BLUE]");
            a.b("ITEM_ARCANE", b3, " ");
            b3.append(FDUtils.a(this.arcane));
            b3.append(":[] ");
            String a4 = GameString.a("DESC_ITEM_ARCANE");
            StringBuilder a5 = a.a("");
            a5.append(this.arcane);
            b3.append(a4.replace("{r}", a5.toString()));
            str = b3.toString();
        }
        if (this.holy > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b4 = a.b(str, "[BLUE]");
            a.b("ITEM_HOLY", b4, " ");
            b4.append(FDUtils.a(this.holy));
            b4.append(":[] ");
            String a6 = GameString.a("DESC_ITEM_HOLY");
            StringBuilder a7 = a.a("");
            a7.append(this.holy * 2);
            b4.append(a6.replace("{r}", a7.toString()));
            str = b4.toString();
        }
        if (this.banishing > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b5 = a.b(str, "[BLUE]");
            a.b("ITEM_BANISHING", b5, " ");
            b5.append(FDUtils.a(this.banishing));
            b5.append(":[] ");
            String a8 = GameString.a("DESC_ITEM_BANISHING");
            StringBuilder a9 = a.a("");
            a9.append(this.banishing * 2);
            b5.append(a8.replace("{r}", a9.toString()));
            str = b5.toString();
        }
        if (this.emp > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b6 = a.b(str, "[BLUE]");
            a.b("ITEM_EMP", b6, " ");
            b6.append(FDUtils.a(this.emp));
            b6.append(":[] ");
            String a10 = GameString.a("DESC_ITEM_EMP");
            StringBuilder a11 = a.a("");
            int i = this.emp;
            a11.append(i == 1 ? 12 : i == 2 ? 16 : 20);
            b6.append(a10.replace("{r}", a11.toString()));
            str = b6.toString();
        }
        if (this.beast_slayer > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b7 = a.b(str, "[BLUE]");
            a.b("ITEM_BEASTSLAYER", b7, " ");
            b7.append(FDUtils.a(this.beast_slayer));
            b7.append(":[] ");
            String a12 = GameString.a("DESC_ITEM_BEASTSLAYER");
            StringBuilder a13 = a.a("");
            a13.append(this.beast_slayer * 2);
            b7.append(a12.replace("{r}", a13.toString()));
            str = b7.toString();
        }
        if (this.slow > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b8 = a.b(str, "[BLUE]");
            a.b("ITEM_SLOW", b8, " ");
            b8.append(FDUtils.a(this.slow));
            b8.append(":[] ");
            b8.append(GameString.a("DESC_ITEM_SLOW1"));
            str = b8.toString();
        }
        if (this.paralysis == 1) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b9 = a.b(str, "[BLUE]");
            a.b("ITEM_PARALYSIS", b9, " ");
            b9.append(FDUtils.a(this.paralysis));
            b9.append(":[] ");
            b9.append(GameString.a("DESC_ITEM_PARALYSIS1"));
            str = b9.toString();
        }
        if (this.stun == 1) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b10 = a.b(str, "[BLUE]");
            a.b("ITEM_STUN", b10, " ");
            b10.append(FDUtils.a(this.stun));
            b10.append(":[] ");
            b10.append(GameString.a("DESC_ITEM_STUN1"));
            str = b10.toString();
        }
        if (this.stun == 2) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b11 = a.b(str, "[BLUE]");
            a.b("ITEM_STUN", b11, " ");
            b11.append(FDUtils.a(this.stun));
            b11.append(":[] ");
            b11.append(GameString.a("DESC_ITEM_STUN2"));
            str = b11.toString();
        }
        if (this.vorpal > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b12 = a.b(str, "[BLUE]");
            a.b("ITEM_VORPAL", b12, " ");
            b12.append(FDUtils.a(this.vorpal));
            b12.append(":[] ");
            b12.append(GameString.a("DESC_ITEM_VORPAL"));
            str = b12.toString();
        }
        if (this.silver > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b13 = a.b(str, "[BLUE]");
            b13.append(GameString.a("ITEM_SILVER"));
            b13.append(":[] ");
            b13.append(GameString.a("DESC_ITEM_SILVER"));
            str = b13.toString();
        }
        if (this.stability > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b14 = a.b(str, "[BLUE]");
            b14.append(GameString.a("ITEM_STABILITY"));
            b14.append(":[] ");
            b14.append(GameString.a("DESC_ITEM_STABILITY"));
            str = b14.toString();
        }
        if (this.antirad > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b15 = a.b(str, "[BLUE]");
            b15.append(GameString.a("ITEM_RAD"));
            b15.append(":[] ");
            b15.append(GameString.a("DESC_ITEM_ANTIRAD"));
            str = b15.toString();
        }
        if (this.stunimmunity > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b16 = a.b(str, "[BLUE]");
            b16.append(GameString.a("ITEM_STUNIMMUNITY"));
            b16.append(":[] ");
            b16.append(GameString.a("DESC_ITEM_STUNIMMUNITY"));
            str = b16.toString();
        }
        if (this.vicious > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b17 = a.b(str, "[BLUE]");
            a.b("ITEM_VICIOUS", b17, " ");
            b17.append(FDUtils.a(this.vicious));
            b17.append(":[] ");
            String a14 = GameString.a("DESC_ITEM_VICIOUS");
            StringBuilder a15 = a.a("");
            a15.append(this.vicious * 2);
            b17.append(a14.replace("{r}", a15.toString()));
            str = b17.toString();
        }
        if (this.detection > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b18 = a.b(str, "[BLUE]");
            a.b("ITEM_DETECTION", b18, " ");
            b18.append(FDUtils.a(this.detection));
            b18.append(":[] ");
            String a16 = GameString.a("DESC_ITEM_DETECTION");
            StringBuilder a17 = a.a("");
            a17.append(this.detection * 3);
            b18.append(a16.replace("{r}", a17.toString()));
            str = b18.toString();
        }
        if (this.wisdom > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b19 = a.b(str, "[BLUE]");
            a.b("ITEM_WISDOM", b19, " ");
            b19.append(FDUtils.a(this.wisdom));
            b19.append(":[] ");
            String a18 = GameString.a("DESC_ITEM_WISDOM");
            StringBuilder a19 = a.a("");
            a19.append(this.wisdom * 2);
            b19.append(a18.replace("{r}", a19.toString()));
            str = b19.toString();
        }
        if (this.gossip > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b20 = a.b(str, "[BLUE]");
            a.b("ITEM_GOSSIP", b20, " ");
            b20.append(FDUtils.a(this.gossip));
            b20.append(":[] ");
            String a20 = GameString.a("DESC_ITEM_GOSSIP");
            StringBuilder a21 = a.a("");
            a21.append(this.gossip * 3);
            b20.append(a20.replace("{r}", a21.toString()));
            str = b20.toString();
        }
        if (this.tinkering > 0) {
            if (str != "") {
                str = a.a(str, "\r\n\r\n");
            }
            StringBuilder b21 = a.b(str, "[BLUE]");
            a.b("ITEM_TINKERING", b21, " ");
            b21.append(FDUtils.a(this.tinkering));
            b21.append(":[] ");
            String a22 = GameString.a("DESC_ITEM_TINKERING");
            StringBuilder a23 = a.a("");
            a23.append(this.tinkering * 5);
            b21.append(a22.replace("{r}", a23.toString()));
            str = b21.toString();
        }
        if (this.shield <= 0) {
            return str;
        }
        if (str != "") {
            str = a.a(str, "\r\n\r\n");
        }
        StringBuilder b22 = a.b(str, "[BLUE]");
        b22.append(GameString.a("ITEM_SHIELD"));
        b22.append(":[] ");
        b22.append(GameString.a("DESC_ITEM_SHIELD"));
        return b22.toString();
    }

    public int f() {
        int i = this.gossip;
        if (i > 0) {
            return i * 3;
        }
        return 0;
    }

    public int g() {
        int i = this.wisdom;
        if (i > 0) {
            return i * 2;
        }
        return 0;
    }
}
