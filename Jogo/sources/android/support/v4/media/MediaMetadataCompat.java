package android.support.v4.media;

import android.media.MediaMetadata;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator CREATOR;
    static final b.b.c.d.a d = new b.b.c.d.a();
    final Bundle b;
    private Object c;

    static class a implements Parcelable.Creator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel);
        }

        public Object[] newArray(int i) {
            return new MediaMetadataCompat[i];
        }
    }

    static {
        d.put("android.media.metadata.TITLE", 1);
        d.put("android.media.metadata.ARTIST", 1);
        d.put("android.media.metadata.DURATION", 0);
        d.put("android.media.metadata.ALBUM", 1);
        d.put("android.media.metadata.AUTHOR", 1);
        d.put("android.media.metadata.WRITER", 1);
        d.put("android.media.metadata.COMPOSER", 1);
        d.put("android.media.metadata.COMPILATION", 1);
        d.put("android.media.metadata.DATE", 1);
        d.put("android.media.metadata.YEAR", 0);
        d.put("android.media.metadata.GENRE", 1);
        d.put("android.media.metadata.TRACK_NUMBER", 0);
        d.put("android.media.metadata.NUM_TRACKS", 0);
        d.put("android.media.metadata.DISC_NUMBER", 0);
        d.put("android.media.metadata.ALBUM_ARTIST", 1);
        d.put("android.media.metadata.ART", 2);
        d.put("android.media.metadata.ART_URI", 1);
        d.put("android.media.metadata.ALBUM_ART", 2);
        d.put("android.media.metadata.ALBUM_ART_URI", 1);
        d.put("android.media.metadata.USER_RATING", 3);
        d.put("android.media.metadata.RATING", 3);
        d.put("android.media.metadata.DISPLAY_TITLE", 1);
        d.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        d.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        d.put("android.media.metadata.DISPLAY_ICON", 2);
        d.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        d.put("android.media.metadata.MEDIA_ID", 1);
        d.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        d.put("android.media.metadata.MEDIA_URI", 1);
        d.put("android.media.metadata.ADVERTISEMENT", 0);
        d.put("android.media.metadata.DOWNLOAD_STATUS", 0);
        String[] strArr = {"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};
        String[] strArr2 = {"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};
        String[] strArr3 = {"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};
        CREATOR = new a();
    }

    MediaMetadataCompat(Parcel parcel) {
        this.b = parcel.readBundle();
        this.b.setClassLoader(MediaMetadataCompat.class.getClassLoader());
    }

    public static MediaMetadataCompat a(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        ((MediaMetadata) obj).writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        MediaMetadataCompat mediaMetadataCompat = (MediaMetadataCompat) CREATOR.createFromParcel(obtain);
        obtain.recycle();
        mediaMetadataCompat.c = obj;
        return mediaMetadataCompat;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.b);
    }
}
