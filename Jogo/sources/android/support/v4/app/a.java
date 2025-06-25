package android.support.v4.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;

/* compiled from: ActivityCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class a extends android.support.v4.content.b {

    /* compiled from: ActivityCompat.java */
    static class a implements Runnable {
        final /* synthetic */ String[] b;
        final /* synthetic */ Activity c;
        final /* synthetic */ int d;

        a(String[] strArr, Activity activity, int i) {
            this.b = strArr;
            this.c = activity;
            this.d = i;
        }

        public void run() {
            int[] iArr = new int[this.b.length];
            PackageManager packageManager = this.c.getPackageManager();
            String packageName = this.c.getPackageName();
            int length = this.b.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.b[i], packageName);
            }
            this.c.onRequestPermissionsResult(this.d, this.b, iArr);
        }
    }

    /* compiled from: ActivityCompat.java */
    public interface b {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* compiled from: ActivityCompat.java */
    public interface c {
        void validateRequestPermissionsRequestCode(int i);
    }

    public static void a() {
    }

    public static void a(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        activity.finishAffinity();
    }

    public static void a(Activity activity, Intent intent, int i, Bundle bundle) {
        int i2 = Build.VERSION.SDK_INT;
        activity.startActivityForResult(intent, i, bundle);
    }

    public static void a(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        int i5 = Build.VERSION.SDK_INT;
        activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    public static void a(Activity activity, String[] strArr, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof c) {
                ((c) activity).validateRequestPermissionsRequestCode(i);
            }
            activity.requestPermissions(strArr, i);
        } else if (activity instanceof b) {
            new Handler(Looper.getMainLooper()).post(new a(strArr, activity, i));
        }
    }

    public static boolean a(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    public static void c(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    public static void d(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            activity.setEnterSharedElementCallback((SharedElementCallback) null);
        } else if (i >= 21) {
            activity.setEnterSharedElementCallback((SharedElementCallback) null);
        }
    }

    public static void e(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            activity.setExitSharedElementCallback((SharedElementCallback) null);
        } else if (i >= 21) {
            activity.setExitSharedElementCallback((SharedElementCallback) null);
        }
    }

    public static void f(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }
}
