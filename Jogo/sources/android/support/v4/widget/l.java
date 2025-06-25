package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;

/* compiled from: TintableImageSourceView.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public interface l {
    ColorStateList getSupportImageTintList();

    PorterDuff.Mode getSupportImageTintMode();

    void setSupportImageTintList(ColorStateList colorStateList);

    void setSupportImageTintMode(PorterDuff.Mode mode);
}
