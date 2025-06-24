.class public Landroid/support/v4/app/a;
.super Landroid/support/v4/content/b;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/a$c;,
        Landroid/support/v4/app/a$b;
    }
.end annotation


# direct methods
.method public static a()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_14

    instance-of v0, p0, Landroid/support/v4/app/a$c;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/a$c;

    invoke-interface {v0, p2}, Landroid/support/v4/app/a$c;->validateRequestPermissionsRequestCode(I)V

    :cond_10
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_29

    :cond_14
    instance-of v0, p0, Landroid/support/v4/app/a$b;

    if-eqz v0, :cond_29

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/support/v4/app/a$a;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/a$a;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_29
    :goto_29
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    goto :goto_d

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_d
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    :cond_9
    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    goto :goto_12

    :cond_b
    const/16 v2, 0x15

    if-lt v0, v2, :cond_12

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public static e(Landroid/app/Activity;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    goto :goto_12

    :cond_b
    const/16 v2, 0x15

    if-lt v0, v2, :cond_12

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public static f(Landroid/app/Activity;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    :cond_9
    return-void
.end method
