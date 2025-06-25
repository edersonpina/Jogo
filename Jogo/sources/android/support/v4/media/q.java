package android.support.v4.media;

import android.content.Context;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserServiceCompat;

/* compiled from: MediaBrowserServiceCompatApi23.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class q extends n {
    q(Context context, r rVar) {
        super(context, rVar);
    }

    public void onLoadItem(String str, MediaBrowserService.Result result) {
        ((MediaBrowserServiceCompat.i) this.b).b(str, new o(result));
    }
}
