.class final Landroid/support/v7/app/AppCompatDelegateImplV9$e;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/menu/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$e;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/h;Z)V
    .registers 7

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->i()Landroid/support/v7/view/menu/h;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$e;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    if-eqz v2, :cond_f

    move-object p1, v0

    :cond_f
    invoke-virtual {v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object p1

    if-eqz p1, :cond_29

    if-eqz v2, :cond_24

    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$e;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    invoke-virtual {p2, v2, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$e;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {p2, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_29

    :cond_24
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$e;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    :cond_29
    :goto_29
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)Z
    .registers 4

    if-nez p1, :cond_1b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$e;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-boolean v1, v0, Landroid/support/v7/app/n;->i:Z

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Landroid/support/v7/app/n;->i()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$e;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v1}, Landroid/support/v7/app/n;->k()Z

    move-result v1

    if-nez v1, :cond_1b

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1b
    const/4 p1, 0x1

    return p1
.end method
