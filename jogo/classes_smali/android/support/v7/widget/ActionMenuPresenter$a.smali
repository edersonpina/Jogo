.class Landroid/support/v7/widget/ActionMenuPresenter$a;
.super Landroid/support/v7/view/menu/o;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic m:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/v;Landroid/view/View;)V
    .registers 12

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$a;->m:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v5, Lb/b/d/a/a;->actionOverflowMenuStyle:I

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/o;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V

    invoke-virtual {p3}, Landroid/support/v7/view/menu/v;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Landroid/support/v7/view/menu/k;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/k;->g()Z

    move-result p2

    if-nez p2, :cond_26

    iget-object p2, p1, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-nez p2, :cond_23

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->c(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/q;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    :cond_23
    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/o;->a(Landroid/view/View;)V

    :cond_26
    iget-object p1, p1, Landroid/support/v7/widget/ActionMenuPresenter;->C:Landroid/support/v7/widget/ActionMenuPresenter$f;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/p$a;)V

    return-void
.end method


# virtual methods
.method protected d()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$a;->m:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/support/v7/widget/ActionMenuPresenter$a;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->D:I

    invoke-super {p0}, Landroid/support/v7/view/menu/o;->d()V

    return-void
.end method
