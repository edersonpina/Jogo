.class Landroid/support/v4/media/s;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/s$a;,
        Landroid/support/v4/media/s$b;,
        Landroid/support/v4/media/s$c;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-class v0, Landroid/service/media/MediaBrowserService$Result;

    const-string v1, "mFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/s;->a:Ljava/lang/reflect/Field;

    sget-object v0, Landroid/support/v4/media/s;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_17

    :catch_11
    move-exception v0

    const-string v1, "MBSCompatApi26"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/media/s$c;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroid/support/v4/media/s$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/s$a;-><init>(Landroid/content/Context;Landroid/support/v4/media/s$c;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/reflect/Field;
    .registers 1

    sget-object v0, Landroid/support/v4/media/s;->a:Ljava/lang/reflect/Field;

    return-object v0
.end method
