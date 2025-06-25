package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.List;

/* compiled from: NotificationCompatJellybean.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class j0 {
    private static final Object a = new Object();
    private static Field b;
    private static boolean c;

    public static Bundle a(Notification.Builder builder, e0 e0Var) {
        builder.addAction(e0Var.e, e0Var.f, e0Var.g);
        Bundle bundle = new Bundle(e0Var.a);
        if (e0Var.e() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", a(e0Var.e()));
        }
        if (e0Var.c() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", a(e0Var.c()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", e0Var.b());
        return bundle;
    }

    public static Bundle a(Notification notification) {
        synchronized (a) {
            if (c) {
                return null;
            }
            try {
                if (b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    b = declaredField;
                }
                Bundle bundle = (Bundle) b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    b.set(notification, bundle);
                }
                return bundle;
            } catch (NoSuchFieldException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                c = true;
                return null;
            } catch (IllegalAccessException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                c = true;
                return null;
            }
        }
    }

    public static SparseArray a(List list) {
        int size = list.size();
        SparseArray sparseArray = null;
        for (int i = 0; i < size; i++) {
            Bundle bundle = (Bundle) list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    private static Bundle[] a(l0[] l0VarArr) {
        if (l0VarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[l0VarArr.length];
        if (l0VarArr.length <= 0) {
            return bundleArr;
        }
        l0 l0Var = l0VarArr[0];
        new Bundle();
        throw null;
    }
}
