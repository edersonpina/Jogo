.class Landroid/support/v4/app/u;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/u$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Landroid/support/v4/app/z;

.field private static final c:Landroid/support/v4/app/z;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Landroid/support/v4/app/u;->a:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_16

    new-instance v0, Landroid/support/v4/app/v;

    invoke-direct {v0}, Landroid/support/v4/app/v;-><init>()V

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    sput-object v0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/z;

    const-string v0, "android.support.transition.FragmentTransitionSupport"

    :try_start_1b
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-object v0, v1

    :goto_30
    sput-object v0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/z;

    return-void

    nop

    :array_34
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_36

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_47

    return-object p1

    :cond_47
    sget-object p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/z;

    if-eqz p0, :cond_54

    invoke-static {p0, v0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/z;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_54

    sget-object p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/z;

    return-object p0

    :cond_54
    sget-object p0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/z;

    if-eqz p0, :cond_61

    invoke-static {p0, v0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/z;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_61

    sget-object p0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/z;

    return-object p0

    :cond_61
    sget-object p0, Landroid/support/v4/app/u;->b:Landroid/support/v4/app/z;

    if-nez p0, :cond_6a

    sget-object p0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/z;

    if-nez p0, :cond_6a

    return-object p1

    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lb/b/c/d/a;Landroid/support/v4/app/u$a;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/u;->b(Lb/b/c/d/a;Landroid/support/v4/app/u$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/support/v4/app/z;Lb/b/c/d/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Lb/b/c/d/a;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/z;Lb/b/c/d/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Lb/b/c/d/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/z;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    if-nez p2, :cond_6

    goto :goto_24

    :cond_6
    if-eqz p3, :cond_d

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    :goto_11
    invoke-virtual {p0, p1}, Landroid/support/v4/app/z;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p0, Landroid/support/v4/app/v;

    if-nez p1, :cond_1a

    goto :goto_24

    :cond_1a
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_24
    :goto_24
    return-object v0
.end method

.method private static a(Landroid/support/v4/app/z;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_b

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p1

    :goto_f
    invoke-virtual {p0, p1}, Landroid/support/v4/app/z;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 6

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    if-eqz p4, :cond_12

    if-eqz p5, :cond_d

    invoke-virtual {p4}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p4

    goto :goto_13

    :cond_d
    invoke-virtual {p4}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p4

    goto :goto_13

    :cond_12
    const/4 p4, 0x1

    :goto_13
    if-eqz p4, :cond_1a

    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/z;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/z;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1e
    return-object p0
.end method

.method static synthetic a(Landroid/support/v4/app/z;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/z;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLb/b/c/d/a;Z)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLb/b/c/d/a;Z)V

    return-void
.end method

.method private static a(Landroid/support/v4/app/b;Landroid/support/v4/app/b$a;Landroid/util/SparseArray;ZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/b;",
            "Landroid/support/v4/app/b$a;",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/u$a;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v6, p1, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    if-nez v6, :cond_5

    return-void

    :cond_5
    iget v7, v6, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-nez v7, :cond_a

    return-void

    :cond_a
    if-eqz p3, :cond_13

    sget-object v0, Landroid/support/v4/app/u;->a:[I

    iget p1, p1, Landroid/support/v4/app/b$a;->a:I

    aget p1, v0, p1

    goto :goto_15

    :cond_13
    iget p1, p1, Landroid/support/v4/app/b$a;->a:I

    :goto_15
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7d

    const/4 v2, 0x3

    if-eq p1, v2, :cond_56

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3e

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2c

    const/4 v2, 0x6

    if-eq p1, v2, :cond_56

    const/4 v2, 0x7

    if-eq p1, v2, :cond_7d

    const/4 p1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_8e

    :cond_2c
    if-eqz p4, :cond_3b

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_8c

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8c

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8c

    goto :goto_8a

    :cond_3b
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mHidden:Z

    goto :goto_8d

    :cond_3e
    if-eqz p4, :cond_4d

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_78

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_78

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_78

    goto :goto_76

    :cond_4d
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_78

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez p1, :cond_78

    goto :goto_76

    :cond_56
    if-eqz p4, :cond_6e

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez p1, :cond_78

    iget-object p1, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_78

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_78

    iget p1, v6, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_78

    goto :goto_76

    :cond_6e
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_78

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez p1, :cond_78

    :goto_76
    const/4 p1, 0x1

    goto :goto_79

    :cond_78
    const/4 p1, 0x0

    :goto_79
    move v9, p1

    const/4 p1, 0x0

    const/4 v8, 0x1

    goto :goto_91

    :cond_7d
    if-eqz p4, :cond_82

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_8d

    :cond_82
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez p1, :cond_8c

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8c

    :goto_8a
    const/4 p1, 0x1

    goto :goto_8d

    :cond_8c
    const/4 p1, 0x0

    :goto_8d
    const/4 v2, 0x1

    :goto_8e
    move v1, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_91
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/u$a;

    if-eqz p1, :cond_aa

    if-nez v2, :cond_a4

    new-instance p1, Landroid/support/v4/app/u$a;

    invoke-direct {p1}, Landroid/support/v4/app/u$a;-><init>()V

    invoke-virtual {p2, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, p1

    :cond_a4
    iput-object v6, v2, Landroid/support/v4/app/u$a;->a:Landroid/support/v4/app/Fragment;

    iput-boolean p3, v2, Landroid/support/v4/app/u$a;->b:Z

    iput-object p0, v2, Landroid/support/v4/app/u$a;->c:Landroid/support/v4/app/b;

    :cond_aa
    move-object p1, v2

    const/4 v10, 0x0

    if-nez p4, :cond_d2

    if-eqz v1, :cond_d2

    if-eqz p1, :cond_b8

    iget-object v1, p1, Landroid/support/v4/app/u$a;->d:Landroid/support/v4/app/Fragment;

    if-ne v1, v6, :cond_b8

    iput-object v10, p1, Landroid/support/v4/app/u$a;->d:Landroid/support/v4/app/Fragment;

    :cond_b8
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    iget v2, v6, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v2, v0, :cond_d2

    iget v2, v1, Landroid/support/v4/app/k;->m:I

    if-lt v2, v0, :cond_d2

    iget-boolean v0, p0, Landroid/support/v4/app/b;->s:Z

    if-nez v0, :cond_d2

    invoke-virtual {v1, v6}, Landroid/support/v4/app/k;->d(Landroid/support/v4/app/Fragment;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_d2
    if-eqz v9, :cond_ea

    if-eqz p1, :cond_da

    iget-object v0, p1, Landroid/support/v4/app/u$a;->d:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_ea

    :cond_da
    if-nez p1, :cond_e4

    new-instance p1, Landroid/support/v4/app/u$a;

    invoke-direct {p1}, Landroid/support/v4/app/u$a;-><init>()V

    invoke-virtual {p2, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_e4
    iput-object v6, p1, Landroid/support/v4/app/u$a;->d:Landroid/support/v4/app/Fragment;

    iput-boolean p3, p1, Landroid/support/v4/app/u$a;->e:Z

    iput-object p0, p1, Landroid/support/v4/app/u$a;->f:Landroid/support/v4/app/b;

    :cond_ea
    if-nez p4, :cond_f6

    if-eqz v8, :cond_f6

    if-eqz p1, :cond_f6

    iget-object p0, p1, Landroid/support/v4/app/u$a;->a:Landroid/support/v4/app/Fragment;

    if-ne p0, v6, :cond_f6

    iput-object v10, p1, Landroid/support/v4/app/u$a;->a:Landroid/support/v4/app/Fragment;

    :cond_f6
    return-void
.end method

.method static a(Landroid/support/v4/app/k;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/k;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Landroid/support/v4/app/k;->m:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_10

    return-void

    :cond_10
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move/from16 v7, p3

    :goto_17
    const/4 v8, 0x0

    if-ge v7, v3, :cond_68

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/b;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4e

    iget-object v8, v9, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/k;

    iget-object v8, v8, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    invoke-virtual {v8}, Landroid/support/v4/app/g;->a()Z

    move-result v8

    if-nez v8, :cond_37

    goto :goto_65

    :cond_37
    iget-object v8, v9, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_3e
    if-ltz v8, :cond_65

    iget-object v10, v9, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/b$a;

    invoke-static {v9, v10, v5, v6, v4}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/b;Landroid/support/v4/app/b$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_3e

    :cond_4e
    iget-object v10, v9, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_55
    if-ge v11, v10, :cond_65

    iget-object v12, v9, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/b$a;

    invoke-static {v9, v12, v5, v8, v4}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/b;Landroid/support/v4/app/b$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_55

    :cond_65
    :goto_65
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_68
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_469

    new-instance v7, Landroid/view/View;

    iget-object v9, v0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v9, v9, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v14, 0x0

    :goto_7c
    if-ge v14, v15, :cond_469

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    new-instance v13, Lb/b/c/d/a;

    invoke-direct {v13}, Lb/b/c/d/a;-><init>()V

    add-int/lit8 v10, v3, -0x1

    move/from16 v12, p3

    :goto_8b
    if-lt v10, v12, :cond_f6

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/b;

    invoke-virtual {v11, v9}, Landroid/support/v4/app/b;->b(I)Z

    move-result v16

    if-nez v16, :cond_9a

    goto :goto_eb

    :cond_9a
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    iget-object v6, v11, Landroid/support/v4/app/b;->q:Ljava/util/ArrayList;

    if-eqz v6, :cond_eb

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v16, :cond_b3

    iget-object v8, v11, Landroid/support/v4/app/b;->q:Ljava/util/ArrayList;

    iget-object v11, v11, Landroid/support/v4/app/b;->r:Ljava/util/ArrayList;

    goto :goto_bc

    :cond_b3
    iget-object v8, v11, Landroid/support/v4/app/b;->q:Ljava/util/ArrayList;

    iget-object v11, v11, Landroid/support/v4/app/b;->r:Ljava/util/ArrayList;

    move-object/from16 v38, v11

    move-object v11, v8

    move-object/from16 v8, v38

    :goto_bc
    const/4 v1, 0x0

    :goto_bd
    if-ge v1, v6, :cond_eb

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v3}, Lb/b/c/d/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_df

    invoke-virtual {v13, v2, v6}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e2

    :cond_df
    invoke-virtual {v13, v2, v3}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v6, v17

    goto :goto_bd

    :cond_eb
    :goto_eb
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_8b

    :cond_f6
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/u$a;

    if-eqz v4, :cond_2ec

    iget-object v3, v0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    invoke-virtual {v3}, Landroid/support/v4/app/g;->a()Z

    move-result v3

    if-eqz v3, :cond_10f

    iget-object v3, v0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    invoke-virtual {v3, v9}, Landroid/support/v4/app/g;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_110

    :cond_10f
    const/4 v3, 0x0

    :goto_110
    if-nez v3, :cond_11a

    :goto_112
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    goto/16 :goto_2e5

    :cond_11a
    iget-object v6, v1, Landroid/support/v4/app/u$a;->a:Landroid/support/v4/app/Fragment;

    iget-object v8, v1, Landroid/support/v4/app/u$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {v8, v6}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;

    move-result-object v9

    if-nez v9, :cond_125

    goto :goto_112

    :cond_125
    iget-boolean v10, v1, Landroid/support/v4/app/u$a;->b:Z

    iget-boolean v11, v1, Landroid/support/v4/app/u$a;->e:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v5

    invoke-static {v9, v6, v10}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/z;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v8, v11}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/z;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v1, Landroid/support/v4/app/u$a;->a:Landroid/support/v4/app/Fragment;

    move/from16 v32, v14

    iget-object v14, v1, Landroid/support/v4/app/u$a;->d:Landroid/support/v4/app/Fragment;

    move/from16 v33, v15

    if-eqz v12, :cond_14f

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v15

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_14f
    if-eqz v12, :cond_1ef

    if-nez v14, :cond_155

    goto/16 :goto_1ef

    :cond_155
    iget-boolean v0, v1, Landroid/support/v4/app/u$a;->b:Z

    invoke-virtual {v13}, Lb/b/c/d/j;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_161

    move/from16 v34, v10

    const/4 v15, 0x0

    goto :goto_167

    :cond_161
    invoke-static {v9, v12, v14, v0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/z;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    move/from16 v34, v10

    :goto_167
    invoke-static {v9, v13, v15, v1}, Landroid/support/v4/app/u;->c(Landroid/support/v4/app/z;Lb/b/c/d/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Lb/b/c/d/a;

    move-result-object v10

    move-object/from16 v35, v6

    invoke-static {v9, v13, v15, v1}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/z;Lb/b/c/d/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Lb/b/c/d/a;

    move-result-object v6

    invoke-virtual {v13}, Lb/b/c/d/j;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_183

    if-eqz v10, :cond_17c

    invoke-virtual {v10}, Lb/b/c/d/j;->clear()V

    :cond_17c
    if-eqz v6, :cond_181

    invoke-virtual {v6}, Lb/b/c/d/j;->clear()V

    :cond_181
    const/4 v15, 0x0

    goto :goto_195

    :cond_183
    move-object/from16 v16, v15

    invoke-virtual {v13}, Lb/b/c/d/a;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-static {v4, v10, v15}, Landroid/support/v4/app/u;->a(Ljava/util/ArrayList;Lb/b/c/d/a;Ljava/util/Collection;)V

    invoke-virtual {v13}, Lb/b/c/d/a;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-static {v2, v6, v15}, Landroid/support/v4/app/u;->a(Ljava/util/ArrayList;Lb/b/c/d/a;Ljava/util/Collection;)V

    move-object/from16 v15, v16

    :goto_195
    if-nez v5, :cond_19e

    if-nez v11, :cond_19e

    if-nez v15, :cond_19e

    move-object/from16 v37, v2

    goto :goto_1f5

    :cond_19e
    move-object/from16 v36, v13

    const/4 v13, 0x1

    invoke-static {v12, v14, v0, v10, v13}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLb/b/c/d/a;Z)V

    if-eqz v15, :cond_1d4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v15, v7, v4}, Landroid/support/v4/app/z;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v13, v1, Landroid/support/v4/app/u$a;->e:Z

    move-object/from16 v37, v2

    iget-object v2, v1, Landroid/support/v4/app/u$a;->f:Landroid/support/v4/app/b;

    move-object/from16 v16, v9

    move-object/from16 v17, v15

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move/from16 v20, v13

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v21}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/z;Ljava/lang/Object;Ljava/lang/Object;Lb/b/c/d/a;ZLandroid/support/v4/app/b;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v6, v1, v5, v0}, Landroid/support/v4/app/u;->b(Lb/b/c/d/a;Landroid/support/v4/app/u$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1cf

    invoke-virtual {v9, v5, v2}, Landroid/support/v4/app/z;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_1cf
    move-object/from16 v27, v1

    move-object/from16 v29, v2

    goto :goto_1da

    :cond_1d4
    move-object/from16 v37, v2

    const/16 v27, 0x0

    const/16 v29, 0x0

    :goto_1da
    new-instance v1, Landroid/support/v4/app/s;

    move-object/from16 v22, v1

    move-object/from16 v23, v12

    move-object/from16 v24, v14

    move/from16 v25, v0

    move-object/from16 v26, v6

    move-object/from16 v28, v9

    invoke-direct/range {v22 .. v29}, Landroid/support/v4/app/s;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLb/b/c/d/a;Landroid/view/View;Landroid/support/v4/app/z;Landroid/graphics/Rect;)V

    invoke-static {v3, v1}, Landroid/support/v4/app/k0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/k0;

    goto :goto_1f8

    :cond_1ef
    :goto_1ef
    move-object/from16 v37, v2

    move-object/from16 v35, v6

    move/from16 v34, v10

    :goto_1f5
    move-object/from16 v36, v13

    const/4 v15, 0x0

    :goto_1f8
    if-nez v5, :cond_200

    if-nez v15, :cond_200

    if-nez v11, :cond_200

    goto/16 :goto_2e5

    :cond_200
    invoke-static {v9, v11, v8, v4, v7}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/z;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-static {v9, v5, v1, v2, v7}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/z;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v10, 0x4

    invoke-static {v6, v10}, Landroid/support/v4/app/u;->b(Ljava/util/ArrayList;I)V

    move-object/from16 v16, v9

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move-object/from16 v19, v15

    move-object/from16 v20, v1

    move/from16 v21, v34

    invoke-static/range {v16 .. v21}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e5

    if-eqz v8, :cond_247

    if-eqz v11, :cond_247

    iget-boolean v10, v8, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v10, :cond_247

    iget-boolean v10, v8, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v10, :cond_247

    iget-boolean v10, v8, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v10, :cond_247

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v11, v10, v0}, Landroid/support/v4/app/z;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    new-instance v10, Landroid/support/v4/app/q;

    invoke-direct {v10, v0}, Landroid/support/v4/app/q;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v8, v10}, Landroid/support/v4/app/k0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/k0;

    :cond_247
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_251
    if-ge v12, v10, :cond_267

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-static {v13}, Landroid/support/v4/view/n;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_251

    :cond_267
    move-object/from16 v22, v9

    move-object/from16 v23, v1

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v11

    move-object/from16 v27, v0

    move-object/from16 v28, v15

    move-object/from16 v29, v2

    invoke-virtual/range {v22 .. v29}, Landroid/support/v4/app/z;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v3, v1}, Landroid/support/v4/app/z;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_287
    if-ge v5, v0, :cond_2c7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-static {v10}, Landroid/support/v4/view/n;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_29b

    move-object/from16 v13, v36

    goto :goto_2c2

    :cond_29b
    const/4 v14, 0x0

    invoke-static {v10, v14}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v13, v36

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    :goto_2a8
    if-ge v12, v0, :cond_2c2

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2be

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-static {v10, v11}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2c2

    :cond_2be
    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x0

    goto :goto_2a8

    :cond_2c2
    :goto_2c2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v36, v13

    goto :goto_287

    :cond_2c7
    new-instance v5, Landroid/support/v4/app/w;

    move-object/from16 v22, v5

    move-object/from16 v23, v9

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v26, v8

    move-object/from16 v27, v4

    move-object/from16 v28, v1

    invoke-direct/range {v22 .. v28}, Landroid/support/v4/app/w;-><init>(Landroid/support/v4/app/z;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3, v5}, Landroid/support/v4/app/k0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/k0;

    const/4 v0, 0x0

    invoke-static {v6, v0}, Landroid/support/v4/app/u;->b(Ljava/util/ArrayList;I)V

    invoke-virtual {v9, v15, v4, v2}, Landroid/support/v4/app/z;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2e6

    :cond_2e5
    :goto_2e5
    const/4 v0, 0x0

    :goto_2e6
    move/from16 v27, v32

    move/from16 v30, v33

    goto/16 :goto_455

    :cond_2ec
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    const/4 v0, 0x0

    move-object/from16 v2, p0

    iget-object v3, v2, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    invoke-virtual {v3}, Landroid/support/v4/app/g;->a()Z

    move-result v3

    if-eqz v3, :cond_306

    iget-object v3, v2, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    invoke-virtual {v3, v9}, Landroid/support/v4/app/g;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_307

    :cond_306
    const/4 v3, 0x0

    :goto_307
    if-nez v3, :cond_30a

    goto :goto_2e6

    :cond_30a
    iget-object v4, v1, Landroid/support/v4/app/u$a;->a:Landroid/support/v4/app/Fragment;

    iget-object v5, v1, Landroid/support/v4/app/u$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {v5, v4}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;

    move-result-object v6

    if-nez v6, :cond_315

    goto :goto_2e6

    :cond_315
    iget-boolean v8, v1, Landroid/support/v4/app/u$a;->b:Z

    iget-boolean v9, v1, Landroid/support/v4/app/u$a;->e:Z

    invoke-static {v6, v4, v8}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/z;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v5, v9}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/z;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v1, Landroid/support/v4/app/u$a;->a:Landroid/support/v4/app/Fragment;

    iget-object v15, v1, Landroid/support/v4/app/u$a;->d:Landroid/support/v4/app/Fragment;

    if-eqz v9, :cond_3cd

    if-nez v15, :cond_335

    goto/16 :goto_3cd

    :cond_335
    iget-boolean v14, v1, Landroid/support/v4/app/u$a;->b:Z

    invoke-virtual {v13}, Lb/b/c/d/j;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_33f

    const/4 v0, 0x0

    goto :goto_345

    :cond_33f
    invoke-static {v6, v9, v15, v14}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/z;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    :goto_345
    invoke-static {v6, v13, v0, v1}, Landroid/support/v4/app/u;->c(Landroid/support/v4/app/z;Lb/b/c/d/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Lb/b/c/d/a;

    move-result-object v2

    invoke-virtual {v13}, Lb/b/c/d/j;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_351

    const/4 v0, 0x0

    goto :goto_35c

    :cond_351
    move-object/from16 v16, v0

    invoke-virtual {v2}, Lb/b/c/d/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v16

    :goto_35c
    if-nez v8, :cond_364

    if-nez v12, :cond_364

    if-nez v0, :cond_364

    goto/16 :goto_3cd

    :cond_364
    move-object/from16 v22, v4

    const/4 v4, 0x1

    invoke-static {v9, v15, v14, v2, v4}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLb/b/c/d/a;Z)V

    if-eqz v0, :cond_393

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v0, v7, v11}, Landroid/support/v4/app/z;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v20, v9

    iget-boolean v9, v1, Landroid/support/v4/app/u$a;->e:Z

    move-object/from16 v21, v10

    iget-object v10, v1, Landroid/support/v4/app/u$a;->f:Landroid/support/v4/app/b;

    move/from16 v23, v14

    move-object v14, v6

    move-object/from16 v24, v15

    move-object v15, v0

    move-object/from16 v16, v12

    move-object/from16 v17, v2

    move/from16 v18, v9

    move-object/from16 v19, v10

    invoke-static/range {v14 .. v19}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/z;Ljava/lang/Object;Ljava/lang/Object;Lb/b/c/d/a;ZLandroid/support/v4/app/b;)V

    if-eqz v8, :cond_39c

    invoke-virtual {v6, v8, v4}, Landroid/support/v4/app/z;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_39c

    :cond_393
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v14

    move-object/from16 v24, v15

    const/4 v4, 0x0

    :cond_39c
    :goto_39c
    new-instance v2, Landroid/support/v4/app/t;

    move-object/from16 v16, v20

    move-object v9, v2

    move-object/from16 v15, v21

    move-object v10, v6

    move-object v14, v11

    move-object v11, v13

    move-object/from16 v25, v5

    move-object v5, v12

    move-object v12, v0

    move-object/from16 v26, v0

    move-object v0, v13

    move-object v13, v1

    move-object/from16 v28, v14

    move/from16 v27, v32

    const/16 v29, 0x0

    move-object v14, v15

    move-object/from16 v32, v15

    move/from16 v30, v33

    move-object v15, v7

    move-object/from16 v17, v24

    move/from16 v18, v23

    move-object/from16 v19, v28

    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-direct/range {v9 .. v21}, Landroid/support/v4/app/t;-><init>(Landroid/support/v4/app/z;Lb/b/c/d/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v3, v2}, Landroid/support/v4/app/k0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/k0;

    move-object/from16 v20, v26

    goto :goto_3df

    :cond_3cd
    :goto_3cd
    move-object/from16 v22, v4

    move-object/from16 v25, v5

    move-object/from16 v28, v11

    move-object v5, v12

    move-object v0, v13

    move/from16 v27, v32

    move/from16 v30, v33

    const/16 v29, 0x0

    move-object/from16 v32, v10

    move-object/from16 v20, v29

    :goto_3df
    if-nez v8, :cond_3e7

    if-nez v20, :cond_3e7

    if-nez v5, :cond_3e7

    goto/16 :goto_455

    :cond_3e7
    move-object/from16 v2, v25

    move-object/from16 v4, v28

    invoke-static {v6, v5, v2, v4, v7}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/z;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3fa

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3f8

    goto :goto_3fa

    :cond_3f8
    move-object/from16 v29, v5

    :cond_3fa
    :goto_3fa
    move-object v4, v6

    check-cast v4, Landroid/support/v4/app/v;

    if-eqz v8, :cond_405

    move-object v4, v8

    check-cast v4, Landroid/transition/Transition;

    invoke-virtual {v4, v7}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    :cond_405
    iget-boolean v1, v1, Landroid/support/v4/app/u$a;->b:Z

    move-object v14, v6

    move-object v15, v8

    move-object/from16 v16, v29

    move-object/from16 v17, v20

    move-object/from16 v18, v22

    move/from16 v19, v1

    invoke-static/range {v14 .. v19}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_455

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v6

    move-object v15, v1

    move-object/from16 v16, v8

    move-object/from16 v17, v4

    move-object/from16 v18, v29

    move-object/from16 v19, v2

    move-object/from16 v21, v32

    invoke-virtual/range {v14 .. v21}, Landroid/support/v4/app/z;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    new-instance v5, Landroid/support/v4/app/r;

    move-object v9, v5

    move-object v10, v8

    move-object v11, v6

    move-object v12, v7

    move-object/from16 v13, v22

    move-object/from16 v14, v32

    move-object v15, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v29

    invoke-direct/range {v9 .. v17}, Landroid/support/v4/app/r;-><init>(Ljava/lang/Object;Landroid/support/v4/app/z;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v3, v5}, Landroid/support/v4/app/k0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/k0;

    new-instance v2, Landroid/support/v4/app/x;

    move-object/from16 v4, v32

    invoke-direct {v2, v6, v4, v0}, Landroid/support/v4/app/x;-><init>(Landroid/support/v4/app/z;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v2}, Landroid/support/v4/app/k0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/k0;

    invoke-virtual {v6, v3, v1}, Landroid/support/v4/app/z;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    new-instance v1, Landroid/support/v4/app/y;

    invoke-direct {v1, v6, v4, v0}, Landroid/support/v4/app/y;-><init>(Landroid/support/v4/app/z;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v1}, Landroid/support/v4/app/k0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/k0;

    :cond_455
    :goto_455
    add-int/lit8 v14, v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v15, v30

    move-object/from16 v5, v31

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_7c

    :cond_469
    return-void
