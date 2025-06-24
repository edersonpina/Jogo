.class Landroid/support/v7/widget/ActionMenuPresenter$e;
.super Landroid/support/v7/view/menu/o;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic m:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;Z)V
    .registers 13

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$e;->m:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v5, Lb/b/d/a/a;->actionOverflowMenuStyle:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/o;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V

    const p2, 0x800005

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/o;->a(I)V

    iget-object p1, p1, Landroid/support/v7/widget/ActionMenuPresenter;->C:Landroid/support/v7/widget/ActionMenuPresenter$f;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/p$a;)V

    return-void
.end method


# virtual methods
.method protected d()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$e;->m:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/h;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$e;->m:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->b(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$e;->m:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->y:Landroid/support/v7/widget/ActionMenuPresenter$e;

    invoke-super {p0}, Landroid/support/v7/view/menu/o;->d()V

    return-void
.end method
