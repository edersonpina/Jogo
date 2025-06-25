package android.support.v4.media;

import android.content.Context;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserServiceCompat;

/* compiled from: MediaBrowserServiceCompatApi21.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class n extends MediaBrowserService {
    final p b;

    n(Context context, p pVar) {
        attachBaseContext(context);
        this.b = pVar;
    }

    public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        ((MediaBrowserServiceCompat.h) this.b).a(str, i, bundle == null ? null : new Bundle(bundle));
        return null;
    }

    public void onLoadChildren(String str, MediaBrowserService.Result result) {
        ((MediaBrowserServiceCompat.h) this.b).a(str, new o(result));
    }
}
