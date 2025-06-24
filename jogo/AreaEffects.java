package net.fdgames.Rules;

import e.a.a.a;
import e.a.c.b;
import net.fdgames.GameEntities.Final.MapEffectEntity;
import net.fdgames.GameLevel.GameLevelData;
import net.fdgames.Helpers.FDUtils;
import net.fdgames.assets.GameAssets;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.ralexander.reforged/classes.dex */
public class AreaEffects {
    public static void a(int i, int i2, int i3, int i4) {
        String str = i4 == 2 ? "combustion_weak_2" : "combustion_weak_1";
        if (i4 == 3) {
            str = "combustion_weak_3";
        }
        a.h().a(i, i2, "fire", 0, 0.8f);
        int i5 = i + 32;
        String str2 = str;
        a(i5, i2, i3, str2, 0.0f, 0.0f);
        int i6 = i - 32;
        a(i6, i2, i3, str2, 0.0f, 0.0f);
        int i7 = i2 + 32;
        a(i, i7, i3, str2, 0.0f, 0.0f);
        int i8 = i2 - 32;
        a(i, i8, i3, str2, 0.0f, 0.0f);
        a(i5, i7, i3, str2, 0.0f, 0.0f);
        a(i6, i8, i3, str2, 0.0f, 0.0f);
        a(i6, i7, i3, str2, 0.0f, 0.0f);
        a(i5, i8, i3, str2, 0.0f, 0.0f);
        int i9 = i + 64;
        a(i9, i7, i3, str2, 0.0f, 0.0f);
        a(i9, i2, i3, str2, 0.0f, 0.0f);
        a(i9, i8, i3, str2, 0.0f, 0.0f);
        int i10 = i - 64;
        a(i10, i7, i3, str2, 0.0f, 0.0f);
        a(i10, i2, i3, str2, 0.0f, 0.0f);
        a(i10, i8, i3, str2, 0.0f, 0.0f);
        int i11 = i2 + 64;
        a(i6, i11, i3, str2, 0.0f, 0.0f);
        a(i, i11, i3, str2, 0.0f, 0.0f);
        a(i5, i11, i3, str2, 0.0f, 0.0f);
        int i12 = i2 - 64;
        a(i6, i12, i3, str2, 0.0f, 0.0f);
        a(i, i12, i3, str2, 0.0f, 0.0f);
        a(i5, i12, i3, str2, 0.0f, 0.0f);
        GameAssets.i("explo");
    }

    public static void a(int i, int i2, int i3, String str) {
        a(i, i2, i3, str, 0.1f, 0.3f);
        int i4 = i + 32;
        a(i4, i2, i3, str, 0.3f, 0.6f);
        int i5 = i - 32;
        a(i5, i2, i3, str, 0.3f, 0.6f);
        int i6 = i2 + 32;
        a(i, i6, i3, str, 0.3f, 0.6f);
        int i7 = i2 - 32;
        a(i, i7, i3, str, 0.3f, 0.6f);
        a(i4, i6, i3, str, 0.6f, 1.0f);
        a(i5, i7, i3, str, 0.6f, 1.0f);
        a(i5, i6, i3, str, 0.6f, 1.0f);
        a(i4, i7, i3, str, 0.6f, 1.0f);
    }

    private static void a(int i, int i2, int i3, String str, float f, float f2) {
        if (b.q().j(i, i2)) {
            return;
        }
        GameLevelData.a(new MapEffectEntity(i, i2, i3, "", true, str, FDUtils.a(f, f2)));
    }

    public static void b(int i, int i2, int i3, int i4) {
        String str = i4 == 2 ? "flames_faith_weak2" : "flames_faith_weak1";
        if (i4 == 3) {
            str = "flames_faith_weak3";
        }
        a.h().a(i, i2, "fire", 0, 6.0f);
        String str2 = str;
        a(i, i2, i3, str2, 0.0f, 0.0f);
        int i5 = i + 32;
        a(i5, i2, i3, str2, 0.0f, 0.0f);
        int i6 = i - 32;
        a(i6, i2, i3, str2, 0.0f, 0.0f);
        int i7 = i2 + 32;
        a(i, i7, i3, str2, 0.0f, 0.0f);
        int i8 = i2 - 32;
        a(i, i8, i3, str2, 0.0f, 0.0f);
        a(i5, i7, i3, str2, 0.0f, 0.0f);
        a(i6, i8, i3, str2, 0.0f, 0.0f);
        a(i6, i7, i3, str2, 0.0f, 0.0f);
        a(i5, i8, i3, str2, 0.0f, 0.0f);
        int i9 = i + 64;
        a(i9, i7, i3, str2, 0.0f, 0.0f);
        a(i9, i2, i3, str2, 0.0f, 0.0f);
        a(i9, i8, i3, str2, 0.0f, 0.0f);
        int i10 = i - 64;
        a(i10, i7, i3, str2, 0.0f, 0.0f);
        a(i10, i2, i3, str2, 0.0f, 0.0f);
        a(i10, i8, i3, str2, 0.0f, 0.0f);
        int i11 = i2 + 64;
        a(i6, i11, i3, str2, 0.0f, 0.0f);
        a(i, i11, i3, str2, 0.0f, 0.0f);
        a(i5, i11, i3, str2, 0.0f, 0.0f);
        int i12 = i2 - 64;
        a(i6, i12, i3, str2, 0.0f, 0.0f);
        a(i, i12, i3, str2, 0.0f, 0.0f);
        a(i5, i12, i3, str2, 0.0f, 0.0f);
    }

    public static void b(int i, int i2, int i3, String str) {
        a.h().a(i, i2, "fire", 0, 1.0f);
        a(i, i2, i3, str, 0.0f, 0.25f);
        int i4 = i + 32;
        a(i4, i2, i3, str, 0.0f, 0.25f);
        int i5 = i - 32;
        a(i5, i2, i3, str, 0.0f, 0.25f);
        int i6 = i2 + 32;
        a(i, i6, i3, str, 0.0f, 0.25f);
        int i7 = i2 - 32;
        a(i, i7, i3, str, 0.0f, 0.25f);
        a(i4, i6, i3, str, 0.3f, 0.6f);
        a(i5, i7, i3, str, 0.3f, 0.6f);
        a(i5, i6, i3, str, 0.3f, 0.6f);
        a(i4, i7, i3, str, 0.3f, 0.6f);
        GameAssets.i("explo");
    }

    public static void c(int i, int i2, int i3, String str) {
        a(i, i2, i3, str, 0.1f, 0.3f);
        int i4 = i + 16;
        int i5 = i2 + 16;
        a(i4, i5, i3, str, 0.3f, 0.6f);
        int i6 = i - 16;
        a(i6, i5, i3, str, 0.3f, 0.6f);
        int i7 = i2 - 16;
        a(i4, i7, i3, str, 0.3f, 0.6f);
        a(i6, i7, i3, str, 0.3f, 0.6f);
    }
}
