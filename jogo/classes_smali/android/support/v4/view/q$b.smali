.class Landroid/support/v4/view/q$b;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/q;->a(Landroid/support/v4/view/t;)Landroid/support/v4/view/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/t;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/q;Landroid/support/v4/view/t;Landroid/view/View;)V
    .registers 4

    iput-object p2, p0, Landroid/support/v4/view/q$b;->a:Landroid/support/v4/view/t;

    iput-object p3, p0, Landroid/support/v4/view/q$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/view/q$b;->a:Landroid/support/v4/view/t;

    iget-object v0, p0, Landroid/support/v4/view/q$b;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/support/v4/view/t;->a(Landroid/view/View;)V

    return-void
.end method
