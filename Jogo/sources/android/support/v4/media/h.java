package android.support.v4.media;

import android.support.v4.media.MediaBrowserServiceCompat;

/* compiled from: MediaBrowserServiceCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class h implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.n b;
    final /* synthetic */ MediaBrowserServiceCompat.m c;

    h(MediaBrowserServiceCompat.m mVar, MediaBrowserServiceCompat.n nVar) {
        this.c = mVar;
        this.b = nVar;
    }

    public void run() {
        MediaBrowserServiceCompat.f fVar = (MediaBrowserServiceCompat.f) MediaBrowserServiceCompat.this.c.remove(((MediaBrowserServiceCompat.o) this.b).a());
        if (fVar != null) {
            ((MediaBrowserServiceCompat.o) fVar.c).a().unlinkToDeath(fVar, 0);
        }
    }
}
