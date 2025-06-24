.class Landroid/support/v4/media/session/d;
.super Landroid/media/session/MediaController$Callback;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/c;",
        ">",
        "Landroid/media/session/MediaController$Callback;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v4/media/session/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/d;->a:Landroid/support/v4/media/session/c;

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .registers 9

    iget-object v0, p0, Landroid/support/v4/media/session/d;->a:Landroid/support/v4/media/session/c;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x4

    if-ne v3, v4, :cond_16

    const/4 v1, 0x7

    const/4 v3, 0x7

    goto :goto_3c

    :cond_16
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_20

    const/4 v1, 0x6

    const/4 v3, 0x6

    goto :goto_3c

    :cond_20
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    packed-switch v1, :pswitch_data_50

    goto :goto_3a

    :pswitch_28  #0xd
    const/4 v3, 0x1

    goto :goto_3c

    :pswitch_2a  #0x6
    const/4 v1, 0x2

    const/4 v3, 0x2

    goto :goto_3c

    :pswitch_2d  #0x5, 0x7, 0x8, 0x9, 0xa
    const/4 v1, 0x5

    const/4 v3, 0x5

    goto :goto_3c

    :pswitch_30  #0x4
    const/4 v3, 0x4

    goto :goto_3c

    :pswitch_32  #0x3
    const/16 v1, 0x8

    const/16 v3, 0x8

    goto :goto_3c

    :pswitch_37  #0x2
    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_3c

    :goto_3a
    :pswitch_3a  #0x1, 0xb, 0xc, 0xe
    const/4 v1, 0x3

    const/4 v3, 0x3

    :goto_3c
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v6

    move-object v1, v0

    check-cast v1, Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->a(IIIII)V

    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3a  #00000001
        :pswitch_37  #00000002
        :pswitch_32  #00000003
        :pswitch_30  #00000004
        :pswitch_2d  #00000005
        :pswitch_2a  #00000006
        :pswitch_2d  #00000007
        :pswitch_2d  #00000008
        :pswitch_2d  #00000009
        :pswitch_2d  #0000000a
        :pswitch_3a  #0000000b
        :pswitch_3a  #0000000c
        :pswitch_28  #0000000d
        :pswitch_3a  #0000000e
    .end packed-switch
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/d;->a:Landroid/support/v4/media/session/c;

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/d;->a:Landroid/support/v4/media/session/c;

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/d;->a:Landroid/support/v4/media/session/c;

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/session/d;->a:Landroid/support/v4/media/session/c;

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->a(Ljava/util/List;)V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/d;->a:Landroid/support/v4/media/session/c;

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/d;->a:Landroid/support/v4/media/session/c;

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->a()V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/session/d;->a:Landroid/support/v4/media/session/c;

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
