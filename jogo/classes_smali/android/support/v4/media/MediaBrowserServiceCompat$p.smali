.class final Landroid/support/v4/media/MediaBrowserServiceCompat$p;
.super Landroid/os/Handler;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "p"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

.field final synthetic b:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->b:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->b:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$m;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_15

    :cond_12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_15
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "data_callback_token"

    const-string v3, "data_root_hints"

    const-string v4, "data_result_receiver"

    const-string v5, "data_media_item_id"

    packed-switch v1, :pswitch_data_170

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  Service version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  Client version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBServiceCompat"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16e

    :pswitch_3c  #0x9
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    const-string v2, "data_custom_action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_custom_action_extras"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/os/ResultReceiver;

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->b(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$n;)V

    goto/16 :goto_16e

    :pswitch_5c  #0x8
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    const-string v2, "data_search_query"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_search_extras"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/os/ResultReceiver;

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$n;)V

    goto/16 :goto_16e

    :pswitch_7c  #0x7
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v1, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;-><init>(Landroid/os/Messenger;)V

    iget-object p1, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    new-instance v2, Landroid/support/v4/media/l;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/media/l;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;)V

    invoke-virtual {p1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_16e

    :pswitch_93  #0x6
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    new-instance v3, Landroid/support/v4/media/k;

    invoke-direct {v3, v1, v2, p1}, Landroid/support/v4/media/k;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;Landroid/os/Bundle;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_16e

    :pswitch_ae  #0x5
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/os/ResultReceiver;

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$n;)V

    goto/16 :goto_16e

    :pswitch_c6  #0x4
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2}, Landroid/support/v4/app/e;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;-><init>(Landroid/os/Messenger;)V

    iget-object p1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    new-instance v4, Landroid/support/v4/media/j;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/support/v4/media/j;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p1, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_16e

    :pswitch_e5  #0x3
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v2}, Landroid/support/v4/app/e;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    const-string v1, "data_options"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    new-instance v7, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v7, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;-><init>(Landroid/os/Messenger;)V

    iget-object p1, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    new-instance v0, Landroid/support/v4/media/i;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/support/v4/media/i;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a(Ljava/lang/Runnable;)V

    goto :goto_16e

    :pswitch_10a  #0x2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v1, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;-><init>(Landroid/os/Messenger;)V

    iget-object p1, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    new-instance v2, Landroid/support/v4/media/h;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/media/h;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;)V

    invoke-virtual {p1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a(Ljava/lang/Runnable;)V

    goto :goto_16e

    :pswitch_120  #0x1
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$m;

    const-string v1, "data_package_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "data_calling_uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    new-instance v5, Landroid/support/v4/media/MediaBrowserServiceCompat$o;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$o;-><init>(Landroid/os/Messenger;)V

    iget-object p1, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {p1, v6, v8}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_14f

    iget-object p1, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$m;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$p;

    new-instance v0, Landroid/support/v4/media/g;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/support/v4/media/g;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$m;Landroid/support/v4/media/MediaBrowserServiceCompat$n;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$p;->a(Ljava/lang/Runnable;)V

    goto :goto_16e

    :cond_14f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package/uid mismatch: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_16e
    return-void

    nop

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_120  #00000001
        :pswitch_10a  #00000002
        :pswitch_e5  #00000003
        :pswitch_c6  #00000004
        :pswitch_ae  #00000005
        :pswitch_93  #00000006
        :pswitch_7c  #00000007
        :pswitch_5c  #00000008
        :pswitch_3c  #00000009
    .end packed-switch
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .registers 7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "data_calling_uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
