package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MediaBrowserServiceCompatApi21.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class o {
    MediaBrowserService.Result a;

    o(MediaBrowserService.Result result) {
        this.a = result;
    }

    public void a(Object obj) {
        ArrayList arrayList = null;
        if (!(obj instanceof List)) {
            if (!(obj instanceof Parcel)) {
                this.a.sendResult((Object) null);
                return;
            }
            Parcel parcel = (Parcel) obj;
            parcel.setDataPosition(0);
            this.a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
            parcel.recycle();
            return;
        }
        MediaBrowserService.Result result = this.a;
        List<Parcel> list = (List) obj;
        if (list != null) {
            arrayList = new ArrayList();
            for (Parcel parcel2 : list) {
                parcel2.setDataPosition(0);
                arrayList.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel2));
                parcel2.recycle();
            }
        }
        result.sendResult(arrayList);
    }
}
