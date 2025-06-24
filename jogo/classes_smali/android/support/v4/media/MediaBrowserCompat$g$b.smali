.class Landroid/support/v4/media/MediaBrowserCompat$g$b;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$g;->disconnect()V
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

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$b;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$b;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    const-string v2, "MediaBrowserCompat"

    if-eqz v1, :cond_22

    :try_start_8
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(Landroid/os/Messenger;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_22

    :catch_e
    const-string v0, "RemoteException during connect for "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$b;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_22
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$b;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget v1, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$g;->c()V

    if-eqz v1, :cond_2f

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$b;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    iput v1, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    :cond_2f
    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    if-eqz v0, :cond_3d

    const-string v0, "disconnect..."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$b;->b:Landroid/support/v4/media/MediaBrowserCompat$g;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$g;->b()V

    :cond_3d
    return-void
.end method
