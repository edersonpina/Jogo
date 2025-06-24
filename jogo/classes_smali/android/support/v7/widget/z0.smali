.class Landroid/support/v7/widget/z0;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final b:Landroid/support/v7/view/menu/a;

.field final synthetic c:Landroid/support/v7/widget/a1;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a1;)V
    .registers 9

    iput-object p1, p0, Landroid/support/v7/widget/z0;->c:Landroid/support/v7/widget/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/support/v7/view/menu/a;

    iget-object v0, p0, Landroid/support/v7/widget/z0;->c:Landroid/support/v7/widget/a1;

    iget-object v0, v0, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v7/widget/z0;->c:Landroid/support/v7/widget/a1;

    iget-object v6, v0, Landroid/support/v7/widget/a1;->i:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object p1, p0, Landroid/support/v7/widget/z0;->b:Landroid/support/v7/view/menu/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Landroid/support/v7/widget/z0;->c:Landroid/support/v7/widget/a1;

    iget-object v0, p1, Landroid/support/v7/widget/a1;->l:Landroid/view/Window$Callback;

    if-eqz v0, :cond_10

    iget-boolean p1, p1, Landroid/support/v7/widget/a1;->m:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/z0;->b:Landroid/support/v7/view/menu/a;

    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_10
    return-void
.end method
