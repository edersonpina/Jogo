.class Landroid/support/v4/media/MediaBrowserServiceCompat$i;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$h;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic e:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->e:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->e:Landroid/support/v4/media/MediaBrowserServiceCompat;

    new-instance v1, Landroid/support/v4/media/q;

    invoke-direct {v1, v0, p0}, Landroid/support/v4/media/q;-><init>(Landroid/content/Context;Landroid/support/v4/media/r;)V

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->b:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$h;->b:Ljava/lang/Object;

    check-cast v0, Landroid/service/media/MediaBrowserService;

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/support/v4/media/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/o<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$a;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$i$a;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Ljava/lang/Object;Landroid/support/v4/media/o;)V

    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->e:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->b(Landroid/support/v4/media/MediaBrowserServiceCompat$l;)V

    return-void
.end method
