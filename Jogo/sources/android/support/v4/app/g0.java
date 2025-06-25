package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

/* compiled from: NotificationCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class g0 {
    Bundle A;
    Notification D;
    RemoteViews E;
    RemoteViews F;
    RemoteViews G;
    String J;
    long K;

    @Deprecated
    public ArrayList N;
    public Context a;
    CharSequence c;
    CharSequence d;
    PendingIntent e;
    PendingIntent f;
    RemoteViews g;
    Bitmap h;
    CharSequence i;
    int j;
    int k;
    boolean m;
    h0 n;
    CharSequence o;
    CharSequence[] p;
    int q;
    int r;
    boolean s;
    String t;
    boolean u;
    String v;
    boolean x;
    boolean y;
    String z;
    public ArrayList b = new ArrayList();
    boolean l = true;
    boolean w = false;
    int B = 0;
    int C = 0;
    int I = 0;
    int L = 0;
    Notification M = new Notification();
    String H = null;

    @Deprecated
    public g0(Context context) {
        this.a = context;
        this.M.when = System.currentTimeMillis();
        this.M.audioStreamType = -1;
        this.k = 0;
        this.N = new ArrayList();
    }

    protected static CharSequence d(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public Notification a() {
        return new i0(this).a();
    }

    public g0 a(int i) {
        this.k = i;
        return this;
    }

    public g0 a(long j) {
        this.M.when = j;
        return this;
    }

    public g0 a(PendingIntent pendingIntent) {
        this.e = pendingIntent;
        return this;
    }

    public g0 a(h0 h0Var) {
        if (this.n != h0Var) {
            this.n = h0Var;
            h0 h0Var2 = this.n;
            if (h0Var2 != null && h0Var2.a != this) {
                h0Var2.a = this;
                g0 g0Var = h0Var2.a;
                if (g0Var != null) {
                    g0Var.a(h0Var2);
                }
            }
        }
        return this;
    }

    public g0 a(CharSequence charSequence) {
        this.d = d(charSequence);
        return this;
    }

    public g0 a(String str) {
        this.H = str;
        return this;
    }

    public g0 a(boolean z) {
        if (z) {
            this.M.flags |= 16;
        } else {
            this.M.flags &= -17;
        }
        return this;
    }

    public g0 b(int i) {
        this.M.icon = i;
        return this;
    }

    public g0 b(CharSequence charSequence) {
        this.c = d(charSequence);
        return this;
    }

    public g0 b(boolean z) {
        this.w = z;
        return this;
    }

    public g0 c(CharSequence charSequence) {
        this.M.tickerText = d(charSequence);
        return this;
    }
}
