.class Landroid/support/v7/widget/a1$a;
.super Landroid/support/v4/view/s;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/a1;->a(IJ)Landroid/support/v4/view/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:I

.field final synthetic c:Landroid/support/v7/widget/a1;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a1;I)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/a1$a;->c:Landroid/support/v7/widget/a1;

    iput p2, p0, Landroid/support/v7/widget/a1$a;->b:I

    invoke-direct {p0}, Landroid/support/v4/view/s;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/a1$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/a1$a;->a:Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    iget-boolean p1, p0, Landroid/support/v7/widget/a1$a;->a:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/a1$a;->c:Landroid/support/v7/widget/a1;

    iget-object p1, p1, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    iget v0, p0, Landroid/support/v7/widget/a1$a;->b:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v7/widget/a1$a;->c:Landroid/support/v7/widget/a1;

    iget-object p1, p1, Landroid/support/v7/widget/a1;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
