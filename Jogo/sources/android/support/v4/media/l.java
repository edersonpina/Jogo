package android.support.v4.media;

import android.os.IBinder;
import android.support.v4.media.MediaBrowserServiceCompat;

/* compiled from: MediaBrowserServiceCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class l implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.n b;
    final /* synthetic */ MediaBrowserServiceCompat.m c;

    l(MediaBrowserServiceCompat.m mVar, MediaBrowserServiceCompat.n nVar) {
        this.c = mVar;
        this.b = nVar;
    }

    public void run() {
        IBinder a = ((MediaBrowserServiceCompat.o) this.b).a();
        MediaBrowserServiceCompat.f fVar = (MediaBrowserServiceCompat.f) MediaBrowserServiceCompat.this.c.remove(a);
        if (fVar != null) {
            a.unlinkToDeath(fVar, 0);
        }
    }
}
