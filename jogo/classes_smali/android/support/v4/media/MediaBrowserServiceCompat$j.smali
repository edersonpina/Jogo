.class Landroid/support/v4/media/MediaBrowserServiceCompat$j;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$i;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/s$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic f:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->f:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->f:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroid/support/v4/media/s;->a(Landroid/content/Context;Landroid/support/v4/media/s$c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->b:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->b:Ljava/lang/Object;

    check-cast v0, Landroid/service/media/MediaBrowserService;

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/media/s$b;Landroid/os/Bundle;)V
    .registers 4

    new-instance p3, Landroid/support/v4/media/MediaBrowserServiceCompat$j$a;

    invoke-direct {p3, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$j$a;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/Object;Landroid/support/v4/media/s$b;)V

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->f:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->b(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V

    return-void
.end method
