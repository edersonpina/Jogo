.class Landroid/support/v7/app/v;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-virtual {v1, v0, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->m()V

    iget-object v0, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->n()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v2}, Landroid/support/v4/view/n;->a(Landroid/view/View;)Landroid/support/v4/view/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/view/q;->a(F)Landroid/support/v4/view/q;

    iput-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    iget-object v0, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    new-instance v1, Landroid/support/v7/app/v$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/v$a;-><init>(Landroid/support/v7/app/v;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/q;->a(Landroid/support/v4/view/r;)Landroid/support/v4/view/q;

    goto :goto_4b

    :cond_3d
    iget-object v0, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    :goto_4b
    return-void
.end method
