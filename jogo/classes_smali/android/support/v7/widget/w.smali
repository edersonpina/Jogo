.class Landroid/support/v7/widget/w;
.super Landroid/support/v7/widget/h0;
.source "AppCompatSpinner.java"


# instance fields
.field final synthetic k:Landroid/support/v7/widget/x$b;

.field final synthetic l:Landroid/support/v7/widget/x;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/x;Landroid/view/View;Landroid/support/v7/widget/x$b;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v7/widget/w;->l:Landroid/support/v7/widget/x;

    iput-object p3, p0, Landroid/support/v7/widget/w;->k:Landroid/support/v7/widget/x$b;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/h0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/t;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/w;->k:Landroid/support/v7/widget/x$b;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/w;->l:Landroid/support/v7/widget/x;

    invoke-static {v0}, Landroid/support/v7/widget/x;->a(Landroid/support/v7/widget/x;)Landroid/support/v7/widget/x$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->d()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/w;->l:Landroid/support/v7/widget/x;

    invoke-static {v0}, Landroid/support/v7/widget/x;->a(Landroid/support/v7/widget/x;)Landroid/support/v7/widget/x$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/x$b;->a()V

    :cond_15
    const/4 v0, 0x1

    return v0
.end method
