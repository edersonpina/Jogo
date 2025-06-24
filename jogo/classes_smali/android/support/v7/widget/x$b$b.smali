.class Landroid/support/v7/widget/x$b$b;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/x$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/widget/x$b;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/x$b;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/x$b$b;->b:Landroid/support/v7/widget/x$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/x$b$b;->b:Landroid/support/v7/widget/x$b;

    iget-object v1, v0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/x$b;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/x$b$b;->b:Landroid/support/v7/widget/x$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->dismiss()V

    goto :goto_1a

    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/x$b$b;->b:Landroid/support/v7/widget/x$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/x$b;->j()V

    iget-object v0, p0, Landroid/support/v7/widget/x$b$b;->b:Landroid/support/v7/widget/x$b;

    invoke-static {v0}, Landroid/support/v7/widget/x$b;->a(Landroid/support/v7/widget/x$b;)V

    :goto_1a
    return-void
.end method
