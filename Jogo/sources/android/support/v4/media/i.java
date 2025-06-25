package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.media.MediaBrowserServiceCompat;
import android.util.Log;

/* compiled from: MediaBrowserServiceCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class i implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.n b;
    final /* synthetic */ String c;
    final /* synthetic */ IBinder d;
    final /* synthetic */ Bundle e;
    final /* synthetic */ MediaBrowserServiceCompat.m f;

    i(MediaBrowserServiceCompat.m mVar, MediaBrowserServiceCompat.n nVar, String str, IBinder iBinder, Bundle bundle) {
        this.f = mVar;
        this.b = nVar;
        this.c = str;
        this.d = iBinder;
        this.e = bundle;
    }

    public void run() {
        MediaBrowserServiceCompat.f fVar = (MediaBrowserServiceCompat.f) MediaBrowserServiceCompat.this.c.get(((MediaBrowserServiceCompat.o) this.b).a());
        if (fVar != null) {
            MediaBrowserServiceCompat.this.a(this.c, fVar, this.d, this.e);
            return;
        }
        StringBuilder a = d.a.a.a.a.a("addSubscription for callback that isn't registered id=");
        a.append(this.c);
        Log.w("MBServiceCompat", a.toString());
    }
}
