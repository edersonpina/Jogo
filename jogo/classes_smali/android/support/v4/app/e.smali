.class public final Landroid/support/v4/app/e;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z


# direct methods
.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    :cond_9
    invoke-static {p0}, Landroid/support/v4/app/j0;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_b
    sget-boolean v0, Landroid/support/v4/app/e;->b:Z

    const/4 v1, 0x0

    const-string v2, "BundleCompatBaseImpl"

    const/4 v3, 0x1

    if-nez v0, :cond_31

    :try_start_13
    const-class v0, Landroid/os/Bundle;

    const-string v4, "getIBinder"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/e;->a:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/support/v4/app/e;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception v0

    const-string v4, "Failed to retrieve getIBinder method"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    sput-boolean v3, Landroid/support/v4/app/e;->b:Z

    :cond_31
    sget-object v0, Landroid/support/v4/app/e;->a:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    if-eqz v0, :cond_4d

    :try_start_36
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_36 .. :try_end_40} :catch_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_40} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_40} :catch_41

    goto :goto_4e

    :catch_41
    move-exception p0

    goto :goto_46

    :catch_43
    move-exception p0

    goto :goto_46

    :catch_45
    move-exception p0

    :goto_46
    const-string p1, "Failed to invoke getIBinder via reflection"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v4, Landroid/support/v4/app/e;->a:Ljava/lang/reflect/Method;

    :cond_4d
    move-object p0, v4

    :goto_4e
    return-object p0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_50

    :cond_a
    sget-boolean v0, Landroid/support/v4/app/e;->d:Z

    const/4 v1, 0x0

    const-string v2, "BundleCompatBaseImpl"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_35

    :try_start_13
    const-class v0, Landroid/os/Bundle;

    const-string v5, "putIBinder"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/e;->c:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/support/v4/app/e;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception v0

    const-string v5, "Failed to retrieve putIBinder method"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    sput-boolean v4, Landroid/support/v4/app/e;->d:Z

    :cond_35
    sget-object v0, Landroid/support/v4/app/e;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_50

    :try_start_39
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_39 .. :try_end_42} :catch_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_42} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_50

    :catch_43
    move-exception p0

    goto :goto_48

    :catch_45
    move-exception p0

    goto :goto_48

    :catch_47
    move-exception p0

    :goto_48
    const-string p1, "Failed to invoke putIBinder via reflection"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    sput-object p0, Landroid/support/v4/app/e;->c:Ljava/lang/reflect/Method;

    :cond_50
    :goto_50
    return-void
.end method
