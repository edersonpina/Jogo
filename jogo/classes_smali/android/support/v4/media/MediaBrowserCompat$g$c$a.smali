.class Landroid/support/v4/media/MediaBrowserCompat$g$c$a;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$g$c;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/ComponentName;

.field final synthetic c:Landroid/os/IBinder;

.field final synthetic d:Landroid/support/v4/media/MediaBrowserCompat$g$c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$g$c;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->c:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "ServiceCallbacks.onConnect..."

    sget-boolean v1, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    const-string v2, "MediaBrowserCompat"

    if-eqz v1, :cond_2b

    const-string v1, "MediaServiceConnection.onServiceConnected name="

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->c:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$g;->b()V

    :cond_2b
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    const-string v3, "onServiceConnected"

    invoke-virtual {v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    return-void

    :cond_36
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->c:Landroid/os/IBinder;

    iget-object v5, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->d:Landroid/os/Bundle;

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$i;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    new-instance v3, Landroid/os/Messenger;

    iget-object v4, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v3, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    const/4 v3, 0x2

    iput v3, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    :try_start_64
    sget-boolean v1, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    if-eqz v1, :cond_72

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$g;->b()V

    :cond_72
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$g;->a:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(Landroid/content/Context;Landroid/os/Messenger;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_87} :catch_88

    goto :goto_ad

    :catch_88
    nop

    const-string v1, "RemoteException during connect for "

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    if-eqz v1, :cond_ad

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$a;->d:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$g;->b()V

    :cond_ad
    :goto_ad
    return-void
.end method
