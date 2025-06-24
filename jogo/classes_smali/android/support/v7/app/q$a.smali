.class Landroid/support/v7/app/q$a;
.super Landroid/support/v7/app/n$b;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Landroid/support/v7/app/q;


# direct methods
.method constructor <init>(Landroid/support/v7/app/q;Landroid/view/Window$Callback;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/q$a;->d:Landroid/support/v7/app/q;

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/n$b;-><init>(Landroid/support/v7/app/n;Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    new-instance v0, Lb/b/d/d/f$a;

    iget-object v1, p0, Landroid/support/v7/app/q$a;->d:Landroid/support/v7/app/q;

    iget-object v1, v1, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lb/b/d/d/f$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, p0, Landroid/support/v7/app/q$a;->d:Landroid/support/v7/app/q;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Lb/b/d/d/b$a;)Lb/b/d/d/b;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {v0, p1}, Lb/b/d/d/f$a;->b(Lb/b/d/d/b;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/q$a;->d:Landroid/support/v7/app/q;

    invoke-virtual {v0}, Landroid/support/v7/app/q;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Landroid/support/v7/app/q$a;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-super {p0, p1}, Lb/b/d/d/i;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
