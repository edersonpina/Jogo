.class Landroid/support/v4/app/m;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v4/app/Fragment;

.field final synthetic d:Landroid/support/v4/app/k;


# direct methods
.method constructor <init>(Landroid/support/v4/app/k;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/k;

    iput-object p2, p0, Landroid/support/v4/app/m;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/m;->b:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    iget-object p1, p0, Landroid/support/v4/app/m;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    if-eqz p1, :cond_2d

    iget-object p1, p0, Landroid/support/v4/app/m;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_2d

    iget-object v0, p0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/k;

    iget-object v1, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_2d
    return-void
.end method
