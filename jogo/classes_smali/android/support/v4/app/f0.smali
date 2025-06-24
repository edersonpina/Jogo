.class public Landroid/support/v4/app/f0;
.super Landroid/support/v4/app/h0;
.source "NotificationCompat.java"


# instance fields
.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/f0;
    .registers 2

    invoke-static {p1}, Landroid/support/v4/app/g0;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/f0;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Landroid/support/v4/app/d0;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    check-cast p1, Landroid/support/v4/app/i0;

    invoke-virtual {p1}, Landroid/support/v4/app/i0;->b()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroid/support/v4/app/h0;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/app/f0;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-boolean v0, p0, Landroid/support/v4/app/h0;->d:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/h0;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_22
    return-void
.end method
