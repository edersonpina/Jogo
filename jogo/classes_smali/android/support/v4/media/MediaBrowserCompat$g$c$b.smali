.class Landroid/support/v4/media/MediaBrowserCompat$g$c$b;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$g$c;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/ComponentName;

.field final synthetic c:Landroid/support/v4/media/MediaBrowserCompat$g$c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$g$c;Landroid/content/ComponentName;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$b;->c:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$b;->b:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    if-eqz v0, :cond_35

    const-string v0, "MediaServiceConnection.onServiceDisconnected name="

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$b;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mServiceConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$b;->c:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowserCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$b;->c:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$g;->b()V

    :cond_35
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$b;->c:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    return-void

    :cond_40
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$b;->c:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/MediaBrowserCompat$i;

    iput-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Messenger;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g$c$b;->c:Landroid/support/v4/media/MediaBrowserCompat$g$c;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g$c;->a:Landroid/support/v4/media/MediaBrowserCompat$g;

    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:I

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$g;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->c()V

    return-void
.end method
