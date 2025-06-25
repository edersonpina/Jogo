package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.b;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class MediaBrowserCompat {
    static final boolean b = Log.isLoggable("MediaBrowserCompat", 3);
    private final c a;

    private static class CustomActionResultReceiver extends ResultReceiver {
        protected void a(int i, Bundle bundle) {
        }
    }

    private static class ItemReceiver extends ResultReceiver {
        protected void a(int i, Bundle bundle) {
            if (bundle != null) {
                bundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            }
            if (i != 0) {
                throw null;
            }
            if (bundle == null) {
                throw null;
            }
            if (!bundle.containsKey("media_item")) {
                throw null;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable != null && !(parcelable instanceof MediaItem)) {
                throw null;
            }
            throw null;
        }
    }

    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator CREATOR = new a();
        private final int b;
        private final MediaDescriptionCompat c;

        static class a implements Parcelable.Creator {
            a() {
            }

            public Object createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            public Object[] newArray(int i) {
                return new MediaItem[i];
            }
        }

        MediaItem(Parcel parcel) {
            this.b = parcel.readInt();
            this.c = (MediaDescriptionCompat) MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            }
            if (TextUtils.isEmpty(mediaDescriptionCompat.b())) {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
            this.b = i;
            this.c = mediaDescriptionCompat;
        }

        public static List a(List list) {
            MediaItem mediaItem;
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (Object obj : list) {
                if (obj == null || Build.VERSION.SDK_INT < 21) {
                    mediaItem = null;
                } else {
                    MediaBrowser.MediaItem mediaItem2 = (MediaBrowser.MediaItem) obj;
                    mediaItem = new MediaItem(MediaDescriptionCompat.a(mediaItem2.getDescription()), mediaItem2.getFlags());
                }
                arrayList.add(mediaItem);
            }
            return arrayList;
        }

        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaItem{mFlags=" + this.b + ", mDescription=" + this.c + '}';
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.b);
            this.c.writeToParcel(parcel, i);
        }
    }

    private static class SearchResultReceiver extends ResultReceiver {
        protected void a(int i, Bundle bundle) {
            if (bundle != null) {
                bundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            }
            if (i != 0) {
                throw null;
            }
            if (bundle == null) {
                throw null;
            }
            if (!bundle.containsKey("search_results")) {
                throw null;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            if (parcelableArray == null) {
                throw null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaItem) parcelable);
            }
            throw null;
        }
    }

    private static class a extends Handler {
        private final WeakReference a;
        private WeakReference b;

        a(h hVar) {
            this.a = new WeakReference(hVar);
        }

        void a(Messenger messenger) {
            this.b = new WeakReference(messenger);
        }

        public void handleMessage(Message message) {
            WeakReference weakReference = this.b;
            if (weakReference == null || weakReference.get() == null || this.a.get() == null) {
                return;
            }
            Bundle data = message.getData();
            data.setClassLoader(MediaSessionCompat.class.getClassLoader());
            h hVar = (h) this.a.get();
            Messenger messenger = (Messenger) this.b.get();
            try {
                int i = message.what;
                if (i == 1) {
                    hVar.a(messenger, data.getString("data_media_item_id"), (MediaSessionCompat.Token) data.getParcelable("data_media_session_token"), data.getBundle("data_root_hints"));
                } else if (i == 2) {
                    hVar.a(messenger);
                } else if (i != 3) {
                    Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                } else {
                    hVar.a(messenger, data.getString("data_media_item_id"), (List) data.getParcelableArrayList("data_media_item_list"), data.getBundle("data_options"));
                }
            } catch (BadParcelableException unused) {
                Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                if (message.what == 1) {
                    hVar.a(messenger);
                }
            }
        }
    }

    public static class b {
        final Object a;
        a b;

        interface a {
        }

        private class b implements android.support.v4.media.a {
            b() {
            }
        }

        public b() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.a = new android.support.v4.media.b(new b());
            } else {
                this.a = null;
            }
        }

        public void a() {
            throw null;
        }

        public void b() {
            throw null;
        }

        public void c() {
            throw null;
        }
    }

    interface c {
        MediaSessionCompat.Token a();

        void connect();

        void disconnect();
    }

    static class d implements c, h, b.a {
        final Context a;
        protected final Object b;
        protected final Bundle c;
        protected final a d = new a(this);
        private final b.b.c.d.a e = new b.b.c.d.a();
        protected i f;
        protected Messenger g;
        private MediaSessionCompat.Token h;

        d(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            this.a = context;
            bundle = bundle == null ? new Bundle() : bundle;
            bundle.putInt("extra_client_version", 1);
            this.c = new Bundle(bundle);
            bVar.b = this;
            this.b = new MediaBrowser(context, componentName, (MediaBrowser.ConnectionCallback) bVar.a, this.c);
        }

        public MediaSessionCompat.Token a() {
            if (this.h == null) {
                this.h = MediaSessionCompat.Token.a(((MediaBrowser) this.b).getSessionToken(), null);
            }
            return this.h;
        }

        public void a(Messenger messenger) {
        }

        public void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        public void a(Messenger messenger, String str, List list, Bundle bundle) {
            if (this.g != messenger) {
                return;
            }
            j jVar = (j) this.e.get(str);
            if (jVar == null) {
                if (MediaBrowserCompat.b) {
                    Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
                    return;
                }
                return;
            }
            k a = jVar.a(this.a, bundle);
            if (a != null) {
                if (bundle == null) {
                    if (list == null) {
                        a.c();
                        return;
                    } else {
                        a.a();
                        return;
                    }
                }
                if (list == null) {
                    a.d();
                } else {
                    a.b();
                }
            }
        }

        public void b() {
            Bundle extras = ((MediaBrowser) this.b).getExtras();
            if (extras == null) {
                return;
            }
            extras.getInt("extra_service_version", 0);
            IBinder a = android.support.v4.app.e.a(extras, "extra_messenger");
            if (a != null) {
                this.f = new i(a, this.c);
                this.g = new Messenger(this.d);
                this.d.a(this.g);
                try {
                    this.f.b(this.g);
                } catch (RemoteException unused) {
                    Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
                }
            }
            android.support.v4.media.session.b a2 = b.a.a(android.support.v4.app.e.a(extras, "extra_session_binder"));
            if (a2 != null) {
                this.h = MediaSessionCompat.Token.a(((MediaBrowser) this.b).getSessionToken(), a2);
            }
        }

        public void c() {
        }

        public void connect() {
            ((MediaBrowser) this.b).connect();
        }

        public void d() {
            this.f = null;
            this.g = null;
            this.h = null;
            this.d.a(null);
        }

        public void disconnect() {
            Messenger messenger;
            i iVar = this.f;
            if (iVar != null && (messenger = this.g) != null) {
                try {
                    iVar.c(messenger);
                } catch (RemoteException unused) {
                    Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
                }
            }
            ((MediaBrowser) this.b).disconnect();
        }
    }

    static class e extends d {
        e(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    static class f extends e {
        f(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    static class g implements c, h {
        final Context a;
        final ComponentName b;
        final b c;
        final Bundle d;
        final a e = new a(this);
        private final b.b.c.d.a f = new b.b.c.d.a();
        int g = 1;
        c h;
        i i;
        Messenger j;
        private String k;
        private MediaSessionCompat.Token l;

        class a implements Runnable {
            a() {
            }

            public void run() {
                g gVar = g.this;
                if (gVar.g == 0) {
                    return;
                }
                gVar.g = 2;
                if (MediaBrowserCompat.b && gVar.h != null) {
                    StringBuilder a = d.a.a.a.a.a("mServiceConnection should be null. Instead it is ");
                    a.append(g.this.h);
                    throw new RuntimeException(a.toString());
                }
                g gVar2 = g.this;
                if (gVar2.i != null) {
                    StringBuilder a2 = d.a.a.a.a.a("mServiceBinderWrapper should be null. Instead it is ");
                    a2.append(g.this.i);
                    throw new RuntimeException(a2.toString());
                }
                if (gVar2.j != null) {
                    StringBuilder a3 = d.a.a.a.a.a("mCallbacksMessenger should be null. Instead it is ");
                    a3.append(g.this.j);
                    throw new RuntimeException(a3.toString());
                }
                Intent intent = new Intent("android.media.browse.MediaBrowserService");
                intent.setComponent(g.this.b);
                g gVar3 = g.this;
                gVar3.h = gVar3.new c();
                boolean z = false;
                try {
                    z = g.this.a.bindService(intent, g.this.h, 1);
                } catch (Exception unused) {
                    StringBuilder a4 = d.a.a.a.a.a("Failed binding to service ");
                    a4.append(g.this.b);
                    Log.e("MediaBrowserCompat", a4.toString());
                }
                if (!z) {
                    g.this.c();
                    g.this.c.b();
                }
                if (MediaBrowserCompat.b) {
                    Log.d("MediaBrowserCompat", "connect...");
                    g.this.b();
                }
            }
        }

        class b implements Runnable {
            b() {
            }

            public void run() {
                g gVar = g.this;
                Messenger messenger = gVar.j;
                if (messenger != null) {
                    try {
                        gVar.i.a(messenger);
                    } catch (RemoteException unused) {
                        StringBuilder a = d.a.a.a.a.a("RemoteException during connect for ");
                        a.append(g.this.b);
                        Log.w("MediaBrowserCompat", a.toString());
                    }
                }
                g gVar2 = g.this;
                int i = gVar2.g;
                gVar2.c();
                if (i != 0) {
                    g.this.g = i;
                }
                if (MediaBrowserCompat.b) {
                    Log.d("MediaBrowserCompat", "disconnect...");
                    g.this.b();
                }
            }
        }

        private class c implements ServiceConnection {

            class a implements Runnable {
                final /* synthetic */ ComponentName b;
                final /* synthetic */ IBinder c;

                a(ComponentName componentName, IBinder iBinder) {
                    this.b = componentName;
                    this.c = iBinder;
                }

                public void run() {
                    if (MediaBrowserCompat.b) {
                        StringBuilder a = d.a.a.a.a.a("MediaServiceConnection.onServiceConnected name=");
                        a.append(this.b);
                        a.append(" binder=");
                        a.append(this.c);
                        Log.d("MediaBrowserCompat", a.toString());
                        g.this.b();
                    }
                    if (c.this.a("onServiceConnected")) {
                        g gVar = g.this;
                        gVar.i = new i(this.c, gVar.d);
                        g gVar2 = g.this;
                        gVar2.j = new Messenger(gVar2.e);
                        g gVar3 = g.this;
                        gVar3.e.a(gVar3.j);
                        g.this.g = 2;
                        try {
                            if (MediaBrowserCompat.b) {
                                Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                                g.this.b();
                            }
                            g.this.i.a(g.this.a, g.this.j);
                        } catch (RemoteException unused) {
                            StringBuilder a2 = d.a.a.a.a.a("RemoteException during connect for ");
                            a2.append(g.this.b);
                            Log.w("MediaBrowserCompat", a2.toString());
                            if (MediaBrowserCompat.b) {
                                Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                                g.this.b();
                            }
                        }
                    }
                }
            }

            class b implements Runnable {
                final /* synthetic */ ComponentName b;

                b(ComponentName componentName) {
                    this.b = componentName;
                }

                public void run() {
                    if (MediaBrowserCompat.b) {
                        StringBuilder a = d.a.a.a.a.a("MediaServiceConnection.onServiceDisconnected name=");
                        a.append(this.b);
                        a.append(" this=");
                        a.append(this);
                        a.append(" mServiceConnection=");
                        a.append(g.this.h);
                        Log.d("MediaBrowserCompat", a.toString());
                        g.this.b();
                    }
                    if (c.this.a("onServiceDisconnected")) {
                        g gVar = g.this;
                        gVar.i = null;
                        gVar.j = null;
                        gVar.e.a(null);
                        g gVar2 = g.this;
                        gVar2.g = 4;
                        gVar2.c.c();
                    }
                }
            }

            c() {
            }

            private void a(Runnable runnable) {
                if (Thread.currentThread() == g.this.e.getLooper().getThread()) {
                    runnable.run();
                } else {
                    g.this.e.post(runnable);
                }
            }

            boolean a(String str) {
                int i;
                g gVar = g.this;
                if (gVar.h == this && (i = gVar.g) != 0 && i != 1) {
                    return true;
                }
                int i2 = g.this.g;
                if (i2 == 0 || i2 == 1) {
                    return false;
                }
                StringBuilder b2 = d.a.a.a.a.b(str, " for ");
                b2.append(g.this.b);
                b2.append(" with mServiceConnection=");
                b2.append(g.this.h);
                b2.append(" this=");
                b2.append(this);
                Log.i("MediaBrowserCompat", b2.toString());
                return false;
            }

            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                a(new a(componentName, iBinder));
            }

            public void onServiceDisconnected(ComponentName componentName) {
                a(new b(componentName));
            }
        }

        public g(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            if (context == null) {
                throw new IllegalArgumentException("context must not be null");
            }
            if (componentName == null) {
                throw new IllegalArgumentException("service component must not be null");
            }
            if (bVar == null) {
                throw new IllegalArgumentException("connection callback must not be null");
            }
            this.a = context;
            this.b = componentName;
            this.c = bVar;
            this.d = bundle == null ? null : new Bundle(bundle);
        }

        private static String a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? d.a.a.a.a.a("UNKNOWN/", i) : "CONNECT_STATE_SUSPENDED" : "CONNECT_STATE_CONNECTED" : "CONNECT_STATE_CONNECTING" : "CONNECT_STATE_DISCONNECTED" : "CONNECT_STATE_DISCONNECTING";
        }

        private boolean a(Messenger messenger, String str) {
            int i;
            if (this.j == messenger && (i = this.g) != 0 && i != 1) {
                return true;
            }
            int i2 = this.g;
            if (i2 == 0 || i2 == 1) {
                return false;
            }
            StringBuilder b2 = d.a.a.a.a.b(str, " for ");
            b2.append(this.b);
            b2.append(" with mCallbacksMessenger=");
            b2.append(this.j);
            b2.append(" this=");
            b2.append(this);
            Log.i("MediaBrowserCompat", b2.toString());
            return false;
        }

        public MediaSessionCompat.Token a() {
            if (this.g == 3) {
                return this.l;
            }
            throw new IllegalStateException(d.a.a.a.a.a(d.a.a.a.a.a("getSessionToken() called while not connected(state="), this.g, ")"));
        }

        public void a(Messenger messenger) {
            StringBuilder a2 = d.a.a.a.a.a("onConnectFailed for ");
            a2.append(this.b);
            Log.e("MediaBrowserCompat", a2.toString());
            if (a(messenger, "onConnectFailed")) {
                if (this.g == 2) {
                    c();
                    this.c.b();
                } else {
                    StringBuilder a3 = d.a.a.a.a.a("onConnect from service while mState=");
                    a3.append(a(this.g));
                    a3.append("... ignoring");
                    Log.w("MediaBrowserCompat", a3.toString());
                }
            }
        }

        public void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (a(messenger, "onConnect")) {
                if (this.g != 2) {
                    StringBuilder a2 = d.a.a.a.a.a("onConnect from service while mState=");
                    a2.append(a(this.g));
                    a2.append("... ignoring");
                    Log.w("MediaBrowserCompat", a2.toString());
                    return;
                }
                this.k = str;
                this.l = token;
                this.g = 3;
                if (MediaBrowserCompat.b) {
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    b();
                }
                this.c.a();
                try {
                    for (Map.Entry entry : this.f.entrySet()) {
                        String str2 = (String) entry.getKey();
                        j jVar = (j) entry.getValue();
                        List a3 = jVar.a();
                        List b2 = jVar.b();
                        for (int i = 0; i < a3.size(); i++) {
                            this.i.a(str2, k.a((k) a3.get(i)), (Bundle) b2.get(i), this.j);
                        }
                    }
                } catch (RemoteException unused) {
                    Log.d("MediaBrowserCompat", "addSubscription failed with RemoteException.");
                }
            }
        }

        public void a(Messenger messenger, String str, List list, Bundle bundle) {
            if (a(messenger, "onLoadChildren")) {
                if (MediaBrowserCompat.b) {
                    StringBuilder a2 = d.a.a.a.a.a("onLoadChildren for ");
                    a2.append(this.b);
                    a2.append(" id=");
                    a2.append(str);
                    Log.d("MediaBrowserCompat", a2.toString());
                }
                j jVar = (j) this.f.get(str);
                if (jVar == null) {
                    if (MediaBrowserCompat.b) {
                        Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
                        return;
                    }
                    return;
                }
                k a3 = jVar.a(this.a, bundle);
                if (a3 != null) {
                    if (bundle == null) {
                        if (list == null) {
                            a3.c();
                            return;
                        } else {
                            a3.a();
                            return;
                        }
                    }
                    if (list == null) {
                        a3.d();
                    } else {
                        a3.b();
                    }
                }
            }
        }

        void b() {
            Log.d("MediaBrowserCompat", "MediaBrowserCompat...");
            Log.d("MediaBrowserCompat", "  mServiceComponent=" + this.b);
            Log.d("MediaBrowserCompat", "  mCallback=" + this.c);
            Log.d("MediaBrowserCompat", "  mRootHints=" + this.d);
            Log.d("MediaBrowserCompat", "  mState=" + a(this.g));
            Log.d("MediaBrowserCompat", "  mServiceConnection=" + this.h);
            Log.d("MediaBrowserCompat", "  mServiceBinderWrapper=" + this.i);
            Log.d("MediaBrowserCompat", "  mCallbacksMessenger=" + this.j);
            Log.d("MediaBrowserCompat", "  mRootId=" + this.k);
            Log.d("MediaBrowserCompat", "  mMediaSessionToken=" + this.l);
        }

        void c() {
            c cVar = this.h;
            if (cVar != null) {
                this.a.unbindService(cVar);
            }
            this.g = 1;
            this.h = null;
            this.i = null;
            this.j = null;
            this.e.a(null);
            this.k = null;
            this.l = null;
        }

        public void connect() {
            int i = this.g;
            if (i != 0 && i != 1) {
                throw new IllegalStateException(d.a.a.a.a.a(d.a.a.a.a.a("connect() called while neigther disconnecting nor disconnected (state="), a(this.g), ")"));
            }
            this.g = 2;
            this.e.post(new a());
        }

        public void disconnect() {
            this.g = 0;
            this.e.post(new b());
        }
    }

    interface h {
        void a(Messenger messenger);

        void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        void a(Messenger messenger, String str, List list, Bundle bundle);
    }

    private static class i {
        private Messenger a;
        private Bundle b;

        public i(IBinder iBinder, Bundle bundle) {
            this.a = new Messenger(iBinder);
            this.b = bundle;
        }

        private void a(int i, Bundle bundle, Messenger messenger) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.a.send(obtain);
        }

        void a(Context context, Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putBundle("data_root_hints", this.b);
            a(1, bundle, messenger);
        }

        void a(Messenger messenger) {
            a(2, null, messenger);
        }

        void a(String str, IBinder iBinder, Bundle bundle, Messenger messenger) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            android.support.v4.app.e.a(bundle2, "data_callback_token", iBinder);
            bundle2.putBundle("data_options", bundle);
            a(3, bundle2, messenger);
        }

        void b(Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putBundle("data_root_hints", this.b);
            a(6, bundle, messenger);
        }

        void c(Messenger messenger) {
            a(7, null, messenger);
        }
    }

    private static class j {
        private final List a = new ArrayList();
        private final List b = new ArrayList();

        public k a(Context context, Bundle bundle) {
            if (bundle != null) {
                bundle.setClassLoader(context.getClassLoader());
            }
            for (int i = 0; i < this.b.size(); i++) {
                if (a.a.g.a((Bundle) this.b.get(i), bundle)) {
                    return (k) this.a.get(i);
                }
            }
            return null;
        }

        public List a() {
            return this.a;
        }

        public List b() {
            return this.b;
        }
    }

    public static abstract class k {
        private final IBinder a = new Binder();
        WeakReference b;

        private class a implements android.support.v4.media.c {
            a() {
            }
        }

        private class b extends a implements android.support.v4.media.e {
            b() {
                super();
            }
        }

        public k() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                new android.support.v4.media.f(new b());
            } else if (i >= 21) {
                new android.support.v4.media.d(new a());
            }
        }

        static /* synthetic */ IBinder a(k kVar) {
            return kVar.a;
        }

        public void a() {
        }

        public void b() {
        }

        public void c() {
        }

        public void d() {
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, b bVar, Bundle bundle) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.a = new f(context, componentName, bVar, bundle);
            return;
        }
        if (i2 >= 23) {
            this.a = new e(context, componentName, bVar, bundle);
        } else if (i2 >= 21) {
            this.a = new d(context, componentName, bVar, bundle);
        } else {
            this.a = new g(context, componentName, bVar, bundle);
        }
    }

    public void a() {
        this.a.connect();
    }

    public void b() {
        this.a.disconnect();
    }

    public MediaSessionCompat.Token c() {
        return this.a.a();
    }
}
