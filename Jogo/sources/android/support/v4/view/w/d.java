package android.support.v4.view.w;

import android.view.animation.Interpolator;

/* compiled from: LookupTableInterpolator.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
abstract class d implements Interpolator {
    private final float[] a;
    private final float b;

    public d(float[] fArr) {
        this.a = fArr;
        this.b = 1.0f / (this.a.length - 1);
    }

    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.a;
        int min = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.b;
        float f3 = (f - (min * f2)) / f2;
        float[] fArr2 = this.a;
        return d.a.a.a.a.a(fArr2[min + 1], fArr2[min], f3, fArr2[min]);
    }
}
