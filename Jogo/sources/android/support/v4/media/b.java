package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.support.v4.media.MediaBrowserCompat;

/* compiled from: MediaBrowserCompatApi21.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class b extends MediaBrowser.ConnectionCallback {
    protected final a a;

    public b(a aVar) {
        this.a = aVar;
    }

    public void onConnected() {
        MediaBrowserCompat.b.b bVar = (MediaBrowserCompat.b.b) this.a;
        MediaBrowserCompat.b.a aVar = MediaBrowserCompat.b.this.b;
        if (aVar != null) {
            ((MediaBrowserCompat.d) aVar).b();
        }
        MediaBrowserCompat.b.this.a();
    }

    public void onConnectionFailed() {
        MediaBrowserCompat.b.b bVar = (MediaBrowserCompat.b.b) this.a;
        MediaBrowserCompat.b.a aVar = MediaBrowserCompat.b.this.b;
        if (aVar != null) {
            ((MediaBrowserCompat.d) aVar).c();
        }
        MediaBrowserCompat.b.this.b();
    }

    public void onConnectionSuspended() {
        MediaBrowserCompat.b.b bVar = (MediaBrowserCompat.b.b) this.a;
        MediaBrowserCompat.b.a aVar = MediaBrowserCompat.b.this.b;
        if (aVar != null) {
            ((MediaBrowserCompat.d) aVar).d();
        }
        MediaBrowserCompat.b.this.c();
    }
}
