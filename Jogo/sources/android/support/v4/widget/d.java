package android.support.v4.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.support.v4.widget.e;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;

/* compiled from: CursorAdapter.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public abstract class d extends BaseAdapter implements Filterable, e.a {
    protected boolean b;
    protected boolean c;
    protected Cursor d;
    protected Context e;
    protected int f;
    protected a g;
    protected DataSetObserver h;
    protected e i;

    /* compiled from: CursorAdapter.java */
    private class a extends ContentObserver {
        a() {
            super(new Handler());
        }

        public boolean deliverSelfNotifications() {
            return true;
        }

        public void onChange(boolean z) {
            Cursor cursor;
            d dVar = d.this;
            if (!dVar.c || (cursor = dVar.d) == null || cursor.isClosed()) {
                return;
            }
            dVar.b = dVar.d.requery();
        }
    }

    /* compiled from: CursorAdapter.java */
    private class b extends DataSetObserver {
        b() {
        }

        public void onChanged() {
            d dVar = d.this;
            dVar.b = true;
            dVar.notifyDataSetChanged();
        }

        public void onInvalidated() {
            d dVar = d.this;
            dVar.b = false;
            dVar.notifyDataSetInvalidated();
        }
    }

    public d(Context context, Cursor cursor, boolean z) {
        int i = z ? 1 : 2;
        if ((i & 1) == 1) {
            i |= 2;
            this.c = true;
        } else {
            this.c = false;
        }
        boolean z2 = cursor != null;
        this.d = cursor;
        this.b = z2;
        this.e = context;
        this.f = z2 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.g = new a();
            this.h = new b();
        } else {
            this.g = null;
            this.h = null;
        }
        if (z2) {
            a aVar = this.g;
            if (aVar != null) {
                cursor.registerContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.h;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public Cursor a() {
        return this.d;
    }

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    public void a(Cursor cursor) {
        Cursor cursor2 = this.d;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                a aVar = this.g;
                if (aVar != null) {
                    cursor2.unregisterContentObserver(aVar);
                }
                DataSetObserver dataSetObserver = this.h;
                if (dataSetObserver != null) {
                    cursor2.unregisterDataSetObserver(dataSetObserver);
                }
            }
            this.d = cursor;
            if (cursor != null) {
                a aVar2 = this.g;
                if (aVar2 != null) {
                    cursor.registerContentObserver(aVar2);
                }
                DataSetObserver dataSetObserver2 = this.h;
                if (dataSetObserver2 != null) {
                    cursor.registerDataSetObserver(dataSetObserver2);
                }
                this.f = cursor.getColumnIndexOrThrow("_id");
                this.b = true;
                notifyDataSetChanged();
            } else {
                this.f = -1;
                this.b = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract void a(View view, Context context, Cursor cursor);

    public abstract View b(Context context, Cursor cursor, ViewGroup viewGroup);

    public int getCount() {
        Cursor cursor;
        if (!this.b || (cursor = this.d) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.b) {
            return null;
        }
        this.d.moveToPosition(i);
        if (view == null) {
            view = a(this.e, this.d, viewGroup);
        }
        a(view, this.e, this.d);
        return view;
    }

    public Filter getFilter() {
        if (this.i == null) {
            this.i = new e(this);
        }
        return this.i;
    }

    public Object getItem(int i) {
        Cursor cursor;
        if (!this.b || (cursor = this.d) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.d;
    }

    public long getItemId(int i) {
        Cursor cursor;
        if (this.b && (cursor = this.d) != null && cursor.moveToPosition(i)) {
            return this.d.getLong(this.f);
        }
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.b) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.d.moveToPosition(i)) {
            throw new IllegalStateException(d.a.a.a.a.a("couldn't move cursor to position ", i));
        }
        if (view == null) {
            view = b(this.e, this.d, viewGroup);
        }
        a(view, this.e, this.d);
        return view;
    }
}
