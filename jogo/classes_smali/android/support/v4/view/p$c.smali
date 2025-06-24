.class Landroid/support/v4/view/p$c;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Landroid/support/v4/view/i;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/v4/view/i;

    invoke-interface {p1, p2}, Landroid/support/v4/view/i;->onStopNestedScroll(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public a(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 14

    instance-of v0, p1, Landroid/support/v4/view/i;

    if-eqz v0, :cond_f

    move-object v1, p1

    check-cast v1, Landroid/support/v4/view/i;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Landroid/support/v4/view/i;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_f
    return-void
.end method

.method public a(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 7

    instance-of v0, p1, Landroid/support/v4/view/i;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/v4/view/i;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/i;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_9
    return-void
.end method

.method public a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 6

    instance-of v0, p1, Landroid/support/v4/view/i;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/v4/view/i;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/i;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_9
    return-void
.end method

.method public a(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 6

    instance-of v0, p1, Landroid/support/v4/view/i;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/i;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/i;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 7

    instance-of v0, p1, Landroid/support/v4/view/i;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/i;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/i;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    instance-of v0, p1, Landroid/support/v4/view/i;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/i;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/i;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
