.class Landroid/support/v4/media/MediaBrowserServiceCompat$f$a;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$f;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v4/media/MediaBrowserServiceCompat$f;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$f;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f$a;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f$a;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iget-object v1, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->f:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Lb/b/c/d/a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$n;

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/b/c/d/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
