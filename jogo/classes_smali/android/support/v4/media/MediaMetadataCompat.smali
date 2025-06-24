.class public final Landroid/support/v4/media/MediaMetadataCompat;
.super Ljava/lang/Object;
.source "MediaMetadataCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Lb/b/c/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Landroid/os/Bundle;

.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Lb/b/c/d/a;

    invoke-direct {v0}, Lb/b/c/d/a;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v0, v3, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v4, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v4, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "android.media.metadata.DURATION"

    invoke-virtual {v0, v7, v6}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v7, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v7, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v8, "android.media.metadata.AUTHOR"

    invoke-virtual {v0, v8, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v9, "android.media.metadata.WRITER"

    invoke-virtual {v0, v9, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v10, "android.media.metadata.COMPOSER"

    invoke-virtual {v0, v10, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v11, "android.media.metadata.COMPILATION"

    invoke-virtual {v0, v11, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v11, "android.media.metadata.DATE"

    invoke-virtual {v0, v11, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v11, "android.media.metadata.YEAR"

    invoke-virtual {v0, v11, v6}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v11, "android.media.metadata.GENRE"

    invoke-virtual {v0, v11, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v11, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {v0, v11, v6}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v11, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {v0, v11, v6}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v11, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {v0, v11, v6}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v11, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v0, v11, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "android.media.metadata.ART"

    invoke-virtual {v0, v14, v13}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v15, "android.media.metadata.ART_URI"

    invoke-virtual {v0, v15, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v12, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v12, v13}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v0, v1, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const/4 v5, 0x3

    move-object/from16 v16, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, v5, v1}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v5, "android.media.metadata.RATING"

    invoke-virtual {v0, v5, v1}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v1, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v0, v1, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v0, v1, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v0, v1, v13}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v0, v1, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v1, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v1, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v0, v1, v6}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v1, "android.media.metadata.MEDIA_URI"

    invoke-virtual {v0, v1, v2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v1, "android.media.metadata.ADVERTISEMENT"

    invoke-virtual {v0, v1, v6}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->d:Lb/b/c/d/a;

    const-string v1, "android.media.metadata.DOWNLOAD_STATUS"

    invoke-virtual {v0, v1, v6}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const/4 v1, 0x2

    aput-object v7, v0, v1

    const/4 v1, 0x3

    aput-object v11, v0, v1

    const/4 v2, 0x4

    aput-object v9, v0, v2

    const/4 v2, 0x5

    aput-object v8, v0, v2

    const/4 v2, 0x6

    aput-object v10, v0, v2

    new-array v0, v1, [Ljava/lang/String;

    const-string v2, "android.media.metadata.DISPLAY_ICON"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v14, v0, v2

    const/4 v4, 0x2

    aput-object v12, v0, v4

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    aput-object v1, v0, v3

    aput-object v15, v0, v2

    aput-object v16, v0, v4

    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$a;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$a;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/os/Bundle;

    iget-object p1, p0, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/os/Bundle;

    const-class v0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;
    .registers 4

    if-eqz p0, :cond_24

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_24

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/media/MediaMetadata;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    iput-object p0, v1, Landroid/support/v4/media/MediaMetadataCompat;->c:Ljava/lang/Object;

    return-object v1

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
