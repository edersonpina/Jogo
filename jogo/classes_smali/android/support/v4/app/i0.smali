.class Landroid/support/v4/app/i0;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Landroid/support/v4/app/d0;


# instance fields
.field private final a:Landroid/app/Notification$Builder;

.field private final b:Landroid/support/v4/app/g0;

.field private c:Landroid/widget/RemoteViews;

.field private d:Landroid/widget/RemoteViews;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Bundle;

.field private g:I

.field private h:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/support/v4/app/g0;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i0;->e:Ljava/util/List;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v4/app/i0;->b:Landroid/support/v4/app/g0;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_25

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/g0;->a:Landroid/content/Context;

    iget-object v3, p1, Landroid/support/v4/app/g0;->H:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    goto :goto_2e

    :cond_25
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/g0;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    :goto_2e
    iget-object v0, p1, Landroid/support/v4/app/g0;->M:Landroid/app/Notification;

    iget-object v2, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    iget-wide v3, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->icon:I

    iget v4, v0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/g0;->g:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v4, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->ledARGB:I

    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    iget v5, v0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_70

    const/4 v3, 0x1

    goto :goto_71

    :cond_70
    const/4 v3, 0x0

    :goto_71
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7d

    const/4 v3, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v3, 0x0

    :goto_7e
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_8a

    const/4 v3, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v3, 0x0

    :goto_8b
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->defaults:I

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/g0;->c:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/g0;->d:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/g0;->i:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/g0;->e:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/g0;->f:Landroid/app/PendingIntent;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_bd

    const/4 v0, 0x1

    goto :goto_be

    :cond_bd
    const/4 v0, 0x0

    :goto_be
    invoke-virtual {v2, v3, v0}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p1, Landroid/support/v4/app/g0;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/g0;->j:I

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/g0;->q:I

    iget v3, p1, Landroid/support/v4/app/g0;->r:I

    iget-boolean v6, p1, Landroid/support/v4/app/g0;->s:Z

    invoke-virtual {v0, v2, v3, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/g0;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v2, p1, Landroid/support/v4/app/g0;->m:Z

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/g0;->k:I

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroid/support/v4/app/g0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x18

    const/16 v6, 0x14

    if-eqz v2, :cond_17a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/e0;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_16d

    new-instance v6, Landroid/app/Notification$Action$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/e0;->d()I

    move-result v7

    invoke-virtual {v2}, Landroid/support/v4/app/e0;->f()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2}, Landroid/support/v4/app/e0;->a()Landroid/app/PendingIntent;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/support/v4/app/e0;->e()[Landroid/support/v4/app/l0;

    move-result-object v7

    if-eqz v7, :cond_13d

    invoke-virtual {v2}, Landroid/support/v4/app/e0;->e()[Landroid/support/v4/app/l0;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_125

    goto :goto_12c

    :cond_125
    array-length v9, v7

    new-array v9, v9, [Landroid/app/RemoteInput;

    array-length v10, v7

    if-gtz v10, :cond_138

    move-object v8, v9

    :goto_12c
    array-length v7, v8

    const/4 v9, 0x0

    :goto_12e
    if-ge v9, v7, :cond_13d

    aget-object v10, v8, v9

    invoke-virtual {v6, v10}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_12e

    :cond_138
    aget-object p1, v7, v4

    new-instance p1, Landroid/app/RemoteInput$Builder;

    throw v8

    :cond_13d
    iget-object v7, v2, Landroid/support/v4/app/e0;->a:Landroid/os/Bundle;

    if-eqz v7, :cond_147

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_14c

    :cond_147
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :goto_14c
    invoke-virtual {v2}, Landroid/support/v4/app/e0;->b()Z

    move-result v7

    const-string v9, "android.support.allowGeneratedReplies"

    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_160

    invoke-virtual {v2}, Landroid/support/v4/app/e0;->b()Z

    move-result v2

    invoke-virtual {v6, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    :cond_160
    invoke-virtual {v6, v8}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_f2

    :cond_16d
    iget-object v3, p0, Landroid/support/v4/app/i0;->e:Ljava/util/List;

    iget-object v6, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-static {v6, v2}, Landroid/support/v4/app/j0;->a(Landroid/app/Notification$Builder;Landroid/support/v4/app/e0;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f2

    :cond_17a
    iget-object v0, p1, Landroid/support/v4/app/g0;->A:Landroid/os/Bundle;

    if-eqz v0, :cond_183

    iget-object v2, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_1bb

    iget-boolean v0, p1, Landroid/support/v4/app/g0;->w:Z

    if-eqz v0, :cond_192

    iget-object v0, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    const-string v2, "android.support.localOnly"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_192
    iget-object v0, p1, Landroid/support/v4/app/g0;->t:Ljava/lang/String;

    if-eqz v0, :cond_1b0

    iget-object v2, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    const-string v4, "android.support.groupKey"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Landroid/support/v4/app/g0;->u:Z

    if-eqz v0, :cond_1a9

    iget-object v0, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    const-string v2, "android.support.isGroupSummary"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1b0

    :cond_1a9
    iget-object v0, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    const-string v2, "android.support.useSideChannel"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1b0
    :goto_1b0
    iget-object v0, p1, Landroid/support/v4/app/g0;->v:Ljava/lang/String;

    if-eqz v0, :cond_1bb

    iget-object v2, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    const-string v4, "android.support.sortKey"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1bb
    iget-object v0, p1, Landroid/support/v4/app/g0;->E:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/i0;->c:Landroid/widget/RemoteViews;

    iget-object v0, p1, Landroid/support/v4/app/g0;->F:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/i0;->d:Landroid/widget/RemoteViews;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/16 v4, 0x15

    if-lt v0, v2, :cond_1f5

    iget-object v0, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    iget-boolean v2, p1, Landroid/support/v4/app/g0;->l:Z

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_1f5

    iget-object v0, p1, Landroid/support/v4/app/g0;->N:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f5

    iget-object v0, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    iget-object v2, p1, Landroid/support/v4/app/g0;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v5, "android.people"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1f5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_216

    iget-object v0, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    iget-boolean v2, p1, Landroid/support/v4/app/g0;->w:Z

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p1, Landroid/support/v4/app/g0;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v2, p1, Landroid/support/v4/app/g0;->u:Z

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p1, Landroid/support/v4/app/g0;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget v0, p1, Landroid/support/v4/app/g0;->L:I

    iput v0, p0, Landroid/support/v4/app/i0;->g:I

    :cond_216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_24f

    iget-object v0, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/g0;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/g0;->B:I

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/g0;->C:I

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p1, Landroid/support/v4/app/g0;->D:Landroid/app/Notification;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroid/support/v4/app/g0;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_239
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_239

    :cond_24b
    iget-object v0, p1, Landroid/support/v4/app/g0;->G:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/i0;->h:Landroid/widget/RemoteViews;

    :cond_24f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_27b

    iget-object v0, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/g0;->A:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p1, Landroid/support/v4/app/g0;->p:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroid/support/v4/app/g0;->E:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_269

    iget-object v2, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_269
    iget-object v0, p1, Landroid/support/v4/app/g0;->F:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_272

    iget-object v2, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_272
    iget-object v0, p1, Landroid/support/v4/app/g0;->G:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_27b

    iget-object v2, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_27b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2a3

    iget-object v0, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    iget v1, p1, Landroid/support/v4/app/g0;->I:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/g0;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroid/support/v4/app/g0;->K:J

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/g0;->L:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    iget-boolean v0, p1, Landroid/support/v4/app/g0;->y:Z

    if-eqz v0, :cond_2a3

    iget-object v0, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    iget-boolean p1, p1, Landroid/support/v4/app/g0;->x:Z

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    :cond_2a3
    return-void
.end method

.method private a(Landroid/app/Notification;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .registers 10

    iget-object v0, p0, Landroid/support/v4/app/i0;->b:Landroid/support/v4/app/g0;

    iget-object v0, v0, Landroid/support/v4/app/g0;->n:Landroid/support/v4/app/h0;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroid/support/v4/app/h0;->a(Landroid/support/v4/app/d0;)V

    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/16 v3, 0x15

    if-lt v1, v2, :cond_19

    iget-object v1, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto/16 :goto_163

    :cond_19
    const/16 v2, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lt v1, v2, :cond_51

    iget-object v1, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/i0;->g:I

    if-eqz v2, :cond_163

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3c

    iget v2, p0, Landroid/support/v4/app/i0;->g:I

    if-ne v2, v5, :cond_3c

    invoke-direct {p0, v1}, Landroid/support/v4/app/i0;->a(Landroid/app/Notification;)V

    :cond_3c
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_163

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_163

    iget v2, p0, Landroid/support/v4/app/i0;->g:I

    if-ne v2, v4, :cond_163

    invoke-direct {p0, v1}, Landroid/support/v4/app/i0;->a(Landroid/app/Notification;)V

    goto/16 :goto_163

    :cond_51
    if-lt v1, v3, :cond_9e

    iget-object v1, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/i0;->c:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_66

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_66
    iget-object v2, p0, Landroid/support/v4/app/i0;->d:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_6c

    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_6c
    iget-object v2, p0, Landroid/support/v4/app/i0;->h:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_72

    iput-object v2, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_72
    iget v2, p0, Landroid/support/v4/app/i0;->g:I

    if-eqz v2, :cond_163

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_89

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_89

    iget v2, p0, Landroid/support/v4/app/i0;->g:I

    if-ne v2, v5, :cond_89

    invoke-direct {p0, v1}, Landroid/support/v4/app/i0;->a(Landroid/app/Notification;)V

    :cond_89
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_163

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_163

    iget v2, p0, Landroid/support/v4/app/i0;->g:I

    if-ne v2, v4, :cond_163

    invoke-direct {p0, v1}, Landroid/support/v4/app/i0;->a(Landroid/app/Notification;)V

    goto/16 :goto_163

    :cond_9e
    const/16 v2, 0x14

    if-lt v1, v2, :cond_e7

    iget-object v1, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/i0;->c:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_b5

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_b5
    iget-object v2, p0, Landroid/support/v4/app/i0;->d:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_bb

    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_bb
    iget v2, p0, Landroid/support/v4/app/i0;->g:I

    if-eqz v2, :cond_163

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d2

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_d2

    iget v2, p0, Landroid/support/v4/app/i0;->g:I

    if-ne v2, v5, :cond_d2

    invoke-direct {p0, v1}, Landroid/support/v4/app/i0;->a(Landroid/app/Notification;)V

    :cond_d2
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_163

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_163

    iget v2, p0, Landroid/support/v4/app/i0;->g:I

    if-ne v2, v4, :cond_163

    invoke-direct {p0, v1}, Landroid/support/v4/app/i0;->a(Landroid/app/Notification;)V

    goto/16 :goto_163

    :cond_e7
    const/16 v2, 0x13

    const-string v4, "android.support.actionExtras"

    if-lt v1, v2, :cond_114

    iget-object v1, p0, Landroid/support/v4/app/i0;->e:Ljava/util/List;

    invoke-static {v1}, Landroid/support/v4/app/j0;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_fa

    iget-object v2, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_fa
    iget-object v1, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/i0;->c:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_10d

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_10d
    iget-object v2, p0, Landroid/support/v4/app/i0;->d:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_163

    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_163

    :cond_114
    iget-object v1, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/e;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v6, p0, Landroid/support/v4/app/i0;->f:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12f
    :goto_12f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_145

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12f

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_12f

    :cond_145
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/support/v4/app/i0;->e:Ljava/util/List;

    invoke-static {v2}, Landroid/support/v4/app/j0;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_157

    invoke-static {v1}, Landroid/support/v4/app/e;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_157
    iget-object v2, p0, Landroid/support/v4/app/i0;->c:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_15d

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_15d
    iget-object v2, p0, Landroid/support/v4/app/i0;->d:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_163

    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_163
    :goto_163
    iget-object v2, p0, Landroid/support/v4/app/i0;->b:Landroid/support/v4/app/g0;

    iget-object v2, v2, Landroid/support/v4/app/g0;->E:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_16b

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_16b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_17a

    if-eqz v0, :cond_17a

    iget-object v2, p0, Landroid/support/v4/app/i0;->b:Landroid/support/v4/app/g0;

    iget-object v2, v2, Landroid/support/v4/app/g0;->n:Landroid/support/v4/app/h0;

    invoke-virtual {v2}, Landroid/support/v4/app/h0;->a()Landroid/widget/RemoteViews;

    :cond_17a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_182

    invoke-static {v1}, Landroid/support/v4/app/e;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    :cond_182
    return-object v1
.end method

.method public b()Landroid/app/Notification$Builder;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/i0;->a:Landroid/app/Notification$Builder;

    return-object v0
.end method
