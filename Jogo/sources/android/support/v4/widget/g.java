package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;

/* compiled from: ImageViewCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class g {
    static final b a;

    /* compiled from: ImageViewCompat.java */
    static class a implements b {
        a() {
        }

        public PorterDuff.Mode a(ImageView imageView) {
            if (imageView instanceof l) {
                return ((l) imageView).getSupportImageTintMode();
            }
            return null;
        }

        public void a(ImageView imageView, ColorStateList colorStateList) {
            if (imageView instanceof l) {
                ((l) imageView).setSupportImageTintList(colorStateList);
            }
        }

        public void a(ImageView imageView, PorterDuff.Mode mode) {
            if (imageView instanceof l) {
                ((l) imageView).setSupportImageTintMode(mode);
            }
        }

        public ColorStateList b(ImageView imageView) {
            if (imageView instanceof l) {
                return ((l) imageView).getSupportImageTintList();
            }
            return null;
        }
    }

    /* compiled from: ImageViewCompat.java */
    interface b {
        PorterDuff.Mode a(ImageView imageView);

        void a(ImageView imageView, ColorStateList colorStateList);

        void a(ImageView imageView, PorterDuff.Mode mode);

        ColorStateList b(ImageView imageView);
    }

    /* compiled from: ImageViewCompat.java */
    static class c extends a {
        c() {
        }

        public PorterDuff.Mode a(ImageView imageView) {
            return imageView.getImageTintMode();
        }

        public void a(ImageView imageView, ColorStateList colorStateList) {
            imageView.setImageTintList(colorStateList);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable drawable = imageView.getDrawable();
                boolean z = (imageView.getImageTintList() == null || imageView.getImageTintMode() == null) ? false : true;
                if (drawable == null || !z) {
                    return;
                }
                if (drawable.isStateful()) {
                    drawable.setState(imageView.getDrawableState());
                }
                imageView.setImageDrawable(drawable);
            }
        }

        public void a(ImageView imageView, PorterDuff.Mode mode) {
            imageView.setImageTintMode(mode);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable drawable = imageView.getDrawable();
                boolean z = (imageView.getImageTintList() == null || imageView.getImageTintMode() == null) ? false : true;
                if (drawable == null || !z) {
                    return;
                }
                if (drawable.isStateful()) {
                    drawable.setState(imageView.getDrawableState());
                }
                imageView.setImageDrawable(drawable);
            }
        }

        public ColorStateList b(ImageView imageView) {
            return imageView.getImageTintList();
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            a = new c();
        } else {
            a = new a();
        }
    }

    public static ColorStateList a(ImageView imageView) {
        return a.b(imageView);
    }

    public static void a(ImageView imageView, ColorStateList colorStateList) {
        a.a(imageView, colorStateList);
    }

    public static void a(ImageView imageView, PorterDuff.Mode mode) {
        a.a(imageView, mode);
    }

    public static PorterDuff.Mode b(ImageView imageView) {
        return a.a(imageView);
    }
}
