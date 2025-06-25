package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserServiceCompat;
import android.util.Log;

/* compiled from: MediaBrowserServiceCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class k implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.n b;
    final /* synthetic */ Bundle c;
    final /* synthetic */ MediaBrowserServiceCompat.m d;

    k(MediaBrowserServiceCompat.m mVar, MediaBrowserServiceCompat.n nVar, Bundle bundle) {
        this.d = mVar;
        this.b = nVar;
        this.c = bundle;
    }

    public void run() {
        IBinder a = ((MediaBrowserServiceCompat.o) this.b).a();
        MediaBrowserServiceCompat.this.c.remove(a);
        MediaBrowserServiceCompat.f fVar = new MediaBrowserServiceCompat.f(MediaBrowserServiceCompat.this);
        fVar.c = this.b;
        fVar.b = this.c;
        MediaBrowserServiceCompat.this.c.put(a, fVar);
        try {
            a.linkToDeath(fVar, 0);
        } catch (RemoteException unused) {
            Log.w("MBServiceCompat", "IBinder is already dead.");
        }
    }
}
