package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import java.util.List;

/* compiled from: MediaBrowserCompatApi26.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class f extends d {
    f(e eVar) {
        super(eVar);
    }

    public void onChildrenLoaded(String str, List list, Bundle bundle) {
        MediaBrowserCompat.k kVar = MediaBrowserCompat.k.this;
        MediaBrowserCompat.MediaItem.a(list);
        kVar.b();
    }

    public void onError(String str, Bundle bundle) {
        MediaBrowserCompat.k.this.d();
    }
}
