package android.support.v4.media;

import android.app.Service;
import android.content.Intent;
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
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.s;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {
    static final boolean f = Log.isLoggable("MBServiceCompat", 3);
    private g b;
    final b.b.c.d.a c = new b.b.c.d.a();
    final p d = new p();
    MediaSessionCompat.Token e;

    class a extends l {
        final /* synthetic */ f f;
        final /* synthetic */ String g;
        final /* synthetic */ Bundle h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Object obj, f fVar, String str, Bundle bundle) {
            super(obj);
            this.f = fVar;
            this.g = str;
            this.h = bundle;
        }

        void a(Object obj) {
            List list = (List) obj;
            if (MediaBrowserServiceCompat.this.c.get(((o) this.f.c).a()) != this.f) {
                if (MediaBrowserServiceCompat.f) {
                    StringBuilder a = d.a.a.a.a.a("Not sending onLoadChildren result for connection that has been disconnected. pkg=");
                    a.append(this.f.a);
                    a.append(" id=");
                    a.append(this.g);
                    Log.d("MBServiceCompat", a.toString());
                    return;
                }
                return;
            }
            if ((a() & 1) != 0) {
                list = MediaBrowserServiceCompat.this.a(list, this.h);
            }
            try {
                ((o) this.f.c).a(this.g, list, this.h);
            } catch (RemoteException unused) {
                StringBuilder a2 = d.a.a.a.a.a("Calling onLoadChildren() failed for id=");
                a2.append(this.g);
                a2.append(" package=");
                a2.append(this.f.a);
                Log.w("MBServiceCompat", a2.toString());
            }
        }
    }

    class b extends l {
        final /* synthetic */ ResultReceiver f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f = resultReceiver;
        }

        void a(Object obj) {
            MediaBrowserCompat.MediaItem mediaItem = (MediaBrowserCompat.MediaItem) obj;
            if ((a() & 2) != 0) {
                this.f.b(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("media_item", mediaItem);
            this.f.b(0, bundle);
        }
    }

    class c extends l {
        final /* synthetic */ ResultReceiver f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f = resultReceiver;
        }

        void a(Object obj) {
            List list = (List) obj;
            if ((a() & 4) != 0 || list == null) {
                this.f.b(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArray("search_results", (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
            this.f.b(0, bundle);
        }
    }

    class d extends l {
        final /* synthetic */ ResultReceiver f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f = resultReceiver;
        }

        void a(Bundle bundle) {
            this.f.b(-1, bundle);
        }

        void a(Object obj) {
            this.f.b(0, (Bundle) obj);
        }
    }

    public static final class e {
    }

    private class f implements IBinder.DeathRecipient {
        String a;
        Bundle b;
        n c;
        e d;
        HashMap e = new HashMap();

        class a implements Runnable {
            a() {
            }

            public void run() {
                f fVar = f.this;
                MediaBrowserServiceCompat.this.c.remove(((o) fVar.c).a());
            }
        }

        f() {
        }

        public void binderDied() {
            MediaBrowserServiceCompat.this.d.post(new a());
        }
    }

    interface g {
        IBinder a(Intent intent);

        void a();
    }

    class h implements g, android.support.v4.media.p {
        final List a = new ArrayList();
        Object b;
        Messenger c;

        class a extends l {
            final /* synthetic */ android.support.v4.media.o f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(h hVar, Object obj, android.support.v4.media.o oVar) {
                super(obj);
                this.f = oVar;
            }

            void a(Object obj) {
                ArrayList arrayList;
                List<MediaBrowserCompat.MediaItem> list = (List) obj;
                if (list != null) {
                    arrayList = new ArrayList();
                    for (MediaBrowserCompat.MediaItem mediaItem : list) {
                        Parcel obtain = Parcel.obtain();
                        mediaItem.writeToParcel(obtain, 0);
                        arrayList.add(obtain);
                    }
                } else {
                    arrayList = null;
                }
                this.f.a(arrayList);
            }
        }

        h() {
        }

        public IBinder a(Intent intent) {
            return ((MediaBrowserService) this.b).onBind(intent);
        }

        public android.support.v4.media.m a(String str, int i, Bundle bundle) {
            if (bundle != null && bundle.getInt("extra_client_version", 0) != 0) {
                bundle.remove("extra_client_version");
                this.c = new Messenger(MediaBrowserServiceCompat.this.d);
                Bundle bundle2 = new Bundle();
                bundle2.putInt("extra_service_version", 2);
                android.support.v4.app.e.a(bundle2, "extra_messenger", this.c.getBinder());
                MediaSessionCompat.Token token = MediaBrowserServiceCompat.this.e;
                if (token != null) {
                    android.support.v4.media.session.b a2 = token.a();
                    android.support.v4.app.e.a(bundle2, "extra_session_binder", a2 == null ? null : a2.asBinder());
                } else {
                    this.a.add(bundle2);
                }
            }
            MediaBrowserServiceCompat.this.a(str, i, bundle);
            return null;
        }

        public void a() {
            this.b = new android.support.v4.media.n(MediaBrowserServiceCompat.this, this);
            ((MediaBrowserService) this.b).onCreate();
        }

        public void a(String str, android.support.v4.media.o oVar) {
            MediaBrowserServiceCompat.this.a(str, new a(this, str, oVar));
        }
    }

    class i extends h implements r {

        class a extends l {
            final /* synthetic */ android.support.v4.media.o f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(i iVar, Object obj, android.support.v4.media.o oVar) {
                super(obj);
                this.f = oVar;
            }

            void a(Object obj) {
                MediaBrowserCompat.MediaItem mediaItem = (MediaBrowserCompat.MediaItem) obj;
                if (mediaItem == null) {
                    this.f.a(null);
                    return;
                }
                Parcel obtain = Parcel.obtain();
                mediaItem.writeToParcel(obtain, 0);
                this.f.a(obtain);
            }
        }

        i() {
            super();
        }

        public void a() {
            this.b = new q(MediaBrowserServiceCompat.this, this);
            ((MediaBrowserService) this.b).onCreate();
        }

        public void b(String str, android.support.v4.media.o oVar) {
            MediaBrowserServiceCompat.this.b(new a(this, str, oVar));
        }
    }

    class j extends i implements s.c {

        class a extends l {
            final /* synthetic */ s.b f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(j jVar, Object obj, s.b bVar) {
                super(obj);
                this.f = bVar;
            }

            void a(Object obj) {
                ArrayList arrayList;
                List<MediaBrowserCompat.MediaItem> list = (List) obj;
                if (list != null) {
                    arrayList = new ArrayList();
                    for (MediaBrowserCompat.MediaItem mediaItem : list) {
                        Parcel obtain = Parcel.obtain();
                        mediaItem.writeToParcel(obtain, 0);
                        arrayList.add(obtain);
                    }
                } else {
                    arrayList = null;
                }
                this.f.a(arrayList, a());
            }
        }

        j() {
            super();
        }

        public void a() {
            this.b = s.a(MediaBrowserServiceCompat.this, this);
            ((MediaBrowserService) this.b).onCreate();
        }

        public void a(String str, s.b bVar, Bundle bundle) {
            MediaBrowserServiceCompat.this.b(str, new a(this, str, bVar));
        }
    }

    class k implements g {
        private Messenger a;

        k() {
        }

        public IBinder a(Intent intent) {
            if ("android.media.browse.MediaBrowserService".equals(intent.getAction())) {
                return this.a.getBinder();
            }
            return null;
        }

        public void a() {
            this.a = new Messenger(MediaBrowserServiceCompat.this.d);
        }
    }

    public static class l {
        private final Object a;
        private boolean b;
        private boolean c;
        private boolean d;
        private int e;

        l(Object obj) {
            this.a = obj;
        }

        int a() {
            return this.e;
        }

        void a(int i) {
            this.e = i;
        }

        void a(Bundle bundle) {
            StringBuilder a = d.a.a.a.a.a("It is not supported to send an error for ");
            a.append(this.a);
            throw new UnsupportedOperationException(a.toString());
        }

        void a(Object obj) {
            throw null;
        }

        public void b(Bundle bundle) {
            if (this.c || this.d) {
                StringBuilder a = d.a.a.a.a.a("sendError() called when either sendResult() or sendError() had already been called for: ");
                a.append(this.a);
                throw new IllegalStateException(a.toString());
            }
            this.d = true;
            a(bundle);
        }

        public void b(Object obj) {
            if (this.c || this.d) {
                StringBuilder a = d.a.a.a.a.a("sendResult() called when either sendResult() or sendError() had already been called for: ");
                a.append(this.a);
                throw new IllegalStateException(a.toString());
            }
            this.c = true;
            a(obj);
        }

        boolean b() {
            return this.b || this.c || this.d;
        }
    }

    private class m {

        class a implements Runnable {
            final /* synthetic */ n b;
            final /* synthetic */ String c;
            final /* synthetic */ ResultReceiver d;

            a(n nVar, String str, ResultReceiver resultReceiver) {
                this.b = nVar;
                this.c = str;
                this.d = resultReceiver;
            }

            public void run() {
                f fVar = (f) MediaBrowserServiceCompat.this.c.get(((o) this.b).a());
                if (fVar != null) {
                    MediaBrowserServiceCompat.this.a(this.c, fVar, this.d);
                    return;
                }
                StringBuilder a = d.a.a.a.a.a("getMediaItem for callback that isn't registered id=");
                a.append(this.c);
                Log.w("MBServiceCompat", a.toString());
            }
        }

        class b implements Runnable {
            final /* synthetic */ n b;
            final /* synthetic */ String c;
            final /* synthetic */ Bundle d;
            final /* synthetic */ ResultReceiver e;

            b(n nVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.b = nVar;
                this.c = str;
                this.d = bundle;
                this.e = resultReceiver;
            }

            public void run() {
                f fVar = (f) MediaBrowserServiceCompat.this.c.get(((o) this.b).a());
                if (fVar != null) {
                    MediaBrowserServiceCompat.this.b(this.c, this.d, fVar, this.e);
                    return;
                }
                StringBuilder a = d.a.a.a.a.a("search for callback that isn't registered query=");
                a.append(this.c);
                Log.w("MBServiceCompat", a.toString());
            }
        }

        class c implements Runnable {
            final /* synthetic */ n b;
            final /* synthetic */ String c;
            final /* synthetic */ Bundle d;
            final /* synthetic */ ResultReceiver e;

            c(n nVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.b = nVar;
                this.c = str;
                this.d = bundle;
                this.e = resultReceiver;
            }

            public void run() {
                f fVar = (f) MediaBrowserServiceCompat.this.c.get(((o) this.b).a());
                if (fVar != null) {
                    MediaBrowserServiceCompat.this.a(this.c, this.d, fVar, this.e);
                    return;
                }
                StringBuilder a = d.a.a.a.a.a("sendCustomAction for callback that isn't registered action=");
                a.append(this.c);
                a.append(", extras=");
                a.append(this.d);
                Log.w("MBServiceCompat", a.toString());
            }
        }

        m() {
        }

        public void a(String str, Bundle bundle, ResultReceiver resultReceiver, n nVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.d.a(new b(nVar, str, bundle, resultReceiver));
        }

        public void a(String str, ResultReceiver resultReceiver, n nVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.d.a(new a(nVar, str, resultReceiver));
        }

        public void b(String str, Bundle bundle, ResultReceiver resultReceiver, n nVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.d.a(new c(nVar, str, bundle, resultReceiver));
        }
    }

    private interface n {
    }

    private static class o implements n {
        final Messenger a;

        o(Messenger messenger) {
            this.a = messenger;
        }

        private void a(int i, Bundle bundle) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 2;
            obtain.setData(bundle);
            this.a.send(obtain);
        }

        public IBinder a() {
            return this.a.getBinder();
        }

        public void a(String str, List list, Bundle bundle) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            bundle2.putBundle("data_options", bundle);
            if (list != null) {
                bundle2.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList(list));
            }
            a(3, bundle2);
        }

        public void b() {
            a(2, null);
        }
    }

    private final class p extends Handler {
        private final m a;

        p() {
            this.a = MediaBrowserServiceCompat.this.new m();
        }

        public void a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    m mVar = this.a;
                    String string = data.getString("data_package_name");
                    int i = data.getInt("data_calling_uid");
                    Bundle bundle = data.getBundle("data_root_hints");
                    o oVar = new o(message.replyTo);
                    if (MediaBrowserServiceCompat.this.a(string, i)) {
                        MediaBrowserServiceCompat.this.d.a(new android.support.v4.media.g(mVar, oVar, string, bundle, i));
                        return;
                    }
                    throw new IllegalArgumentException("Package/uid mismatch: uid=" + i + " package=" + string);
                case 2:
                    m mVar2 = this.a;
                    MediaBrowserServiceCompat.this.d.a(new android.support.v4.media.h(mVar2, new o(message.replyTo)));
                    return;
                case 3:
                    m mVar3 = this.a;
                    MediaBrowserServiceCompat.this.d.a(new android.support.v4.media.i(mVar3, new o(message.replyTo), data.getString("data_media_item_id"), android.support.v4.app.e.a(data, "data_callback_token"), data.getBundle("data_options")));
                    return;
                case 4:
                    m mVar4 = this.a;
                    MediaBrowserServiceCompat.this.d.a(new android.support.v4.media.j(mVar4, new o(message.replyTo), data.getString("data_media_item_id"), android.support.v4.app.e.a(data, "data_callback_token")));
                    return;
                case 5:
                    this.a.a(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new o(message.replyTo));
                    return;
                case 6:
                    m mVar5 = this.a;
                    MediaBrowserServiceCompat.this.d.a(new android.support.v4.media.k(mVar5, new o(message.replyTo), data.getBundle("data_root_hints")));
                    return;
                case 7:
                    m mVar6 = this.a;
                    MediaBrowserServiceCompat.this.d.a(new android.support.v4.media.l(mVar6, new o(message.replyTo)));
                    return;
                case 8:
                    this.a.a(data.getString("data_search_query"), data.getBundle("data_search_extras"), (ResultReceiver) data.getParcelable("data_result_receiver"), new o(message.replyTo));
                    return;
                case 9:
                    this.a.b(data.getString("data_custom_action"), data.getBundle("data_custom_action_extras"), (ResultReceiver) data.getParcelable("data_result_receiver"), new o(message.replyTo));
                    return;
                default:
                    Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                    return;
            }
        }

        public boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            return super.sendMessageAtTime(message, j);
        }
    }

    List a(List list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i2 = bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i3 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (i2 == -1 && i3 == -1) {
            return list;
        }
        int i4 = i3 * i2;
        int i5 = i4 + i3;
        if (i2 < 0 || i3 < 1 || i4 >= list.size()) {
            return Collections.EMPTY_LIST;
        }
        if (i5 > list.size()) {
            i5 = list.size();
        }
        return list.subList(i4, i5);
    }

    public void a(l lVar) {
        lVar.b((Bundle) null);
    }

    public abstract void a(String str, int i2, Bundle bundle);

    void a(String str, Bundle bundle, f fVar, ResultReceiver resultReceiver) {
        d dVar = new d(this, str, resultReceiver);
        a(dVar);
        if (dVar.b()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }

    void a(String str, f fVar, Bundle bundle) {
        a aVar = new a(str, fVar, str, bundle);
        if (bundle == null) {
            a(str, aVar);
        } else {
            b(str, aVar);
        }
        if (aVar.b()) {
            return;
        }
        StringBuilder a2 = d.a.a.a.a.a("onLoadChildren must call detach() or sendResult() before returning for package=");
        a2.append(fVar.a);
        a2.append(" id=");
        a2.append(str);
        throw new IllegalStateException(a2.toString());
    }

    void a(String str, f fVar, IBinder iBinder, Bundle bundle) {
        ArrayList<b.b.c.d.i> arrayList = (List) fVar.e.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        for (b.b.c.d.i iVar : arrayList) {
            if (iBinder == iVar.a && a.a.g.a(bundle, (Bundle) iVar.b)) {
                return;
            }
        }
        arrayList.add(new b.b.c.d.i(iBinder, bundle));
        fVar.e.put(str, arrayList);
        a(str, fVar, bundle);
    }

    void a(String str, f fVar, ResultReceiver resultReceiver) {
        b bVar = new b(this, str, resultReceiver);
        b(bVar);
        if (!bVar.b()) {
            throw new IllegalStateException(d.a.a.a.a.a("onLoadItem must call detach() or sendResult() before returning for id=", str));
        }
    }

    public abstract void a(String str, l lVar);

    boolean a(String str, int i2) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i2)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    boolean a(String str, f fVar, IBinder iBinder) {
        boolean z = false;
        if (iBinder == null) {
            return fVar.e.remove(str) != null;
        }
        List list = (List) fVar.e.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (iBinder == ((b.b.c.d.i) it.next()).a) {
                    it.remove();
                    z = true;
                }
            }
            if (list.size() == 0) {
                fVar.e.remove(str);
            }
        }
        return z;
    }

    public void b(l lVar) {
        lVar.a(2);
        lVar.b((Object) null);
    }

    void b(String str, Bundle bundle, f fVar, ResultReceiver resultReceiver) {
        c cVar = new c(this, str, resultReceiver);
        c(cVar);
        if (!cVar.b()) {
            throw new IllegalStateException(d.a.a.a.a.a("onSearch must call detach() or sendResult() before returning for query=", str));
        }
    }

    public void b(String str, l lVar) {
        lVar.a(1);
        a(str, lVar);
    }

    public void c(l lVar) {
        lVar.a(4);
        lVar.b((Object) null);
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public IBinder onBind(Intent intent) {
        return this.b.a(intent);
    }

    public void onCreate() {
        super.onCreate();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.b = new j();
        } else if (i2 >= 23) {
            this.b = new i();
        } else if (i2 >= 21) {
            this.b = new h();
        } else {
            this.b = new k();
        }
        this.b.a();
    }
}
