.class Landroid/support/v7/app/AlertController$a;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/app/AlertController;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/AlertController$a;->b:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/AlertController$a;->b:Landroid/support/v7/app/AlertController;

    iget-object v1, v0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    if-ne p1, v1, :cond_f

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->p:Landroid/os/Message;

    if-eqz v0, :cond_f

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2e

    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/AlertController$a;->b:Landroid/support/v7/app/AlertController;

    iget-object v1, v0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    if-ne p1, v1, :cond_1e

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->s:Landroid/os/Message;

    if-eqz v0, :cond_1e

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2e

    :cond_1e
    iget-object v0, p0, Landroid/support/v7/app/AlertController$a;->b:Landroid/support/v7/app/AlertController;

    iget-object v1, v0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    if-ne p1, v1, :cond_2d

    iget-object p1, v0, Landroid/support/v7/app/AlertController;->v:Landroid/os/Message;

    if-eqz p1, :cond_2d

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_33
    iget-object p1, p0, Landroid/support/v7/app/AlertController$a;->b:Landroid/support/v7/app/AlertController;

    iget-object v0, p1, Landroid/support/v7/app/AlertController;->N:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object p1, p1, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/x;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