.end method

.method private static a(Landroid/support/v4/app/z;Ljava/lang/Object;Ljava/lang/Object;Lb/b/c/d/a;ZLandroid/support/v4/app/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/z;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/support/v4/app/b;",
            ")V"
        }
    .end annotation

    iget-object v0, p5, Landroid/support/v4/app/b;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    const/4 v0, 0x0

    if-eqz p4, :cond_16

    iget-object p4, p5, Landroid/support/v4/app/b;->r:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_1e

    :cond_16
    iget-object p4, p5, Landroid/support/v4/app/b;->q:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    :goto_1e
    invoke-virtual {p3, p4}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/z;->b(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_3f

    check-cast p0, Landroid/support/v4/app/v;

    if-eqz p3, :cond_3f

    check-cast p2, Landroid/transition/Transition;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p3, p1}, Landroid/support/v4/app/z;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance p3, Landroid/support/v4/app/v$a;

    invoke-direct {p3, p0, p1}, Landroid/support/v4/app/v$a;-><init>(Landroid/support/v4/app/v;Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    :cond_3f
    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/support/v4/app/u;->b(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lb/b/c/d/a;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lb/b/c/d/j;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    invoke-virtual {p1, v0}, Lb/b/c/d/j;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/n;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1e
    return-void
.end method

.method private static a(Landroid/support/v4/app/z;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/z;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_16

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v4/app/z;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lb/b/c/d/a;Landroid/support/v4/app/u$a;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/u$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object p1, p1, Landroid/support/v4/app/u$a;->c:Landroid/support/v4/app/b;

    if-eqz p2, :cond_2b

    if-eqz p0, :cond_2b

    iget-object p2, p1, Landroid/support/v4/app/b;->q:Ljava/util/ArrayList;

    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2b

    const/4 p2, 0x0

    if-eqz p3, :cond_1c

    iget-object p1, p1, Landroid/support/v4/app/b;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_24

    :cond_1c
    iget-object p1, p1, Landroid/support/v4/app/b;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_24
    invoke-virtual {p0, p1}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/z;Lb/b/c/d/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Lb/b/c/d/a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/z;",
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/u$a;",
            ")",
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p3, Landroid/support/v4/app/u$a;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/c/d/j;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4e

    if-eqz p2, :cond_4e

    if-nez v1, :cond_12

    goto :goto_4e

    :cond_12
    new-instance p2, Lb/b/c/d/a;

    invoke-direct {p2}, Lb/b/c/d/a;-><init>()V

    invoke-virtual {p0, p2, v1}, Landroid/support/v4/app/z;->a(Ljava/util/Map;Landroid/view/View;)V

    iget-object p0, p3, Landroid/support/v4/app/u$a;->c:Landroid/support/v4/app/b;

    iget-boolean p3, p3, Landroid/support/v4/app/u$a;->b:Z

    if-eqz p3, :cond_27

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/n0;

    move-result-object p3

    iget-object p0, p0, Landroid/support/v4/app/b;->q:Ljava/util/ArrayList;

    goto :goto_2d

    :cond_27
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/n0;

    move-result-object p3

    iget-object p0, p0, Landroid/support/v4/app/b;->r:Ljava/util/ArrayList;

    :goto_2d
    if-eqz p0, :cond_32

    invoke-virtual {p2, p0}, Lb/b/c/d/a;->a(Ljava/util/Collection;)Z

    :cond_32
    if-nez p3, :cond_4d

    invoke-virtual {p1}, Lb/b/c/d/j;->size()I

    move-result p0

    :cond_38
    :goto_38
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_4c

    invoke-virtual {p1, p0}, Lb/b/c/d/j;->d(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lb/b/c/d/j;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_38

    invoke-virtual {p1, p0}, Lb/b/c/d/j;->c(I)Ljava/lang/Object;

    goto :goto_38

    :cond_4c
    return-object p2

    :cond_4d
    throw v3

    :cond_4e
    :goto_4e
    invoke-virtual {p1}, Lb/b/c/d/j;->clear()V

    return-object v3
.end method

.method private static b(Landroid/support/v4/app/z;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_b

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p1

    :goto_f
    invoke-virtual {p0, p1}, Landroid/support/v4/app/z;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/z;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/z;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_22

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/app/z;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_10
    if-eqz p3, :cond_15

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_23

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/z;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :cond_23
    :goto_23
    return-object v0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLb/b/c/d/a;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/n0;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/n0;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_38

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    if-nez p3, :cond_1c

    const/4 v0, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {p3}, Lb/b/c/d/j;->size()I

    move-result v0

    :goto_20
    if-ge p2, v0, :cond_33

    invoke-virtual {p3, p2}, Lb/b/c/d/j;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Lb/b/c/d/j;->d(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_33
    const/4 p0, 0x0

    if-eqz p4, :cond_37

    throw p0

    :cond_37
    throw p0

    :cond_38
    return-void
.end method

.method private static b(Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_17

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method private static c(Landroid/support/v4/app/z;Lb/b/c/d/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Lb/b/c/d/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/z;",
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/u$a;",
            ")",
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lb/b/c/d/j;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    if-nez p2, :cond_a

    goto :goto_39

    :cond_a
    iget-object p2, p3, Landroid/support/v4/app/u$a;->d:Landroid/support/v4/app/Fragment;

    new-instance v0, Lb/b/c/d/a;

    invoke-direct {v0}, Lb/b/c/d/a;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/app/z;->a(Ljava/util/Map;Landroid/view/View;)V

    iget-object p0, p3, Landroid/support/v4/app/u$a;->f:Landroid/support/v4/app/b;

    iget-boolean p3, p3, Landroid/support/v4/app/u$a;->e:Z

    if-eqz p3, :cond_25

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/n0;

    move-result-object p2

    iget-object p0, p0, Landroid/support/v4/app/b;->r:Ljava/util/ArrayList;

    goto :goto_2b

    :cond_25
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/n0;

    move-result-object p2

    iget-object p0, p0, Landroid/support/v4/app/b;->q:Ljava/util/ArrayList;

    :goto_2b
    invoke-virtual {v0, p0}, Lb/b/c/d/a;->a(Ljava/util/Collection;)Z

    if-nez p2, :cond_38

    invoke-virtual {v0}, Lb/b/c/d/a;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb/b/c/d/a;->a(Ljava/util/Collection;)Z

    return-object v0

    :cond_38
    throw v1

    :cond_39
    :goto_39
    invoke-virtual {p1}, Lb/b/c/d/j;->clear()V

    return-object v1
.end method
