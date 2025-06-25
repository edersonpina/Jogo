package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserServiceCompat;
import android.util.Log;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: MediaBrowserServiceCompatApi26.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class s {
    private static Field a;

    /* compiled from: MediaBrowserServiceCompatApi26.java */
    static class a extends q {
        a(Context context, c cVar) {
            super(context, cVar);
        }

        public void onLoadChildren(String str, MediaBrowserService.Result result, Bundle bundle) {
            ((MediaBrowserServiceCompat.j) this.b).a(str, new b(result), bundle);
        }
    }

    /* compiled from: MediaBrowserServiceCompatApi26.java */
    static class b {
        MediaBrowserService.Result a;

        b(MediaBrowserService.Result result) {
            this.a = result;
        }

        public void a(List list, int i) {
            ArrayList arrayList;
            try {
                s.a().setInt(this.a, i);
            } catch (IllegalAccessException e) {
                Log.w("MBSCompatApi26", e);
            }
            MediaBrowserService.Result result = this.a;
            if (list == null) {
                arrayList = null;
            } else {
                ArrayList arrayList2 = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Parcel parcel = (Parcel) it.next();
                    parcel.setDataPosition(0);
                    arrayList2.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                    parcel.recycle();
                }
                arrayList = arrayList2;
            }
            result.sendResult(arrayList);
        }
    }

    /* compiled from: MediaBrowserServiceCompatApi26.java */
    public interface c extends r {
    }

    static {
        try {
            a = MediaBrowserService.Result.class.getDeclaredField("mFlags");
            a.setAccessible(true);
        } catch (NoSuchFieldException e) {
            Log.w("MBSCompatApi26", e);
        }
    }

    public static Object a(Context context, c cVar) {
        return new a(context, cVar);
    }

    static /* synthetic */ Field a() {
        return a;
    }
}
