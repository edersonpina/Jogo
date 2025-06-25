package android.support.v4.content.e;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Base64;
import android.util.Xml;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: FontResourcesParserCompat.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class a {

    /* compiled from: FontResourcesParserCompat.java */
    public interface a {
    }

    /* compiled from: FontResourcesParserCompat.java */
    public static final class b implements a {
        private final c[] a;

        public b(c[] cVarArr) {
            this.a = cVarArr;
        }

        public c[] a() {
            return this.a;
        }
    }

    /* compiled from: FontResourcesParserCompat.java */
    public static final class c {
        private final String a;
        private int b;
        private boolean c;
        private int d;

        public c(String str, int i, boolean z, int i2) {
            this.a = str;
            this.b = i;
            this.c = z;
            this.d = i2;
        }

        public String a() {
            return this.a;
        }

        public int b() {
            return this.d;
        }

        public int c() {
            return this.b;
        }

        public boolean d() {
            return this.c;
        }
    }

    /* compiled from: FontResourcesParserCompat.java */
    public static final class d implements a {
        private final b.b.c.c.a a;
        private final int b;
        private final int c;

        public d(b.b.c.c.a aVar, int i, int i2) {
            this.a = aVar;
            this.c = i;
            this.b = i2;
        }

        public int a() {
            return this.c;
        }

        public b.b.c.c.a b() {
            return this.a;
        }

        public int c() {
            return this.b;
        }
    }

    public static a a(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        xmlPullParser.require(2, (String) null, "font-family");
        if (!xmlPullParser.getName().equals("font-family")) {
            a(xmlPullParser);
            return null;
        }
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), b.b.a.b.FontFamily);
        String string = obtainAttributes.getString(b.b.a.b.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(b.b.a.b.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(b.b.a.b.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(b.b.a.b.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(b.b.a.b.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(b.b.a.b.FontFamily_fontProviderFetchTimeout, 500);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                a(xmlPullParser);
            }
            return new d(new b.b.c.c.a(string, string2, string3, a(resources, resourceId)), integer, integer2);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), b.b.a.b.FontFamilyFont);
                    int i = obtainAttributes2.getInt(obtainAttributes2.hasValue(b.b.a.b.FontFamilyFont_fontWeight) ? b.b.a.b.FontFamilyFont_fontWeight : b.b.a.b.FontFamilyFont_android_fontWeight, 400);
                    boolean z = 1 == obtainAttributes2.getInt(obtainAttributes2.hasValue(b.b.a.b.FontFamilyFont_fontStyle) ? b.b.a.b.FontFamilyFont_fontStyle : b.b.a.b.FontFamilyFont_android_fontStyle, 0);
                    int i2 = obtainAttributes2.hasValue(b.b.a.b.FontFamilyFont_font) ? b.b.a.b.FontFamilyFont_font : b.b.a.b.FontFamilyFont_android_font;
                    int resourceId2 = obtainAttributes2.getResourceId(i2, 0);
                    String string4 = obtainAttributes2.getString(i2);
                    obtainAttributes2.recycle();
                    while (xmlPullParser.next() != 3) {
                        a(xmlPullParser);
                    }
                    arrayList.add(new c(string4, i, z, resourceId2));
                } else {
                    a(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new b((c[]) arrayList.toArray(new c[arrayList.size()]));
    }

    public static List a(Resources resources, int i) {
        ArrayList arrayList = null;
        if (i != 0) {
            TypedArray obtainTypedArray = resources.obtainTypedArray(i);
            if (obtainTypedArray.length() > 0) {
                arrayList = new ArrayList();
                if (obtainTypedArray.getResourceId(0, 0) != 0) {
                    for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                        arrayList.add(a(resources.getStringArray(obtainTypedArray.getResourceId(i2, 0))));
                    }
                } else {
                    arrayList.add(a(resources.getStringArray(i)));
                }
            }
            obtainTypedArray.recycle();
        }
        return arrayList != null ? arrayList : Collections.emptyList();
    }

    private static List a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    private static void a(XmlPullParser xmlPullParser) {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }
}
