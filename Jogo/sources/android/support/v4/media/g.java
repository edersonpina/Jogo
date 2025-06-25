package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserServiceCompat;
import android.util.Log;

/* compiled from: MediaBrowserServiceCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class g implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.n b;
    final /* synthetic */ String c;
    final /* synthetic */ Bundle d;
    final /* synthetic */ int e;
    final /* synthetic */ MediaBrowserServiceCompat.m f;

    g(MediaBrowserServiceCompat.m mVar, MediaBrowserServiceCompat.n nVar, String str, Bundle bundle, int i) {
        this.f = mVar;
        this.b = nVar;
        this.c = str;
        this.d = bundle;
        this.e = i;
    }

    public void run() {
        IBinder a = ((MediaBrowserServiceCompat.o) this.b).a();
        MediaBrowserServiceCompat.this.c.remove(a);
        MediaBrowserServiceCompat.f fVar = new MediaBrowserServiceCompat.f(MediaBrowserServiceCompat.this);
        String str = this.c;
        fVar.a = str;
        Bundle bundle = this.d;
        fVar.b = bundle;
        fVar.c = this.b;
        MediaBrowserServiceCompat.this.a(str, this.e, bundle);
        fVar.d = null;
        if (fVar.d == null) {
            StringBuilder a2 = d.a.a.a.a.a("No root for client ");
            a2.append(this.c);
            a2.append(" from service ");
            a2.append(g.class.getName());
            Log.i("MBServiceCompat", a2.toString());
            try {
                ((MediaBrowserServiceCompat.o) this.b).b();
                return;
            } catch (RemoteException unused) {
                StringBuilder a3 = d.a.a.a.a.a("Calling onConnectFailed() failed. Ignoring. pkg=");
                a3.append(this.c);
                Log.w("MBServiceCompat", a3.toString());
                return;
            }
        }
        try {
            MediaBrowserServiceCompat.this.c.put(a, fVar);
            a.linkToDeath(fVar, 0);
            if (MediaBrowserServiceCompat.this.e == null) {
                return;
            }
            MediaBrowserServiceCompat.e eVar = fVar.d;
            throw null;
        } catch (RemoteException unused2) {
            StringBuilder a4 = d.a.a.a.a.a("Calling onConnect() failed. Dropping client. pkg=");
            a4.append(this.c);
            Log.w("MBServiceCompat", a4.toString());
            MediaBrowserServiceCompat.this.c.remove(a);
        }
    }
}
