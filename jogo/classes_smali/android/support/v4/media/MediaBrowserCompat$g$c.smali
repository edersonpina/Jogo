.class Landroid/support/v4/media/MediaBrowserCompat$g$c;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$g;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$g;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_16

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1d

    :cond_16
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1d
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_f

    iget v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    if-eqz v0, :cond_f

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    return v2

    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    if-eqz v0, :cond_41

    if-eq v0, v2, :cond_41

    const-string v0, " for "

    invoke-static {p1, v0}, Ld/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with mServiceConnection="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " this="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaBrowserCompat"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 p1, 0x0

    return p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$g$c;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$g$c$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$g$c$b;-><init>(Landroid/support/v4/media/MediaBrowserCompat$g$c;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
