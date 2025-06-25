package android.support.v4.app;

import android.app.Activity;
import android.arch.lifecycle.a;
import android.os.Bundle;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class SupportActivity extends Activity implements android.arch.lifecycle.c {
    private b.b.c.d.j mExtraDataMap = new b.b.c.d.j();
    private android.arch.lifecycle.d mLifecycleRegistry = new android.arch.lifecycle.d(this);

    public static class a {
    }

    public a getExtraData(Class cls) {
        return (a) this.mExtraDataMap.get(cls);
    }

    public android.arch.lifecycle.a getLifecycle() {
        return this.mLifecycleRegistry;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        android.arch.lifecycle.f.a(this);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        this.mLifecycleRegistry.a(a.b.CREATED);
        super.onSaveInstanceState(bundle);
    }

    public void putExtraData(a aVar) {
        this.mExtraDataMap.put(aVar.getClass(), aVar);
    }
}
