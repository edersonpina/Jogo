package android.support.v4.app;

import android.arch.lifecycle.a;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.v4.app.a;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class FragmentActivity extends d implements a.b, a.c {
    static final String ALLOCATED_REQUEST_INDICIES_TAG = "android:support:request_indicies";
    static final String FRAGMENTS_TAG = "android:support:fragments";
    static final int MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS = 65534;
    static final int MSG_REALLY_STOPPED = 1;
    static final int MSG_RESUME_PENDING = 2;
    static final String NEXT_CANDIDATE_REQUEST_INDEX_TAG = "android:support:next_request_index";
    static final String REQUEST_FRAGMENT_WHO_TAG = "android:support:request_fragment_who";
    private static final String TAG = "FragmentActivity";
    boolean mCreated;
    int mNextCandidateRequestIndex;
    b.b.c.d.k mPendingFragmentActivityResults;
    boolean mRequestedPermissionsFromFragment;
    boolean mResumed;
    boolean mRetaining;
    final Handler mHandler = new a();
    final h mFragments = h.a(new b());
    boolean mStopped = true;
    boolean mReallyStopped = true;

    class a extends Handler {
        a() {
        }

        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                FragmentActivity fragmentActivity = FragmentActivity.this;
                if (fragmentActivity.mStopped) {
                    fragmentActivity.doReallyStop(false);
                    return;
                }
                return;
            }
            if (i != 2) {
                super.handleMessage(message);
            } else {
                FragmentActivity.this.onResumeFragments();
                FragmentActivity.this.mFragments.l();
            }
        }
    }

    class b extends i {
        public b() {
            super(FragmentActivity.this);
        }

        public View a(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        public boolean a() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }

    static final class c {
        Object a;
        o b;
        b.b.c.d.j c;

        c() {
        }
    }

    private int allocateRequestIndex(Fragment fragment) {
        if (this.mPendingFragmentActivityResults.b() >= 65534) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (this.mPendingFragmentActivityResults.b(this.mNextCandidateRequestIndex) >= 0) {
            this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % 65534;
        }
        int i = this.mNextCandidateRequestIndex;
        this.mPendingFragmentActivityResults.b(i, fragment.mWho);
        this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % 65534;
        return i;
    }

    private void markFragmentsCreated() {
        while (markState(getSupportFragmentManager(), a.b.CREATED)) {
        }
    }

    private static boolean markState(j jVar, a.b bVar) {
        boolean z = false;
        for (Fragment fragment : jVar.b()) {
            if (fragment != null) {
                if (fragment.getLifecycle().a().compareTo(a.b.STARTED) >= 0) {
                    fragment.mLifecycleRegistry.a(bVar);
                    z = true;
                }
                j peekChildFragmentManager = fragment.peekChildFragmentManager();
                if (peekChildFragmentManager != null) {
                    z |= markState(peekChildFragmentManager, bVar);
                }
            }
        }
        return z;
    }

    final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.a(view, str, context, attributeSet);
    }

    void doReallyStop(boolean z) {
        if (this.mReallyStopped) {
            if (z) {
                this.mFragments.k();
                this.mFragments.c(true);
                return;
            }
            return;
        }
        this.mReallyStopped = true;
        this.mRetaining = z;
        this.mHandler.removeMessages(1);
        onReallyStop();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print("mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.mReallyStopped);
        this.mFragments.a(str2, fileDescriptor, printWriter, strArr);
        this.mFragments.m().a(str, fileDescriptor, printWriter, strArr);
    }

    public Object getLastCustomNonConfigurationInstance() {
        c cVar = (c) getLastNonConfigurationInstance();
        if (cVar != null) {
            return cVar.a;
        }
        return null;
    }

    public android.arch.lifecycle.a getLifecycle() {
        return super.getLifecycle();
    }

    public j getSupportFragmentManager() {
        return this.mFragments.m();
    }

    public b0 getSupportLoaderManager() {
        return this.mFragments.n();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.o();
        int i3 = i >> 16;
        if (i3 == 0) {
            android.support.v4.app.a.a();
            super.onActivityResult(i, i2, intent);
            return;
        }
        int i4 = i3 - 1;
        String str = (String) this.mPendingFragmentActivityResults.a(i4);
        this.mPendingFragmentActivityResults.d(i4);
        if (str == null) {
            Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
            return;
        }
        Fragment a2 = this.mFragments.a(str);
        if (a2 != null) {
            a2.onActivityResult(i & 65535, i2, intent);
            return;
        }
        Log.w("FragmentActivity", "Activity result no fragment exists for who: " + str);
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public void onBackPressed() {
        j m = this.mFragments.m();
        boolean z = ((k) m).s;
        if (!z || Build.VERSION.SDK_INT > 25) {
            if (z || !m.c()) {
                super.onBackPressed();
            }
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.a(configuration);
    }

    protected void onCreate(Bundle bundle) {
        this.mFragments.a((Fragment) null);
        super.onCreate(bundle);
        c cVar = (c) getLastNonConfigurationInstance();
        if (cVar != null) {
            this.mFragments.a(cVar.c);
        }
        if (bundle != null) {
            this.mFragments.a(bundle.getParcelable("android:support:fragments"), cVar != null ? cVar.b : null);
            if (bundle.containsKey("android:support:next_request_index")) {
                this.mNextCandidateRequestIndex = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.mPendingFragmentActivityResults = new b.b.c.d.k(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.mPendingFragmentActivityResults.b(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.mPendingFragmentActivityResults == null) {
            this.mPendingFragmentActivityResults = new b.b.c.d.k(10);
            this.mNextCandidateRequestIndex = 0;
        }
        this.mFragments.b();
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        return i == 0 ? super.onCreatePanelMenu(i, menu) | this.mFragments.a(menu, getMenuInflater()) : super.onCreatePanelMenu(i, menu);
    }

    public /* bridge */ /* synthetic */ View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return super.onCreateView(view, str, context, attributeSet);
    }

    public /* bridge */ /* synthetic */ View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return super.onCreateView(str, context, attributeSet);
    }

    protected void onDestroy() {
        super.onDestroy();
        doReallyStop(false);
        this.mFragments.c();
        this.mFragments.j();
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.d();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.mFragments.b(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.mFragments.a(menuItem);
    }

    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.a(z);
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.o();
    }

    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.mFragments.a(menu);
        }
        super.onPanelClosed(i, menu);
    }

    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        if (this.mHandler.hasMessages(2)) {
            this.mHandler.removeMessages(2);
            onResumeFragments();
        }
        this.mFragments.e();
    }

    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.b(z);
    }

    protected void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(2);
        onResumeFragments();
        this.mFragments.l();
    }

    protected boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        return (i != 0 || menu == null) ? super.onPreparePanel(i, view, menu) : onPrepareOptionsPanel(view, menu) | this.mFragments.b(menu);
    }

    void onReallyStop() {
        this.mFragments.c(this.mRetaining);
        this.mFragments.f();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.o();
        int i2 = (i >> 16) & 65535;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String str = (String) this.mPendingFragmentActivityResults.a(i3);
            this.mPendingFragmentActivityResults.d(i3);
            if (str == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a2 = this.mFragments.a(str);
            if (a2 != null) {
                a2.onRequestPermissionsResult(i & 65535, strArr, iArr);
                return;
            }
            Log.w("FragmentActivity", "Activity result no fragment exists for who: " + str);
        }
    }

    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(2);
        this.mResumed = true;
        this.mFragments.l();
    }

    protected void onResumeFragments() {
        this.mFragments.g();
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    public final Object onRetainNonConfigurationInstance() {
        if (this.mStopped) {
            doReallyStop(true);
        }
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        o r = this.mFragments.r();
        b.b.c.d.j q = this.mFragments.q();
        if (r == null && q == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        c cVar = new c();
        cVar.a = onRetainCustomNonConfigurationInstance;
        cVar.b = r;
        cVar.c = q;
        return cVar;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        markFragmentsCreated();
        Parcelable s = this.mFragments.s();
        if (s != null) {
            bundle.putParcelable("android:support:fragments", s);
        }
        if (this.mPendingFragmentActivityResults.b() > 0) {
            bundle.putInt("android:support:next_request_index", this.mNextCandidateRequestIndex);
            int[] iArr = new int[this.mPendingFragmentActivityResults.b()];
            String[] strArr = new String[this.mPendingFragmentActivityResults.b()];
            for (int i = 0; i < this.mPendingFragmentActivityResults.b(); i++) {
                iArr[i] = this.mPendingFragmentActivityResults.c(i);
                strArr[i] = (String) this.mPendingFragmentActivityResults.e(i);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    protected void onStart() {
        super.onStart();
        this.mStopped = false;
        this.mReallyStopped = false;
        this.mHandler.removeMessages(1);
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.a();
        }
        this.mFragments.o();
        this.mFragments.l();
        this.mFragments.k();
        this.mFragments.h();
        this.mFragments.p();
    }

    public void onStateNotSaved() {
        this.mFragments.o();
    }

    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mHandler.sendEmptyMessage(1);
        this.mFragments.i();
    }

    void requestPermissionsFromFragment(Fragment fragment, String[] strArr, int i) {
        if (i == -1) {
            android.support.v4.app.a.a(this, strArr, i);
            return;
        }
        android.support.v4.app.c.checkForValidRequestCode(i);
        try {
            this.mRequestedPermissionsFromFragment = true;
            android.support.v4.app.a.a(this, strArr, ((allocateRequestIndex(fragment) + 1) << 16) + (i & 65535));
        } finally {
            this.mRequestedPermissionsFromFragment = false;
        }
    }

    public void setEnterSharedElementCallback(n0 n0Var) {
        android.support.v4.app.a.d(this);
    }

    public void setExitSharedElementCallback(n0 n0Var) {
        android.support.v4.app.a.e(this);
    }

    public void startActivityForResult(Intent intent, int i) {
        if (!this.mStartedActivityFromFragment && i != -1) {
            android.support.v4.app.c.checkForValidRequestCode(i);
        }
        super.startActivityForResult(intent, i);
    }

    public /* bridge */ /* synthetic */ void startActivityForResult(Intent intent, int i, Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, null);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        this.mStartedActivityFromFragment = true;
        try {
            if (i == -1) {
                android.support.v4.app.a.a(this, intent, -1, bundle);
            } else {
                android.support.v4.app.c.checkForValidRequestCode(i);
                android.support.v4.app.a.a(this, intent, ((allocateRequestIndex(fragment) + 1) << 16) + (i & 65535), bundle);
            }
        } finally {
            this.mStartedActivityFromFragment = false;
        }
    }

    public /* bridge */ /* synthetic */ void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    public /* bridge */ /* synthetic */ void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void startIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        this.mStartedIntentSenderFromFragment = true;
        try {
            if (i == -1) {
                android.support.v4.app.a.a(this, intentSender, i, intent, i2, i3, i4, bundle);
            } else {
                android.support.v4.app.c.checkForValidRequestCode(i);
                android.support.v4.app.a.a(this, intentSender, ((allocateRequestIndex(fragment) + 1) << 16) + (i & 65535), intent, i2, i3, i4, bundle);
            }
        } finally {
            this.mStartedIntentSenderFromFragment = false;
        }
    }

    public void supportFinishAfterTransition() {
        android.support.v4.app.a.b(this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        android.support.v4.app.a.c(this);
    }

    public void supportStartPostponedEnterTransition() {
        android.support.v4.app.a.f(this);
    }

    public final void validateRequestPermissionsRequestCode(int i) {
        if (this.mRequestedPermissionsFromFragment || i == -1) {
            return;
        }
        android.support.v4.app.c.checkForValidRequestCode(i);
    }
}
