.class Landroid/support/v4/app/j0;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/j0;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Notification$Builder;Landroid/support/v4/app/e0;)Landroid/os/Bundle;
    .registers 5

    iget v0, p1, Landroid/support/v4/app/e0;->e:I

    iget-object v1, p1, Landroid/support/v4/app/e0;->f:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/support/v4/app/e0;->g:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance p0, Landroid/os/Bundle;

    iget-object v0, p1, Landroid/support/v4/app/e0;->a:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/support/v4/app/e0;->e()[Landroid/support/v4/app/l0;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/support/v4/app/e0;->e()[Landroid/support/v4/app/l0;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/j0;->a([Landroid/support/v4/app/l0;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.remoteInputs"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_23
    invoke-virtual {p1}, Landroid/support/v4/app/e0;->c()[Landroid/support/v4/app/l0;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/support/v4/app/e0;->c()[Landroid/support/v4/app/l0;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/j0;->a([Landroid/support/v4/app/l0;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.dataRemoteInputs"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_36
    invoke-virtual {p1}, Landroid/support/v4/app/e0;->b()Z

    move-result p1

    const-string v0, "android.support.allowGeneratedReplies"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 7

    sget-object v0, Landroid/support/v4/app/j0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Landroid/support/v4/app/j0;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5e

    return-object v2

    :cond_a
    const/4 v1, 0x1

    :try_start_b
    sget-object v3, Landroid/support/v4/app/j0;->b:Ljava/lang/reflect/Field;

    if-nez v3, :cond_33

    const-class v3, Landroid/app/Notification;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_11} :catch_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_11} :catch_49
    .catchall {:try_start_b .. :try_end_11} :catchall_5e

    const-string v4, "extras"

    :try_start_13
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-class v4, Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2e

    const-string p0, "NotificationCompat"

    const-string v3, "Notification.extras field is not of type Bundle"

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Landroid/support/v4/app/j0;->c:Z
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_2c} :catch_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_2c} :catch_49
    .catchall {:try_start_13 .. :try_end_2c} :catchall_5e

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_5e

    return-object v2

    :cond_2e
    :try_start_2e
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sput-object v3, Landroid/support/v4/app/j0;->b:Ljava/lang/reflect/Field;

    :cond_33
    sget-object v3, Landroid/support/v4/app/j0;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_47

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Landroid/support/v4/app/j0;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_47} :catch_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2e .. :try_end_47} :catch_49
    .catchall {:try_start_2e .. :try_end_47} :catchall_5e

    :cond_47
    :try_start_47
    monitor-exit v0

    return-object v3

    :catch_49
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    :catch_52
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5a
    sput-boolean v1, Landroid/support/v4/app/j0;->c:Z

    monitor-exit v0

    return-object v2

    :catchall_5e
    move-exception p0

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_47 .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public static a(Ljava/util/List;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1d

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1a

    if-nez v1, :cond_17

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :cond_17
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1d
    return-object v1
.end method

.method private static a([Landroid/support/v4/app/l0;)[Landroid/os/Bundle;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    array-length v1, p0

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    array-length v3, p0

    if-gtz v3, :cond_c

    return-object v1

    :cond_c
    aget-object p0, p0, v2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    throw v0
.end method
