.class Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;
.super Landroid/support/v4/view/s;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9$c;->a(Lb/b/d/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV9$c;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9$c;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a:Landroid/support/v7/app/AppCompatDelegateImplV9$c;

    invoke-direct {p0}, Landroid/support/v4/view/s;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a:Landroid/support/v7/app/AppCompatDelegateImplV9$c;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a:Landroid/support/v7/app/AppCompatDelegateImplV9$c;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_30

    :cond_17
    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_30

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a:Landroid/support/v7/app/AppCompatDelegateImplV9$c;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/n;->m(Landroid/view/View;)V

    :cond_30
    :goto_30
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a:Landroid/support/v7/app/AppCompatDelegateImplV9$c;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a:Landroid/support/v7/app/AppCompatDelegateImplV9$c;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/q;->a(Landroid/support/v4/view/r;)Landroid/support/v4/view/q;

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;->a:Landroid/support/v7/app/AppCompatDelegateImplV9$c;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    return-void
.end method
