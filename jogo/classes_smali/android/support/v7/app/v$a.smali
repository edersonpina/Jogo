.class Landroid/support/v7/app/v$a;
.super Landroid/support/v4/view/s;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/v;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/v;


# direct methods
.method constructor <init>(Landroid/support/v7/app/v;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/v$a;->a:Landroid/support/v7/app/v;

    invoke-direct {p0}, Landroid/support/v4/view/s;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v7/app/v$a;->a:Landroid/support/v7/app/v;

    iget-object p1, p1, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/app/v$a;->a:Landroid/support/v7/app/v;

    iget-object p1, p1, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/q;->a(Landroid/support/v4/view/r;)Landroid/support/v4/view/q;

    iget-object p1, p0, Landroid/support/v7/app/v$a;->a:Landroid/support/v7/app/v;

    iget-object p1, p1, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v7/app/v$a;->a:Landroid/support/v7/app/v;

    iget-object p1, p1, Landroid/support/v7/app/v;->b:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
