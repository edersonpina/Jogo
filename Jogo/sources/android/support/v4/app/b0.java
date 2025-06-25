package android.support.v4.app;

import android.os.Bundle;

/* compiled from: LoaderManager.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public abstract class b0 {

    /* compiled from: LoaderManager.java */
    public interface a {
        android.support.v4.content.c onCreateLoader(int i, Bundle bundle);

        void onLoadFinished(android.support.v4.content.c cVar, Object obj);

        void onLoaderReset(android.support.v4.content.c cVar);
    }

    public abstract android.support.v4.content.c a(int i, Bundle bundle, a aVar);
}
