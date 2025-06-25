package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();
    final int b;
    final long c;
    final long d;
    final float e;
    final long f;
    final int g;
    final CharSequence h;
    final long i;
    List j;
    final long k;
    final Bundle l;

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator CREATOR = new a();
        private final String b;
        private final CharSequence c;
        private final int d;
        private final Bundle e;

        static class a implements Parcelable.Creator {
            a() {
            }

            public Object createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            public Object[] newArray(int i) {
                return new CustomAction[i];
            }
        }

        CustomAction(Parcel parcel) {
            this.b = parcel.readString();
            this.c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.d = parcel.readInt();
            this.e = parcel.readBundle();
        }

        CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.b = str;
            this.c = charSequence;
            this.d = i;
            this.e = bundle;
        }

        public static CustomAction a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) obj;
            return new CustomAction(customAction.getAction(), customAction.getName(), customAction.getIcon(), customAction.getExtras());
        }

        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder a2 = d.a.a.a.a.a("Action:mName='");
            a2.append(this.c);
            a2.append(", mIcon=");
            a2.append(this.d);
            a2.append(", mExtras=");
            a2.append(this.e);
            return a2.toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.b);
            TextUtils.writeToParcel(this.c, parcel, i);
            parcel.writeInt(this.d);
            parcel.writeBundle(this.e);
        }
    }

    static class a implements Parcelable.Creator {
        a() {
        }

        public Object createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        public Object[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    }

    PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List list, long j5, Bundle bundle) {
        this.b = i;
        this.c = j;
        this.d = j2;
        this.e = f;
        this.f = j3;
        this.g = i2;
        this.h = charSequence;
        this.i = j4;
        this.j = new ArrayList(list);
        this.k = j5;
        this.l = bundle;
    }

    PlaybackStateCompat(Parcel parcel) {
        this.b = parcel.readInt();
        this.c = parcel.readLong();
        this.e = parcel.readFloat();
        this.i = parcel.readLong();
        this.d = parcel.readLong();
        this.f = parcel.readLong();
        this.h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.k = parcel.readLong();
        this.l = parcel.readBundle();
        this.g = parcel.readInt();
    }

    public static PlaybackStateCompat a(Object obj) {
        List list;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        PlaybackState playbackState = (PlaybackState) obj;
        List customActions = playbackState.getCustomActions();
        if (customActions != null) {
            List arrayList = new ArrayList(customActions.size());
            Iterator it = customActions.iterator();
            while (it.hasNext()) {
                arrayList.add(CustomAction.a(it.next()));
            }
            list = arrayList;
        } else {
            list = null;
        }
        return new PlaybackStateCompat(playbackState.getState(), playbackState.getPosition(), playbackState.getBufferedPosition(), playbackState.getPlaybackSpeed(), playbackState.getActions(), 0, playbackState.getErrorMessage(), playbackState.getLastPositionUpdateTime(), list, playbackState.getActiveQueueItemId(), Build.VERSION.SDK_INT >= 22 ? playbackState.getExtras() : null);
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.b + ", position=" + this.c + ", buffered position=" + this.d + ", speed=" + this.e + ", updated=" + this.i + ", actions=" + this.f + ", error code=" + this.g + ", error message=" + this.h + ", custom actions=" + this.j + ", active item id=" + this.k + "}";
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeLong(this.c);
        parcel.writeFloat(this.e);
        parcel.writeLong(this.i);
        parcel.writeLong(this.d);
        parcel.writeLong(this.f);
        TextUtils.writeToParcel(this.h, parcel, i);
        parcel.writeTypedList(this.j);
        parcel.writeLong(this.k);
        parcel.writeBundle(this.l);
        parcel.writeInt(this.g);
    }
}
