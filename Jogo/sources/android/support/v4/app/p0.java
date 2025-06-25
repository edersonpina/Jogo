package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: TaskStackBuilder.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public final class p0 implements Iterable {
    private final ArrayList b = new ArrayList();
    private final Context c;

    /* compiled from: TaskStackBuilder.java */
    public interface a {
        Intent a();
    }

    static {
        int i = Build.VERSION.SDK_INT;
    }

    private p0(Context context) {
        this.c = context;
    }

    public static p0 a(Context context) {
        return new p0(context);
    }

    public p0 a(Activity activity) {
        Intent a2 = activity instanceof a ? ((a) activity).a() : null;
        if (a2 == null) {
            a2 = a.a.g.a(activity);
        }
        if (a2 != null) {
            ComponentName component = a2.getComponent();
            if (component == null) {
                component = a2.resolveActivity(this.c.getPackageManager());
            }
            int size = this.b.size();
            try {
                Intent a3 = a.a.g.a(this.c, component);
                while (a3 != null) {
                    this.b.add(size, a3);
                    a3 = a.a.g.a(this.c, a3.getComponent());
                }
                this.b.add(a2);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(e);
            }
        }
        return this;
    }

    public void a() {
        if (this.b.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        ArrayList arrayList = this.b;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        android.support.v4.content.b.a(this.c, intentArr, null);
    }

    @Deprecated
    public Iterator iterator() {
        return this.b.iterator();
    }
}
