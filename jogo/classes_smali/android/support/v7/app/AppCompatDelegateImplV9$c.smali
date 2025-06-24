.class Landroid/support/v7/app/AppCompatDelegateImplV9$c;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lb/b/d/d/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Lb/b/d/d/b$a;

.field final synthetic b:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Lb/b/d/d/b$a;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->a:Lb/b/d/d/b$a;

    return-void
.end method


# virtual methods
.method public a(Lb/b/d/d/b;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->a:Lb/b/d/d/b$a;

    invoke-interface {v0, p1}, Lb/b/d/d/b$a;->a(Lb/b/d/d/b;)V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_18

    iget-object p1, p1, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->y:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_18
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->m()V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/n;->a(Landroid/view/View;)Landroid/support/v4/view/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/q;->a(F)Landroid/support/v4/view/q;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$c$a;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9$c;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/q;->a(Landroid/support/v4/view/r;)Landroid/support/v4/view/q;

    :cond_3b
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, p1, Landroid/support/v7/app/n;->f:Landroid/support/v7/app/l;

    if-eqz v0, :cond_46

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    invoke-interface {v0, p1}, Landroid/support/v7/app/l;->a(Lb/b/d/d/b;)V

    :cond_46
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    return-void
.end method

.method public a(Lb/b/d/d/b;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->a:Lb/b/d/d/b$a;

    invoke-interface {v0, p1, p2}, Lb/b/d/d/b$a;->a(Lb/b/d/d/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(Lb/b/d/d/b;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->a:Lb/b/d/d/b$a;

    invoke-interface {v0, p1, p2}, Lb/b/d/d/b$a;->a(Lb/b/d/d/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lb/b/d/d/b;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->a:Lb/b/d/d/b$a;

    invoke-interface {v0, p1, p2}, Lb/b/d/d/b$a;->b(Lb/b/d/d/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
