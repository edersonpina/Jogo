.class public final Landroid/support/v4/view/p;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/p$b;,
        Landroid/support/v4/view/p$a;,
        Landroid/support/v4/view/p$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/p$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/p$b;

    invoke-direct {v0}, Landroid/support/v4/view/p$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/p;->a:Landroid/support/v4/view/p$c;

    goto :goto_21

    :cond_e
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/view/p$a;

    invoke-direct {v0}, Landroid/support/v4/view/p$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/p;->a:Landroid/support/v4/view/p$c;

    goto :goto_21

    :cond_1a
    new-instance v0, Landroid/support/v4/view/p$c;

    invoke-direct {v0}, Landroid/support/v4/view/p$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/p;->a:Landroid/support/v4/view/p$c;

    :goto_21
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;I)V
    .registers 4

    instance-of v0, p0, Landroid/support/v4/view/h;

    if-eqz v0, :cond_a

    check-cast p0, Landroid/support/v4/view/h;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/h;->a(Landroid/view/View;I)V

    goto :goto_11

    :cond_a
    if-nez p2, :cond_11

    sget-object p2, Landroid/support/v4/view/p;->a:Landroid/support/v4/view/p$c;

    invoke-virtual {p2, p0, p1}, Landroid/support/v4/view/p$c;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .registers 16

    instance-of v0, p0, Landroid/support/v4/view/h;

    if-eqz v0, :cond_11

    move-object v1, p0

    check-cast v1, Landroid/support/v4/view/h;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/support/v4/view/h;->a(Landroid/view/View;IIIII)V

    goto :goto_1e

    :cond_11
    if-nez p6, :cond_1e

    sget-object v2, Landroid/support/v4/view/p;->a:Landroid/support/v4/view/p$c;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/view/p$c;->a(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .registers 14

    instance-of v0, p0, Landroid/support/v4/view/h;

    if-eqz v0, :cond_10

    move-object v1, p0

    check-cast v1, Landroid/support/v4/view/h;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/support/v4/view/h;->a(Landroid/view/View;II[II)V

    goto :goto_1c

    :cond_10
    if-nez p5, :cond_1c

    sget-object v2, Landroid/support/v4/view/p;->a:Landroid/support/v4/view/p$c;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/view/p$c;->a(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    instance-of v0, p0, Landroid/support/v4/view/h;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/support/v4/view/h;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/h;->b(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0

    :cond_b
    if-nez p4, :cond_14

    sget-object p4, Landroid/support/v4/view/p;->a:Landroid/support/v4/view/p$c;

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/support/v4/view/p$c;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
