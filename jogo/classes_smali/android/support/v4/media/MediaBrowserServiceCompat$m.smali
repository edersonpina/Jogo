.class Landroid/support/v4/media/MediaBrowserServiceCompat$m;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$n;)V
    .registers 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez p3, :cond_9

    goto :goto_1b

    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    new-instance v7, Landroid/support/v4/media/MediaBrowserServiceCompat$m$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$m$b;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a(Ljava/lang/Runnable;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$n;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    if-nez p2, :cond_9

    goto :goto_15

    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$m$a;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$m$a;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a(Ljava/lang/Runnable;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$n;)V
    .registers 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez p3, :cond_9

    goto :goto_1b

    :cond_9
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    new-instance v7, Landroid/support/v4/media/MediaBrowserServiceCompat$m$c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$m$c;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a(Ljava/lang/Runnable;)V

    :cond_1b
    :goto_1b
    return-void
.end method
