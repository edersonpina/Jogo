.class Landroid/support/v7/widget/j0;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/support/v7/widget/l0;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/l0;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/j0;->b:Landroid/support/v7/widget/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/j0;->b:Landroid/support/v7/widget/l0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/j0;->b:Landroid/support/v7/widget/l0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->a()V

    :cond_13
    return-void
.end method
