.class Landroid/support/v4/media/MediaBrowserServiceCompat$i$a;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$l;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$i;->b(Ljava/lang/String;Landroid/support/v4/media/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$l<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Landroid/support/v4/media/o;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Ljava/lang/Object;Landroid/support/v4/media/o;)V
    .registers 4

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$a;->f:Landroid/support/v4/media/o;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$l;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-nez p1, :cond_b

    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$a;->f:Landroid/support/v4/media/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/o;->a(Ljava/lang/Object;)V

    goto :goto_18

    :cond_b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$a;->f:Landroid/support/v4/media/o;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/o;->a(Ljava/lang/Object;)V

    :goto_18
    return-void
.end method
