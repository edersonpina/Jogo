package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import java.io.File;

/* compiled from: ContextCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class b {
    private static final Object a = new Object();

    public static final ColorStateList a(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColorStateList(i) : context.getResources().getColorStateList(i);
    }

    public static boolean a(Context context, Intent[] intentArr, Bundle bundle) {
        int i = Build.VERSION.SDK_INT;
        context.startActivities(intentArr, bundle);
        return true;
    }

    public static File[] a(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalCacheDirs() : new File[]{context.getExternalCacheDir()};
    }

    public static File[] a(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalFilesDirs(str) : new File[]{context.getExternalFilesDir(str)};
    }

    public static final Drawable b(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? context.getDrawable(i) : context.getResources().getDrawable(i);
    }
}
