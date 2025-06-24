.class public Landroid/support/v4/view/g;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private a:Landroid/view/ViewParent;

.field private b:Landroid/view/ViewParent;

.field private final c:Landroid/view/View;

.field private d:Z

.field private e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    return-void
.end method

.method private c(I)Landroid/view/ViewParent;
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    iget-object p1, p0, Landroid/support/v4/view/g;->b:Landroid/view/ViewParent;

    return-object p1

    :cond_a
    iget-object p1, p0, Landroid/support/v4/view/g;->a:Landroid/view/ViewParent;

    return-object p1
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/view/g;->d:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    sget-object v1, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/n$j;->m(Landroid/view/View;)V

    :cond_b
    iput-boolean p1, p0, Landroid/support/v4/view/g;->d:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/view/g;->d:Z

    return v0
.end method

.method public a(FF)Z
    .registers 6

    iget-boolean v0, p0, Landroid/support/v4/view/g;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Landroid/support/v4/view/g;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    sget-object v2, Landroid/support/v4/view/p;->a:Landroid/support/v4/view/p$c;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/support/v4/view/p$c;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_14
    return v1
.end method

.method public a(FFZ)Z
    .registers 12

    iget-boolean v0, p0, Landroid/support/v4/view/g;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-direct {p0, v1}, Landroid/support/v4/view/g;->c(I)Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v4, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    sget-object v2, Landroid/support/v4/view/p;->a:Landroid/support/v4/view/p$c;

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/view/p$c;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_17
    return v1
.end method

.method public a(I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/view/g;->c(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public a(II)Z
    .registers 8

    invoke-direct {p0, p2}, Landroid/support/v4/view/g;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_e

    return v2

    :cond_e
    iget-boolean v0, p0, Landroid/support/v4/view/g;->d:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    :goto_1a
    if-eqz v0, :cond_4e

    iget-object v4, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    invoke-static {v0, v3, v4, p1, p2}, Landroid/support/v4/view/p;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_42

    if-eqz p2, :cond_2c

    if-eq p2, v2, :cond_29

    goto :goto_2e

    :cond_29
    iput-object v0, p0, Landroid/support/v4/view/g;->b:Landroid/view/ViewParent;

    goto :goto_2e

    :cond_2c
    iput-object v0, p0, Landroid/support/v4/view/g;->a:Landroid/view/ViewParent;

    :goto_2e
    iget-object v1, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    instance-of v4, v0, Landroid/support/v4/view/h;

    if-eqz v4, :cond_3a

    check-cast v0, Landroid/support/v4/view/h;

    invoke-interface {v0, v3, v1, p1, p2}, Landroid/support/v4/view/h;->a(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_41

    :cond_3a
    if-nez p2, :cond_41

    sget-object p2, Landroid/support/v4/view/p;->a:Landroid/support/v4/view/p$c;

    invoke-virtual {p2, v0, v3, v1, p1}, Landroid/support/v4/view/p$c;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    :cond_41
    :goto_41
    return v2

    :cond_42
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_49

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    :cond_49
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1a

    :cond_4e
    return v1
.end method

.method public a(IIII[I)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/g;->a(IIII[II)Z

    move-result p1

    return p1
.end method

.method public a(IIII[II)Z
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p5

    iget-boolean v2, v0, Landroid/support/v4/view/g;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_52

    move/from16 v2, p6

    invoke-direct {p0, v2}, Landroid/support/v4/view/g;->c(I)Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_11

    return v3

    :cond_11
    const/4 v11, 0x1

    if-nez p1, :cond_22

    if-nez p2, :cond_22

    if-nez p3, :cond_22

    if-eqz p4, :cond_1b

    goto :goto_22

    :cond_1b
    if-eqz v1, :cond_52

    aput v3, v1, v3

    aput v3, v1, v11

    goto :goto_52

    :cond_22
    :goto_22
    if-eqz v1, :cond_30

    iget-object v5, v0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v5, v1, v3

    aget v6, v1, v11

    move v12, v5

    move v13, v6

    goto :goto_32

    :cond_30
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_32
    iget-object v5, v0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/support/v4/view/p;->a(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    if-eqz v1, :cond_51

    iget-object v2, v0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v1, v3

    sub-int/2addr v2, v12

    aput v2, v1, v3

    aget v2, v1, v11

    sub-int/2addr v2, v13

    aput v2, v1, v11

    :cond_51
    return v11

    :cond_52
    :goto_52
    return v3
.end method

.method public a(II[I[I)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/g;->a(II[I[II)Z

    move-result p1

    return p1
.end method

.method public a(II[I[II)Z
    .registers 16

    iget-boolean v0, p0, Landroid/support/v4/view/g;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    invoke-direct {p0, p5}, Landroid/support/v4/view/g;->c(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x1

    if-nez p1, :cond_19

    if-eqz p2, :cond_12

    goto :goto_19

    :cond_12
    if-eqz p4, :cond_5f

    aput v1, p4, v1

    aput v1, p4, v0

    goto :goto_5f

    :cond_19
    :goto_19
    if-eqz p4, :cond_27

    iget-object v3, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, p4, v1

    aget v4, p4, v0

    move v8, v3

    move v9, v4

    goto :goto_29

    :cond_27
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_29
    if-nez p3, :cond_36

    iget-object p3, p0, Landroid/support/v4/view/g;->e:[I

    if-nez p3, :cond_34

    const/4 p3, 0x2

    new-array p3, p3, [I

    iput-object p3, p0, Landroid/support/v4/view/g;->e:[I

    :cond_34
    iget-object p3, p0, Landroid/support/v4/view/g;->e:[I

    :cond_36
    aput v1, p3, v1

    aput v1, p3, v0

    iget-object v3, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/p;->a(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz p4, :cond_54

    iget-object p1, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    :cond_54
    aget p1, p3, v1

    if-nez p1, :cond_5e

    aget p1, p3, v0

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v0, 0x0

    :cond_5e
    :goto_5e
    return v0

    :cond_5f
    :goto_5f
    return v1
.end method

.method public b(I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v4/view/g;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Landroid/support/v4/view/g;->c:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/view/p;->a(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    if-eq p1, v1, :cond_12

    goto :goto_17

    :cond_12
    iput-object v0, p0, Landroid/support/v4/view/g;->b:Landroid/view/ViewParent;

    goto :goto_17

    :cond_15
    iput-object v0, p0, Landroid/support/v4/view/g;->a:Landroid/view/ViewParent;

    :cond_17
    :goto_17
    return-void
.end method
