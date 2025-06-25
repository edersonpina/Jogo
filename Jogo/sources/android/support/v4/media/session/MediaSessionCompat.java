package android.support.v4.media.session;

import android.media.session.MediaSession;
import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class MediaSessionCompat {

    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator CREATOR = new a();
        private final MediaDescriptionCompat b;
        private final long c;

        static class a implements Parcelable.Creator {
            a() {
            }

            public Object createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            public Object[] newArray(int i) {
                return new QueueItem[i];
            }
        }

        QueueItem(Parcel parcel) {
            this.b = (MediaDescriptionCompat) MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.c = parcel.readLong();
        }

        private QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null.");
            }
            if (j == -1) {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
            this.b = mediaDescriptionCompat;
            this.c = j;
        }

        public static List a(List list) {
            QueueItem queueItem;
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (obj == null || Build.VERSION.SDK_INT < 21) {
                    queueItem = null;
                } else {
                    MediaSession.QueueItem queueItem2 = (MediaSession.QueueItem) obj;
                    queueItem = new QueueItem(obj, MediaDescriptionCompat.a(queueItem2.getDescription()), queueItem2.getQueueId());
                }
                arrayList.add(queueItem);
            }
            return arrayList;
        }

        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder a2 = d.a.a.a.a.a("MediaSession.QueueItem {Description=");
            a2.append(this.b);
            a2.append(", Id=");
            a2.append(this.c);
            a2.append(" }");
            return a2.toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            this.b.writeToParcel(parcel, i);
            parcel.writeLong(this.c);
        }
    }

    static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator CREATOR = new a();
        private ResultReceiver b;

        static class a implements Parcelable.Creator {
            a() {
            }

            public Object createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            public Object[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        }

        ResultReceiverWrapper(Parcel parcel) {
            this.b = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            this.b.writeToParcel(parcel, i);
        }
    }

    public static final class Token implements Parcelable {
        public static final Parcelable.Creator CREATOR = new a();
        private final Object b;
        private final b c;

        static class a implements Parcelable.Creator {
            a() {
            }

            public Object createFromParcel(Parcel parcel) {
                return new Token(Build.VERSION.SDK_INT >= 21 ? parcel.readParcelable((ClassLoader) null) : parcel.readStrongBinder(), null);
            }

            public Object[] newArray(int i) {
                return new Token[i];
            }
        }

        Token(Object obj, b bVar) {
            this.b = obj;
            this.c = bVar;
        }

        public static Token a(Object obj, b bVar) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            if (obj instanceof MediaSession.Token) {
                return new Token(obj, bVar);
            }
            throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
        }

        public b a() {
            return this.c;
        }

        public Object b() {
            return this.b;
        }

        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.b;
            if (obj2 == null) {
                return token.b == null;
            }
            Object obj3 = token.b;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public int hashCode() {
            Object obj = this.b;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.b, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.b);
            }
        }
    }
}
