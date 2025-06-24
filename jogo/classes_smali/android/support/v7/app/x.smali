.class public Landroid/support/v7/app/x;
.super Landroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Landroid/support/v7/app/l;


# instance fields
.field private b:Landroid/support/v7/app/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    if-nez p2, :cond_13

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lb/b/d/a/a;->dialogTheme:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    :cond_13
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/app/m;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/m;->a()Z

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/app/m;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/m;

    if-nez v0, :cond_a

    invoke-static {p0, p0}, Landroid/support/v7/app/m;->a(Landroid/app/Dialog;Landroid/support/v7/app/l;)Landroid/support/v7/app/m;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/m;

    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/m;

    return-object v0
.end method

.method public a(Lb/b/d/d/b$a;)Lb/b/d/d/b;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lb/b/d/d/b;)V
    .registers 2

    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/m;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Lb/b/d/d/b;)V
    .registers 2

    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->c()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->b()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->f()V

    return-void
.end method

.method public setContentView(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->c(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/m;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
