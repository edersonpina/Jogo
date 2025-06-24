.class public abstract Landroid/support/v7/app/m;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v7/app/l;)Landroid/support/v7/app/m;
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/support/v7/app/m;->a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)Landroid/support/v7/app/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Dialog;Landroid/support/v7/app/l;)Landroid/support/v7/app/m;
    .registers 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/support/v7/app/m;->a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)Landroid/support/v7/app/m;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)Landroid/support/v7/app/m;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    new-instance v0, Landroid/support/v7/app/o;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/o;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V

    return-object v0

    :cond_c
    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    new-instance v0, Landroid/support/v7/app/r;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/r;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V

    return-object v0

    :cond_16
    new-instance v0, Landroid/support/v7/app/q;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/q;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()V
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract b(I)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(I)V
.end method

.method public abstract c(Landroid/os/Bundle;)V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method
