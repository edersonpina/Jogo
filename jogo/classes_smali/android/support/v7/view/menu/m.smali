.class Landroid/support/v7/view/menu/m;
.super Landroid/support/v7/view/menu/l;
.source "MenuItemWrapperJB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/m$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lb/b/c/b/a/b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/view/menu/l;-><init>(Landroid/content/Context;Lb/b/c/b/a/b;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/ActionProvider;)Landroid/support/v7/view/menu/l$a;
    .registers 4

    new-instance v0, Landroid/support/v7/view/menu/m$a;

    iget-object v1, p0, Landroid/support/v7/view/menu/c;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/view/menu/m$a;-><init>(Landroid/support/v7/view/menu/m;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
