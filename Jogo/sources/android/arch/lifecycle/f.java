package android.arch.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.arch.lifecycle.a;
import android.os.Bundle;

/* compiled from: ReportFragment.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class f extends Fragment {
    public static void a(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new f(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    private void a(a.a aVar) {
        e activity = getActivity();
        if (activity instanceof e) {
            activity.getLifecycle().a(aVar);
        } else if (activity instanceof c) {
            a lifecycle = activity.getLifecycle();
            if (lifecycle instanceof d) {
                ((d) lifecycle).a(aVar);
            }
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(a.a.ON_CREATE);
    }

    public void onDestroy() {
        super.onDestroy();
        a(a.a.ON_DESTROY);
    }

    public void onPause() {
        super.onPause();
        a(a.a.ON_PAUSE);
    }

    public void onResume() {
        super.onResume();
        a(a.a.ON_RESUME);
    }

    public void onStart() {
        super.onStart();
        a(a.a.ON_START);
    }

    public void onStop() {
        super.onStop();
        a(a.a.ON_STOP);
    }
}
