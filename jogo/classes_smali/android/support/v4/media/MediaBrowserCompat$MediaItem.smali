.class public Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Landroid/support/v4/media/MediaDescriptionCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem$a;

    invoke-direct {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem$a;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->b:I

    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->c:Landroid/support/v4/media/MediaDescriptionCompat;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iput p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->b:I

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->c:Landroid/support/v4/media/MediaDescriptionCompat;

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "description must have a non-empty media id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "description cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_42

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_a

    goto :goto_42

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3c

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v2, :cond_28

    goto :goto_3c

    :cond_28
    check-cast v3, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {v3}, Landroid/media/browse/MediaBrowser$MediaItem;->getFlags()I

    move-result v4

    invoke-virtual {v3}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v3

    new-instance v5, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v5, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    goto :goto_3d

    :cond_3c
    :goto_3c
    move-object v5, v0

    :goto_3d
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_41
    return-object v1

    :cond_42
    :goto_42
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->c:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->c:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
