.class public final Landroid/support/v7/view/menu/r;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lb/b/c/b/a/a;)Landroid/view/Menu;
    .registers 3

    new-instance v0, Landroid/support/v7/view/menu/s;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/s;-><init>(Landroid/content/Context;Lb/b/c/b/a/a;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lb/b/c/b/a/b;)Landroid/view/MenuItem;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Landroid/support/v7/view/menu/m;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/m;-><init>(Landroid/content/Context;Lb/b/c/b/a/b;)V

    return-object v0
.end method
