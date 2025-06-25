package android.support.v4.media.session;

import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.a;
import android.support.v4.media.session.b;
import android.util.Log;
import android.view.KeyEvent;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class MediaControllerCompat {
    private final b a;
    private final MediaSessionCompat.Token b;

    static class MediaControllerImplApi21 implements b {
        protected final Object a;
        private android.support.v4.media.session.b c;
        private final List b = new ArrayList();
        private HashMap d = new HashMap();

        private static class ExtraBinderRequestResultReceiver extends ResultReceiver {
            private WeakReference b;

            public ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21, Handler handler) {
                super(handler);
                this.b = new WeakReference(mediaControllerImplApi21);
            }

            protected void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = (MediaControllerImplApi21) this.b.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                MediaControllerImplApi21.a(mediaControllerImplApi21, b.a.a(android.support.v4.app.e.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                MediaControllerImplApi21.a(mediaControllerImplApi21);
            }
        }

        private static class a extends a.b {
            a(a aVar) {
                super(aVar);
            }

            public void a() {
                throw new AssertionError();
            }

            public void a(Bundle bundle) {
                throw new AssertionError();
            }

            public void a(MediaMetadataCompat mediaMetadataCompat) {
                throw new AssertionError();
            }

            public void a(ParcelableVolumeInfo parcelableVolumeInfo) {
                throw new AssertionError();
            }

            public void a(CharSequence charSequence) {
                throw new AssertionError();
            }

            public void a(List list) {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.a = new MediaController(context, (MediaSession.Token) token.b());
            if (this.a == null) {
                throw new RemoteException();
            }
            this.c = token.a();
            if (this.c == null) {
                ((MediaController) this.a).sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", (Bundle) null, new ExtraBinderRequestResultReceiver(this, new Handler()));
            }
        }

        static /* synthetic */ android.support.v4.media.session.b a(MediaControllerImplApi21 mediaControllerImplApi21, android.support.v4.media.session.b bVar) {
            mediaControllerImplApi21.c = bVar;
            return bVar;
        }

        private void a() {
            if (this.c == null) {
                return;
            }
            synchronized (this.b) {
                for (a aVar : this.b) {
                    a aVar2 = new a(aVar);
                    this.d.put(aVar, aVar2);
                    aVar.a = true;
                    try {
                        ((b.a.a) this.c).a(aVar2);
                        aVar.i();
                    } catch (RemoteException e) {
                        Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                    }
                }
                this.b.clear();
            }
        }

        static /* synthetic */ void a(MediaControllerImplApi21 mediaControllerImplApi21) {
            mediaControllerImplApi21.a();
        }

        public boolean a(KeyEvent keyEvent) {
            return ((MediaController) this.a).dispatchMediaButtonEvent(keyEvent);
        }
    }

    public static abstract class a implements IBinder.DeathRecipient {
        boolean a;

        private static class a implements android.support.v4.media.session.c {
            private final WeakReference a;

            a(a aVar) {
                this.a = new WeakReference(aVar);
            }

            public void a() {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.g();
                }
            }

            public void a(int i, int i2, int i3, int i4, int i5) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a();
                }
            }

            public void a(Bundle bundle) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.b();
                }
            }

            public void a(CharSequence charSequence) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.f();
                }
            }

            public void a(Object obj) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    MediaMetadataCompat.a(obj);
                    aVar.c();
                }
            }

            public void a(String str, Bundle bundle) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    if (!aVar.a || Build.VERSION.SDK_INT >= 23) {
                        aVar.h();
                    }
                }
            }

            public void a(List list) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    MediaSessionCompat.QueueItem.a(list);
                    aVar.e();
                }
            }

            public void b(Object obj) {
                a aVar = (a) this.a.get();
                if (aVar == null || aVar.a) {
                    return;
                }
                PlaybackStateCompat.a(obj);
                aVar.d();
            }
        }

        private static class b extends a.a {
            private final WeakReference a;

            b(a aVar) {
                this.a = new WeakReference(aVar);
            }

            public void a() {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(8, null, null);
                }
            }

            public void a(int i) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(9, Integer.valueOf(i), null);
                }
            }

            public void a(Bundle bundle) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(7, bundle, null);
                }
            }

            public void a(MediaMetadataCompat mediaMetadataCompat) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(3, mediaMetadataCompat, null);
                }
            }

            public void a(ParcelableVolumeInfo parcelableVolumeInfo) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(4, parcelableVolumeInfo != null ? new f(parcelableVolumeInfo.b, parcelableVolumeInfo.c, parcelableVolumeInfo.d, parcelableVolumeInfo.e, parcelableVolumeInfo.f) : null, null);
                }
            }

            public void a(PlaybackStateCompat playbackStateCompat) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(2, playbackStateCompat, null);
                }
            }

            public void a(CharSequence charSequence) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(6, charSequence, null);
                }
            }

            public void a(String str, Bundle bundle) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(1, str, bundle);
                }
            }

            public void a(List list) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(5, list, null);
                }
            }

            public void a(boolean z) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(11, Boolean.valueOf(z), null);
                }
            }

            public void b() {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(13, null, null);
                }
            }

            public void b(int i) {
                a aVar = (a) this.a.get();
                if (aVar != null) {
                    aVar.a(12, Integer.valueOf(i), null);
                }
            }
        }

        public a() {
            if (Build.VERSION.SDK_INT >= 21) {
                new android.support.v4.media.session.d(new a(this));
            } else {
                new b(this);
            }
        }

        public void a() {
        }

        void a(int i, Object obj, Bundle bundle) {
        }

        public void b() {
        }

        public void binderDied() {
            g();
        }

        public void c() {
        }

        public void d() {
        }

        public void e() {
        }

        public void f() {
        }

        public void g() {
        }

        public void h() {
        }

        public void i() {
        }
    }

    interface b {
        boolean a(KeyEvent keyEvent);
    }

    static class c extends MediaControllerImplApi21 {
        public c(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    static class d extends c {
        public d(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    static class e implements b {
        private android.support.v4.media.session.b a;

        public e(MediaSessionCompat.Token token) {
            this.a = b.a.a((IBinder) token.b());
        }

        public boolean a(KeyEvent keyEvent) {
            if (keyEvent == null) {
                throw new IllegalArgumentException("event may not be null.");
            }
            try {
                ((b.a.a) this.a).a(keyEvent);
                return false;
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in dispatchMediaButtonEvent.", e);
                return false;
            }
        }
    }

    public static final class f {
        f(int i, int i2, int i3, int i4, int i5) {
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        new HashSet();
        if (token == null) {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
        this.b = token;
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            this.a = new d(context, token);
            return;
        }
        if (i >= 23) {
            this.a = new c(context, token);
        } else if (i >= 21) {
            this.a = new MediaControllerImplApi21(context, token);
        } else {
            this.a = new e(this.b);
        }
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.a.a(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }
}
