package android.support.v4.app;

import android.app.Notification;
import android.os.Build;

/* compiled from: NotificationCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class f0 extends h0 {
    private CharSequence e;

    public f0 a(CharSequence charSequence) {
        this.e = g0.d(charSequence);
        return this;
    }

    public void a(d0 d0Var) {
        int i = Build.VERSION.SDK_INT;
        Notification.BigTextStyle bigText = new Notification.BigTextStyle(((i0) d0Var).b()).setBigContentTitle(this.b).bigText(this.e);
        if (this.d) {
            bigText.setSummaryText(this.c);
        }
    }
}
