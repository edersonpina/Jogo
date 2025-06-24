.class Landroid/support/v4/view/q$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/q;->a(Landroid/view/View;Landroid/support/v4/view/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/r;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/q;Landroid/support/v4/view/r;Landroid/view/View;)V
    .registers 4

    iput-object p2, p0, Landroid/support/v4/view/q$a;->a:Landroid/support/v4/view/r;

    iput-object p3, p0, Landroid/support/v4/view/q$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/view/q$a;->a:Landroid/support/v4/view/r;

    iget-object v0, p0, Landroid/support/v4/view/q$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/view/q$a;->a:Landroid/support/v4/view/r;

    iget-object v0, p0, Landroid/support/v4/view/q$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/support/v4/view/r;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/view/q$a;->a:Landroid/support/v4/view/r;

    iget-object v0, p0, Landroid/support/v4/view/q$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/support/v4/view/r;->c(Landroid/view/View;)V

    return-void
.end method
