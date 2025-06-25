package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: ResourceCursorAdapter.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public abstract class j extends d {
    private int j;
    private int k;
    private LayoutInflater l;

    @Deprecated
    public j(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.k = i;
        this.j = i;
        this.l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.l.inflate(this.k, viewGroup, false);
    }

    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.l.inflate(this.j, viewGroup, false);
    }
}
