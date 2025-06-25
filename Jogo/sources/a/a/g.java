package a.a;

import android.app.Activity;
import android.app.AppOpsManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: LicenseUtils.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
public class g {
    public static float a(int i) {
        return Float.intBitsToFloat(i & (-16777217));
    }

    public static float a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !a(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    public static int a(int i, int i2) {
        return Build.VERSION.SDK_INT >= 17 ? Gravity.getAbsoluteGravity(i, i2) : i & (-8388609);
    }

    public static int a(Context context, String str) {
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) == -1) {
            return -1;
        }
        String permissionToOp = Build.VERSION.SDK_INT >= 23 ? AppOpsManager.permissionToOp(str) : null;
        if (permissionToOp != null) {
            if (packageName == null) {
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                if (packagesForUid == null || packagesForUid.length <= 0) {
                    return -1;
                }
                packageName = packagesForUid[0];
            }
            if ((Build.VERSION.SDK_INT >= 23 ? ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOp(permissionToOp, packageName) : 1) != 0) {
                return -2;
            }
        }
        return 0;
    }

    public static int a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !a(xmlPullParser, str) ? i2 : typedArray.getColor(i, i2);
    }

    public static Intent a(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        Intent parentActivityIntent = activity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            String b = b(activity, activity.getComponentName());
            if (b == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(activity, b);
            try {
                return b(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + b + "' in manifest");
                return null;
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static Intent a(Context context, ComponentName componentName) {
        String b = b(context, componentName);
        if (b == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), b);
        return b(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public static TypedArray a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static String a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (a(xmlPullParser, str)) {
            return typedArray.getString(i);
        }
        return null;
    }

    public static void a(Object obj, StringBuilder sb) {
        int lastIndexOf;
        if (obj == null) {
            sb.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName.length() <= 0 && (lastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(lastIndexOf + 1);
        }
        sb.append(simpleName);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static boolean a(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        return bundle == null ? bundle2.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1 : bundle2 == null ? bundle.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1 : bundle.getInt("android.media.browse.extra.PAGE", -1) == bundle2.getInt("android.media.browse.extra.PAGE", -1) && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1);
    }

    public static boolean a(String str) {
        return str.contains("H11") || str.contains("H10") || str.contains("F10") || str.contains("G10") || str.contains("I10") || str.contains("H9") || str.contains("I9") || str.contains("G9") || str.equals("F9") || str.contains("I8") || str.contains("H8") || str.contains("G8") || str.contains("NG");
    }

    public static boolean a(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static int b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !a(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    public static TypedValue b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (a(xmlPullParser, str)) {
            return typedArray.peekValue(i);
        }
        return null;
    }

    public static String b(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(d.a.a.a.a.a("keycode cannot be negative, keycode: ", i));
        }
        if (i > 255) {
            throw new IllegalArgumentException(d.a.a.a.a.a("keycode cannot be greater than 255, keycode: ", i));
        }
        if (i == 112) {
            return "Forward Delete";
        }
        switch (i) {
            case 0:
                return "Unknown";
            case 1:
                return "Soft Left";
            case 2:
                return "Soft Right";
            case 3:
                return "Home";
            case 4:
                return "Back";
            case 5:
                return "Call";
            case 6:
                return "End Call";
            case 7:
                return "0";
            case 8:
                return "1";
            case 9:
                return "2";
            case 10:
                return "3";
            case 11:
                return "4";
            case 12:
                return "5";
            case 13:
                return "6";
            case 14:
                return "7";
            case 15:
                return "8";
            case 16:
                return "9";
            case 17:
                return "*";
            case 18:
                return "#";
            case 19:
                return "Up";
            case 20:
                return "Down";
            case 21:
                return "Left";
            case 22:
                return "Right";
            case 23:
                return "Center";
            case 24:
                return "Volume Up";
            case 25:
                return "Volume Down";
            case 26:
                return "Power";
            case 27:
                return "Camera";
            case 28:
                return "Clear";
            case 29:
                return "A";
            case 30:
                return "B";
            case 31:
                return "C";
            case 32:
                return "D";
            case 33:
                return "E";
            case 34:
                return "F";
            case 35:
                return "G";
            case 36:
                return "H";
            case 37:
                return "I";
            case 38:
                return "J";
            case 39:
                return "K";
            case 40:
                return "L";
            case 41:
                return "M";
            case 42:
                return "N";
            case 43:
                return "O";
            case 44:
                return "P";
            case 45:
                return "Q";
            case 46:
                return "R";
            case 47:
                return "S";
            case 48:
                return "T";
            case 49:
                return "U";
            case 50:
                return "V";
            case 51:
                return "W";
            case 52:
                return "X";
            case 53:
                return "Y";
            case 54:
                return "Z";
            case 55:
                return ",";
            case 56:
                return ".";
            case 57:
                return "L-Alt";
            case 58:
                return "R-Alt";
            case 59:
                return "L-Shift";
            case 60:
                return "R-Shift";
            case 61:
                return "Tab";
            case 62:
                return "Space";
            case 63:
                return "SYM";
            case 64:
                return "Explorer";
            case 65:
                return "Envelope";
            case 66:
                return "Enter";
            case 67:
                return "Delete";
            case 68:
                return "`";
            case 69:
                return "-";
            case 70:
                return "=";
            case 71:
                return "[";
            case 72:
                return "]";
            case 73:
                return "\\";
            case 74:
                return ";";
            case 75:
                return "'";
            case 76:
                return "/";
            case 77:
                return "@";
            case 78:
                return "Num";
            case 79:
                return "Headset Hook";
            case 80:
                return "Focus";
            case 81:
                return "Plus";
            case 82:
                return "Menu";
            case 83:
                return "Notification";
            case 84:
                return "Search";
            case 85:
                return "Play/Pause";
            case 86:
                return "Stop Media";
            case 87:
                return "Next Media";
            case 88:
                return "Prev Media";
            case 89:
                return "Rewind";
            case 90:
                return "Fast Forward";
            case 91:
                return "Mute";
            case 92:
                return "Page Up";
            case 93:
                return "Page Down";
            case 94:
                return "PICTSYMBOLS";
            case 95:
                return "SWITCH_CHARSET";
            case 96:
                return "A Button";
            case 97:
                return "B Button";
            case 98:
                return "C Button";
            case 99:
                return "X Button";
            case 100:
                return "Y Button";
            case 101:
                return "Z Button";
            case 102:
                return "L1 Button";
            case 103:
                return "R1 Button";
            case 104:
                return "L2 Button";
            case 105:
                return "R2 Button";
            case 106:
                return "Left Thumb";
            case 107:
                return "Right Thumb";
            case 108:
                return "Start";
            case 109:
                return "Select";
            case 110:
                return "Button Mode";
            default:
                switch (i) {
                    case 129:
                        return "L-Ctrl";
                    case 130:
                        return "R-Ctrl";
                    case 131:
                        return "Escape";
                    case 132:
                        return "End";
                    case 133:
                        return "Insert";
                    default:
                        switch (i) {
                            case 144:
                                return "Numpad 0";
                            case 145:
                                return "Numpad 1";
                            case 146:
                                return "Numpad 2";
                            case 147:
                                return "Numpad 3";
                            case 148:
                                return "Numpad 4";
                            case 149:
                                return "Numpad 5";
                            case 150:
                                return "Numpad 6";
                            case 151:
                                return "Numpad 7";
                            case 152:
                                return "Numpad 8";
                            case 153:
                                return "Numpad 9";
                            default:
                                switch (i) {
                                    case 243:
                                        return ":";
                                    case 244:
                                        return "F1";
                                    case 245:
                                        return "F2";
                                    case 246:
                                        return "F3";
                                    case 247:
                                        return "F4";
                                    case 248:
                                        return "F5";
                                    case 249:
                                        return "F6";
                                    case 250:
                                        return "F7";
                                    case 251:
                                        return "F8";
                                    case 252:
                                        return "F9";
                                    case 253:
                                        return "F10";
                                    case 254:
                                        return "F11";
                                    case 255:
                                        return "F12";
                                    default:
                                        return null;
                                }
                        }
                }
        }
    }

    public static String b(Context context, ComponentName componentName) {
        String string;
        ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(componentName, 128);
        int i = Build.VERSION.SDK_INT;
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        if (activityInfo.metaData == null || (string = activityInfo.metaData.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    public static int c(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !a(xmlPullParser, str) ? i2 : typedArray.getResourceId(i, i2);
    }
}
