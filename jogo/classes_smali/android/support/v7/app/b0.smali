.class Landroid/support/v7/app/b0;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/b0$a;
    }
.end annotation


# static fields
.field private static d:Landroid/support/v7/app/b0;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/location/LocationManager;

.field private final c:Landroid/support/v7/app/b0$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/app/b0$a;

    invoke-direct {v0}, Landroid/support/v7/app/b0$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/b0;->c:Landroid/support/v7/app/b0$a;

    iput-object p1, p0, Landroid/support/v7/app/b0;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/app/b0;->b:Landroid/location/LocationManager;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/location/Location;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/b0;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v7/app/b0;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    const-string v0, "TwilightManager"

    const-string v1, "Failed to get last known location"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method static a(Landroid/content/Context;)Landroid/support/v7/app/b0;
    .registers 3

    sget-object v0, Landroid/support/v7/app/b0;->d:Landroid/support/v7/app/b0;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/support/v7/app/b0;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/b0;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Landroid/support/v7/app/b0;->d:Landroid/support/v7/app/b0;

    :cond_17
    sget-object p0, Landroid/support/v7/app/b0;->d:Landroid/support/v7/app/b0;

    return-object p0
.end method


# virtual methods
.method a()Z
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/app/b0;->c:Landroid/support/v7/app/b0$a;

    iget-wide v2, v1, Landroid/support/v7/app/b0$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-lez v8, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_18

    iget-boolean v1, v1, Landroid/support/v7/app/b0$a;->a:Z

    return v1

    :cond_18
    iget-object v2, v0, Landroid/support/v7/app/b0;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, La/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2a

    const-string v2, "network"

    invoke-direct {v0, v2}, Landroid/support/v7/app/b0;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    move-object v2, v3

    :goto_2b
    iget-object v4, v0, Landroid/support/v7/app/b0;->a:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v4, v5}, La/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3b

    const-string v3, "gps"

    invoke-direct {v0, v3}, Landroid/support/v7/app/b0;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    :cond_3b
    if-eqz v3, :cond_4d

    if-eqz v2, :cond_4d

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-lez v10, :cond_50

    :goto_4b
    move-object v2, v3

    goto :goto_50

    :cond_4d
    if-eqz v3, :cond_50

    goto :goto_4b

    :cond_50
    :goto_50
    if-eqz v2, :cond_d8

    iget-object v3, v0, Landroid/support/v7/app/b0;->c:Landroid/support/v7/app/b0$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/support/v7/app/a0;->a()Landroid/support/v7/app/a0;

    move-result-object v15

    const-wide/32 v16, 0x5265c00

    sub-long v9, v4, v16

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    move-object v8, v15

    invoke-virtual/range {v8 .. v14}, Landroid/support/v7/app/a0;->a(JDD)V

    iget-wide v13, v15, Landroid/support/v7/app/a0;->a:J

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-wide v9, v4

    move-wide/from16 v20, v13

    move-wide/from16 v13, v18

    invoke-virtual/range {v8 .. v14}, Landroid/support/v7/app/a0;->a(JDD)V

    iget v8, v15, Landroid/support/v7/app/a0;->c:I

    if-ne v8, v7, :cond_84

    const/4 v6, 0x1

    :cond_84
    iget-wide v13, v15, Landroid/support/v7/app/a0;->b:J

    iget-wide v11, v15, Landroid/support/v7/app/a0;->a:J

    add-long v9, v4, v16

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object v8, v15

    move-object v2, v1

    move-wide v0, v11

    move-wide/from16 v11, v16

    move-object v7, v2

    move-object/from16 v16, v3

    move-wide v2, v13

    move-wide/from16 v13, v18

    invoke-virtual/range {v8 .. v14}, Landroid/support/v7/app/a0;->a(JDD)V

    iget-wide v8, v15, Landroid/support/v7/app/a0;->b:J

    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    cmp-long v14, v2, v12

    if-eqz v14, :cond_c1

    cmp-long v14, v0, v12

    if-nez v14, :cond_af

    goto :goto_c1

    :cond_af
    cmp-long v12, v4, v0

    if-lez v12, :cond_b5

    add-long/2addr v10, v8

    goto :goto_bc

    :cond_b5
    cmp-long v12, v4, v2

    if-lez v12, :cond_bb

    add-long/2addr v10, v0

    goto :goto_bc

    :cond_bb
    add-long/2addr v10, v2

    :goto_bc
    const-wide/32 v4, 0xea60

    add-long/2addr v10, v4

    goto :goto_c5

    :cond_c1
    :goto_c1
    const-wide/32 v10, 0x2932e00

    add-long/2addr v10, v4

    :goto_c5
    move-object/from16 v4, v16

    iput-boolean v6, v4, Landroid/support/v7/app/b0$a;->a:Z

    move-wide/from16 v5, v20

    iput-wide v5, v4, Landroid/support/v7/app/b0$a;->b:J

    iput-wide v2, v4, Landroid/support/v7/app/b0$a;->c:J

    iput-wide v0, v4, Landroid/support/v7/app/b0$a;->d:J

    iput-wide v8, v4, Landroid/support/v7/app/b0$a;->e:J

    iput-wide v10, v4, Landroid/support/v7/app/b0$a;->f:J

    iget-boolean v0, v7, Landroid/support/v7/app/b0$a;->a:Z

    return v0

    :cond_d8
    const-string v0, "TwilightManager"

    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_f0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_f1

    :cond_f0
    const/4 v6, 0x1

    :cond_f1
    return v6
.end method
