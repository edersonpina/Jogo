package android.support.v4.app;

import android.app.Notification;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: BundleCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class e {
    private static Method a;
    private static boolean b;
    private static Method c;
    private static boolean d;

    public static Bundle a(Notification notification) {
        return Build.VERSION.SDK_INT >= 19 ? notification.extras : j0.a(notification);
    }

    public static IBinder a(Bundle bundle, String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            return bundle.getBinder(str);
        }
        if (!b) {
            try {
                a = Bundle.class.getMethod("getIBinder", new Class[]{String.class});
                a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e);
            }
            b = true;
        }
        Method method = a;
        if (method != null) {
            try {
                return (IBinder) method.invoke(bundle, new Object[]{str});
            } catch (IllegalArgumentException | IllegalAccessException | InvocationTargetException e2) {
                Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e2);
                a = null;
            }
        }
        return null;
    }

    public static void a(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
            return;
        }
        if (!d) {
            try {
                c = Bundle.class.getMethod("putIBinder", new Class[]{String.class, IBinder.class});
                c.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e);
            }
            d = true;
        }
        Method method = c;
        if (method != null) {
            try {
                method.invoke(bundle, new Object[]{str, iBinder});
            } catch (InvocationTargetException | IllegalArgumentException | IllegalAccessException e2) {
                Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e2);
                c = null;
            }
        }
    }
}
