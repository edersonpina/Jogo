.class Landroid/support/v7/view/menu/m$a;
.super Landroid/support/v7/view/menu/l$a;
.source "MenuItemWrapperJB.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field d:Landroid/support/v4/view/b$b;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/m;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/l$a;-><init>(Landroid/support/v7/view/menu/l;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v4/view/b$b;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/view/menu/m$a;->d:Landroid/support/v4/view/b$b;

    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->b:Landroid/view/ActionProvider;

    if-eqz p1, :cond_8

    move-object p1, p0

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/l$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .registers 2

    iget-object p1, p0, Landroid/support/v7/view/menu/m$a;->d:Landroid/support/v4/view/b$b;

    if-eqz p1, :cond_d

    check-cast p1, Landroid/support/v7/view/menu/k$a;

    iget-object p1, p1, Landroid/support/v7/view/menu/k$a;->a:Landroid/support/v7/view/menu/k;

    iget-object p1, p1, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->n()V

    :cond_d
    return-void
.end method
