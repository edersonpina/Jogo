package android.support.v4.media;

import android.os.IBinder;
import android.support.v4.media.MediaBrowserServiceCompat;
import android.util.Log;

/* compiled from: MediaBrowserServiceCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class j implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.n b;
    final /* synthetic */ String c;
    final /* synthetic */ IBinder d;
    final /* synthetic */ MediaBrowserServiceCompat.m e;

    j(MediaBrowserServiceCompat.m mVar, MediaBrowserServiceCompat.n nVar, String str, IBinder iBinder) {
        this.e = mVar;
        this.b = nVar;
        this.c = str;
        this.d = iBinder;
    }

    public void run() {
        MediaBrowserServiceCompat.f fVar = (MediaBrowserServiceCompat.f) MediaBrowserServiceCompat.this.c.get(((MediaBrowserServiceCompat.o) this.b).a());
        if (fVar == null) {
            StringBuilder a = d.a.a.a.a.a("removeSubscription for callback that isn't registered id=");
            a.append(this.c);
            Log.w("MBServiceCompat", a.toString());
        } else {
            if (MediaBrowserServiceCompat.this.a(this.c, fVar, this.d)) {
                return;
            }
            StringBuilder a2 = d.a.a.a.a.a("removeSubscription called for ");
            a2.append(this.c);
            a2.append(" which is not subscribed");
            Log.w("MBServiceCompat", a2.toString());
        }
    }
}
