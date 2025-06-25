package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;

/* compiled from: CursorFilter.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class e extends Filter {
    a a;

    /* compiled from: CursorFilter.java */
    interface a {
        Cursor a(CharSequence charSequence);

        void a(Cursor cursor);

        CharSequence b(Cursor cursor);
    }

    e(a aVar) {
        this.a = aVar;
    }

    public CharSequence convertResultToString(Object obj) {
        return this.a.b((Cursor) obj);
    }

    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor a2 = this.a.a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (a2 != null) {
            filterResults.count = a2.getCount();
            filterResults.values = a2;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        a aVar = this.a;
        Cursor cursor = ((d) aVar).d;
        Object obj = filterResults.values;
        if (obj == null || obj == cursor) {
            return;
        }
        aVar.a((Cursor) obj);
    }
}
