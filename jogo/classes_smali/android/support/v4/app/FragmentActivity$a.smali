.class Landroid/support/v4/app/FragmentActivity$a;
.super Landroid/os/Handler;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_23

    :cond_c
    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object p1, p1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/h;

    invoke-virtual {p1}, Landroid/support/v4/app/h;->l()Z

    goto :goto_23

    :cond_19
    iget-object p1, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    iget-boolean v0, p1, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    :cond_23
    :goto_23
    return-void
.end method
