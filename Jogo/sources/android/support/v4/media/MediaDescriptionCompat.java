package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();
    private final String b;
    private final CharSequence c;
    private final CharSequence d;
    private final CharSequence e;
    private final Bitmap f;
    private final Uri g;
    private final Bundle h;
    private final Uri i;
    private Object j;

    static class a implements Parcelable.Creator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        public Object[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    }

    public static final class b {
        private String a;
        private CharSequence b;
        private CharSequence c;
        private CharSequence d;
        private Bitmap e;
        private Uri f;
        private Bundle g;
        private Uri h;

        public b a(Bitmap bitmap) {
            this.e = bitmap;
            return this;
        }

        public b a(Uri uri) {
            this.f = uri;
            return this;
        }

        public b a(Bundle bundle) {
            this.g = bundle;
            return this;
        }

        public b a(CharSequence charSequence) {
            this.d = charSequence;
            return this;
        }

        public b a(String str) {
            this.a = str;
            return this;
        }

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
        }

        public b b(Uri uri) {
            this.h = uri;
            return this;
        }

        public b b(CharSequence charSequence) {
            this.c = charSequence;
            return this;
        }

        public b c(CharSequence charSequence) {
            this.b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.b = parcel.readString();
        this.c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f = parcel.readParcelable((ClassLoader) null);
        this.g = parcel.readParcelable((ClassLoader) null);
        this.h = parcel.readBundle();
        this.i = parcel.readParcelable((ClassLoader) null);
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.b = str;
        this.c = charSequence;
        this.d = charSequence2;
        this.e = charSequence3;
        this.f = bitmap;
        this.g = uri;
        this.h = bundle;
        this.i = uri2;
    }

    public static MediaDescriptionCompat a(Object obj) {
        Bundle bundle = null;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        b bVar = new b();
        MediaDescription mediaDescription = (MediaDescription) obj;
        bVar.a(mediaDescription.getMediaId());
        bVar.c(mediaDescription.getTitle());
        bVar.b(mediaDescription.getSubtitle());
        bVar.a(mediaDescription.getDescription());
        bVar.a(mediaDescription.getIconBitmap());
        bVar.a(mediaDescription.getIconUri());
        Bundle extras = mediaDescription.getExtras();
        Uri uri = extras == null ? null : (Uri) extras.getParcelable("android.support.v4.media.description.MEDIA_URI");
        if (uri == null) {
            bundle = extras;
        } else if (!extras.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || extras.size() != 2) {
            extras.remove("android.support.v4.media.description.MEDIA_URI");
            extras.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            bundle = extras;
        }
        bVar.a(bundle);
        if (uri != null) {
            bVar.b(uri);
        } else if (Build.VERSION.SDK_INT >= 23) {
            bVar.b(mediaDescription.getMediaUri());
        }
        MediaDescriptionCompat a2 = bVar.a();
        a2.j = obj;
        return a2;
    }

    public Object a() {
        if (this.j != null || Build.VERSION.SDK_INT < 21) {
            return this.j;
        }
        MediaDescription.Builder builder = new MediaDescription.Builder();
        builder.setMediaId(this.b);
        builder.setTitle(this.c);
        builder.setSubtitle(this.d);
        builder.setDescription(this.e);
        builder.setIconBitmap(this.f);
        builder.setIconUri(this.g);
        Bundle bundle = this.h;
        if (Build.VERSION.SDK_INT < 23 && this.i != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
            }
            bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.i);
        }
        builder.setExtras(bundle);
        if (Build.VERSION.SDK_INT >= 23) {
            builder.setMediaUri(this.i);
        }
        this.j = builder.build();
        return this.j;
    }

    public String b() {
        return this.b;
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.c + ", " + this.d + ", " + this.e;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            ((MediaDescription) a()).writeToParcel(parcel, i);
            return;
        }
        parcel.writeString(this.b);
        TextUtils.writeToParcel(this.c, parcel, i);
        TextUtils.writeToParcel(this.d, parcel, i);
        TextUtils.writeToParcel(this.e, parcel, i);
        parcel.writeParcelable(this.f, i);
        parcel.writeParcelable(this.g, i);
        parcel.writeBundle(this.h);
        parcel.writeParcelable(this.i, i);
    }
}
