package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;

/* compiled from: NotificationCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class e0 {
    final Bundle a;
    private final l0[] b;
    private final l0[] c;
    private boolean d;
    public int e;
    public CharSequence f;
    public PendingIntent g;

    public e0(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        Bundle bundle = new Bundle();
        this.e = i;
        this.f = g0.d(charSequence);
        this.g = pendingIntent;
        this.a = bundle;
        this.b = null;
        this.c = null;
        this.d = true;
    }

    public PendingIntent a() {
        return this.g;
    }

    public boolean b() {
        return this.d;
    }

    public l0[] c() {
        return this.c;
    }

    public int d() {
        return this.e;
    }

    public l0[] e() {
        return this.b;
    }

    public CharSequence f() {
        return this.f;
    }
}
