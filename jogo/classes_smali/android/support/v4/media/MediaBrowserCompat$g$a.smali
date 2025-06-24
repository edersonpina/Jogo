.class Landroid/support/v4/media/MediaBrowserCompat$g$a;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$g;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v4/media/MediaBrowserCompat$g;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$g;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "MediaBrowserCompat"

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget v2, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    if-nez v2, :cond_9

    return-void

    :cond_9
    const/4 v2, 0x2

    iput v2, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    sget-boolean v2, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    if-eqz v2, :cond_2c

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    if-nez v1, :cond_15

    goto :goto_2c

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mServiceConnection should be null. Instead it is "

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_2c
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/MediaBrowserCompat$i;

    if-nez v2, :cond_a4

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    if-nez v1, :cond_8d

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.browse.MediaBrowserService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$g$c;

    invoke-direct {v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$g$c;-><init>(Landroid/support/v4/media/MediaBrowserCompat$g;)V

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    const/4 v2, 0x0

    :try_start_4e
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$g;->a:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5b} :catch_5c

    goto :goto_70

    :catch_5c
    const-string v1, "Failed binding to service "

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_70
    if-nez v2, :cond_7e

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$g;->c()V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$b;->b()V

    :cond_7e
    sget-boolean v1, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    if-eqz v1, :cond_8c

    const-string v1, "connect..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$g;->b()V

    :cond_8c
    return-void

    :cond_8d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mCallbacksMessenger should be null. Instead it is "

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mServiceBinderWrapper should be null. Instead it is "

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g$a;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
