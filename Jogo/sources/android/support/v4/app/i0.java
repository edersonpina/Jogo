package android.support.v4.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: NotificationCompatBuilder.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class i0 implements d0 {
    private final Notification.Builder a;
    private final g0 b;
    private RemoteViews c;
    private RemoteViews d;
    private final List e = new ArrayList();
    private final Bundle f = new Bundle();
    private int g;
    private RemoteViews h;

    i0(g0 g0Var) {
        ArrayList arrayList;
        this.b = g0Var;
        if (Build.VERSION.SDK_INT >= 26) {
            this.a = new Notification.Builder(g0Var.a, g0Var.H);
        } else {
            this.a = new Notification.Builder(g0Var.a);
        }
        Notification notification = g0Var.M;
        this.a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, g0Var.g).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(g0Var.c).setContentText(g0Var.d).setContentInfo(g0Var.i).setContentIntent(g0Var.e).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(g0Var.f, (notification.flags & 128) != 0).setLargeIcon(g0Var.h).setNumber(g0Var.j).setProgress(g0Var.q, g0Var.r, g0Var.s);
        int i = Build.VERSION.SDK_INT;
        this.a.setSubText(g0Var.o).setUsesChronometer(g0Var.m).setPriority(g0Var.k);
        Iterator it = g0Var.b.iterator();
        while (it.hasNext()) {
            e0 e0Var = (e0) it.next();
            if (Build.VERSION.SDK_INT >= 20) {
                Notification.Action.Builder builder = new Notification.Action.Builder(e0Var.d(), e0Var.f(), e0Var.a());
                if (e0Var.e() != null) {
                    l0[] e = e0Var.e();
                    RemoteInput[] remoteInputArr = null;
                    if (e != null) {
                        RemoteInput[] remoteInputArr2 = new RemoteInput[e.length];
                        if (e.length > 0) {
                            l0 l0Var = e[0];
                            throw null;
                        }
                        remoteInputArr = remoteInputArr2;
                    }
                    for (RemoteInput remoteInput : remoteInputArr) {
                        builder.addRemoteInput(remoteInput);
                    }
                }
                Bundle bundle = e0Var.a;
                Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
                bundle2.putBoolean("android.support.allowGeneratedReplies", e0Var.b());
                if (Build.VERSION.SDK_INT >= 24) {
                    builder.setAllowGeneratedReplies(e0Var.b());
                }
                builder.addExtras(bundle2);
                this.a.addAction(builder.build());
            } else {
                this.e.add(j0.a(this.a, e0Var));
            }
        }
        Bundle bundle3 = g0Var.A;
        if (bundle3 != null) {
            this.f.putAll(bundle3);
        }
        if (Build.VERSION.SDK_INT < 20) {
            if (g0Var.w) {
                this.f.putBoolean("android.support.localOnly", true);
            }
            String str = g0Var.t;
            if (str != null) {
                this.f.putString("android.support.groupKey", str);
                if (g0Var.u) {
                    this.f.putBoolean("android.support.isGroupSummary", true);
                } else {
                    this.f.putBoolean("android.support.useSideChannel", true);
                }
            }
            String str2 = g0Var.v;
            if (str2 != null) {
                this.f.putString("android.support.sortKey", str2);
            }
        }
        this.c = g0Var.E;
        this.d = g0Var.F;
        if (Build.VERSION.SDK_INT >= 19) {
            this.a.setShowWhen(g0Var.l);
            if (Build.VERSION.SDK_INT < 21 && (arrayList = g0Var.N) != null && !arrayList.isEmpty()) {
                Bundle bundle4 = this.f;
                ArrayList arrayList2 = g0Var.N;
                bundle4.putStringArray("android.people", (String[]) arrayList2.toArray(new String[arrayList2.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.a.setLocalOnly(g0Var.w).setGroup(g0Var.t).setGroupSummary(g0Var.u).setSortKey(g0Var.v);
            this.g = g0Var.L;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.a.setCategory(g0Var.z).setColor(g0Var.B).setVisibility(g0Var.C).setPublicVersion(g0Var.D);
            Iterator it2 = g0Var.N.iterator();
            while (it2.hasNext()) {
                this.a.addPerson((String) it2.next());
            }
            this.h = g0Var.G;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.a.setExtras(g0Var.A).setRemoteInputHistory(g0Var.p);
            RemoteViews remoteViews = g0Var.E;
            if (remoteViews != null) {
                this.a.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = g0Var.F;
            if (remoteViews2 != null) {
                this.a.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = g0Var.G;
            if (remoteViews3 != null) {
                this.a.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.a.setBadgeIconType(g0Var.I).setShortcutId(g0Var.J).setTimeoutAfter(g0Var.K).setGroupAlertBehavior(g0Var.L);
            if (g0Var.y) {
                this.a.setColorized(g0Var.x);
            }
        }
    }

    private void a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }

    public Notification a() {
        Notification build;
        h0 h0Var = this.b.n;
        if (h0Var != null) {
            h0Var.a(this);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            build = this.a.build();
        } else if (i >= 24) {
            build = this.a.build();
            if (this.g != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && this.g == 2) {
                    a(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.g == 1) {
                    a(build);
                }
            }
        } else if (i >= 21) {
            this.a.setExtras(this.f);
            build = this.a.build();
            RemoteViews remoteViews = this.c;
            if (remoteViews != null) {
                build.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.d;
            if (remoteViews2 != null) {
                build.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.h;
            if (remoteViews3 != null) {
                build.headsUpContentView = remoteViews3;
            }
            if (this.g != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && this.g == 2) {
                    a(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.g == 1) {
                    a(build);
                }
            }
        } else if (i >= 20) {
            this.a.setExtras(this.f);
            build = this.a.build();
            RemoteViews remoteViews4 = this.c;
            if (remoteViews4 != null) {
                build.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.d;
            if (remoteViews5 != null) {
                build.bigContentView = remoteViews5;
            }
            if (this.g != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && this.g == 2) {
                    a(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.g == 1) {
                    a(build);
                }
            }
        } else if (i >= 19) {
            SparseArray a = j0.a(this.e);
            if (a != null) {
                this.f.putSparseParcelableArray("android.support.actionExtras", a);
            }
            this.a.setExtras(this.f);
            build = this.a.build();
            RemoteViews remoteViews6 = this.c;
            if (remoteViews6 != null) {
                build.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.d;
            if (remoteViews7 != null) {
                build.bigContentView = remoteViews7;
            }
        } else {
            build = this.a.build();
            Bundle a2 = e.a(build);
            Bundle bundle = new Bundle(this.f);
            for (String str : this.f.keySet()) {
                if (a2.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a2.putAll(bundle);
            SparseArray a3 = j0.a(this.e);
            if (a3 != null) {
                e.a(build).putSparseParcelableArray("android.support.actionExtras", a3);
            }
            RemoteViews remoteViews8 = this.c;
            if (remoteViews8 != null) {
                build.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.d;
            if (remoteViews9 != null) {
                build.bigContentView = remoteViews9;
            }
        }
        RemoteViews remoteViews10 = this.b.E;
        if (remoteViews10 != null) {
            build.contentView = remoteViews10;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (Build.VERSION.SDK_INT >= 21 && h0Var != null) {
            this.b.n.a();
        }
        int i3 = Build.VERSION.SDK_INT;
        if (h0Var != null) {
            e.a(build);
        }
        return build;
    }

    public Notification.Builder b() {
        return this.a;
    }
}
