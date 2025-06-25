package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

/* compiled from: MediaBrowserCompatApi21.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class d extends MediaBrowser.SubscriptionCallback {
    protected final c a;

    public d(c cVar) {
        this.a = cVar;
    }

    public void onChildrenLoaded(String str, List list) {
        MediaBrowserCompat.k.a aVar = (MediaBrowserCompat.k.a) this.a;
        WeakReference weakReference = MediaBrowserCompat.k.this.b;
        MediaBrowserCompat.j jVar = weakReference == null ? null : (MediaBrowserCompat.j) weakReference.get();
        if (jVar == null) {
            MediaBrowserCompat.k kVar = MediaBrowserCompat.k.this;
            MediaBrowserCompat.MediaItem.a(list);
            kVar.a();
            return;
        }
        List a = MediaBrowserCompat.MediaItem.a(list);
        List a2 = jVar.a();
        List b = jVar.b();
        for (int i = 0; i < a2.size(); i++) {
            Bundle bundle = (Bundle) b.get(i);
            if (bundle == null) {
                MediaBrowserCompat.k.this.a();
            } else {
                MediaBrowserCompat.k kVar2 = MediaBrowserCompat.k.this;
                if (a != null) {
                    int i2 = bundle.getInt("android.media.browse.extra.PAGE", -1);
                    int i3 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
                    if (i2 != -1 || i3 != -1) {
                        int i4 = i3 * i2;
                        int i5 = i4 + i3;
                        if (i2 < 0 || i3 < 1 || i4 >= a.size()) {
                            List list2 = Collections.EMPTY_LIST;
                        } else {
                            if (i5 > a.size()) {
                                i5 = a.size();
                            }
                            a.subList(i4, i5);
                        }
                    }
                }
                kVar2.b();
            }
        }
    }

    public void onError(String str) {
        MediaBrowserCompat.k.this.c();
    }
}
