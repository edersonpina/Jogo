.class Landroid/support/v7/view/menu/u$a;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/view/menu/u;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/u;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/u$a;->b:Landroid/support/v7/view/menu/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/u$a;->b:Landroid/support/v7/view/menu/u;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/u;->d()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/support/v7/view/menu/u$a;->b:Landroid/support/v7/view/menu/u;

    iget-object v0, v0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->i()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Landroid/support/v7/view/menu/u$a;->b:Landroid/support/v7/view/menu/u;

    iget-object v0, v0, Landroid/support/v7/view/menu/u;->o:Landroid/view/View;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_27

    :cond_1f
    iget-object v0, p0, Landroid/support/v7/view/menu/u$a;->b:Landroid/support/v7/view/menu/u;

    iget-object v0, v0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->a()V

    goto :goto_2c

    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/support/v7/view/menu/u$a;->b:Landroid/support/v7/view/menu/u;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/u;->dismiss()V

    :cond_2c
    :goto_2c
    return-void
.end method
