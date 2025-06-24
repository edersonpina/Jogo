.class Landroid/support/v7/widget/ActionMenuView$d;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/widget/ActionMenuView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionMenuView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView$d;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/h;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView$d;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->w:Landroid/support/v7/view/menu/h$a;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/h$a;->a(Landroid/support/v7/view/menu/h;)V

    :cond_9
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView$d;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object p1, p1, Landroid/support/v7/widget/ActionMenuView;->B:Landroid/support/v7/widget/ActionMenuView$e;

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    check-cast p1, Landroid/support/v7/widget/Toolbar$a;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/Toolbar$f;

    if-eqz p1, :cond_14

    invoke-interface {p1, p2}, Landroid/support/v7/widget/Toolbar$f;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    if-eqz p1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method
