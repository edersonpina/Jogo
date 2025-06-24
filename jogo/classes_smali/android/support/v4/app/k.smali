.class final Landroid/support/v4/app/k;
.super Landroid/support/v4/app/j;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/k$e;,
        Landroid/support/v4/app/k$b;,
        Landroid/support/v4/app/k$c;,
        Landroid/support/v4/app/k$d;,
        Landroid/support/v4/app/k$i;,
        Landroid/support/v4/app/k$h;,
        Landroid/support/v4/app/k$g;,
        Landroid/support/v4/app/k$f;
    }
.end annotation


# static fields
.field static E:Ljava/lang/reflect/Field;

.field static final F:Landroid/view/animation/Interpolator;

.field static final G:Landroid/view/animation/Interpolator;


# instance fields
.field A:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/k$i;",
            ">;"
        }
    .end annotation
.end field

.field C:Landroid/support/v4/app/o;

.field D:Ljava/lang/Runnable;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/k$g;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:I

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/j$c;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lb/b/c/d/i<",
            "Landroid/support/v4/app/j$b;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field m:I

.field n:Landroid/support/v4/app/i;

.field o:Landroid/support/v4/app/g;

.field p:Landroid/support/v4/app/Fragment;

.field q:Landroid/support/v4/app/Fragment;

.field r:Z

.field s:Z

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field z:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000  # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/k;->F:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000  # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/k;->G:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/k;->d:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v0, p0, Landroid/support/v4/app/k;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/k;->z:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/k;->A:Landroid/util/SparseArray;

    new-instance v0, Landroid/support/v4/app/k$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/k$a;-><init>(Landroid/support/v4/app/k;)V

    iput-object v0, p0, Landroid/support/v4/app/k;->D:Ljava/lang/Runnable;

    return-void
.end method

.method static a(FFFF)Landroid/support/v4/app/k$d;
    .registers 15

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000  # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000  # 0.5f

    move-object v2, v1

    move v3, p0

    move v4, p1

    move v5, p0

    move v6, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object p0, Landroid/support/v4/app/k;->F:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0xdc

    invoke-virtual {v1, p0, p1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object p2, Landroid/support/v4/app/k;->G:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p0, Landroid/support/v4/app/k$d;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/k$d;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/k$a;)V

    return-object p0
.end method

.method private static a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .registers 4

    const-string v0, "FragmentManager"

    :try_start_2
    sget-object v1, Landroid/support/v4/app/k;->E:Ljava/lang/reflect/Field;

    if-nez v1, :cond_16

    const-class v1, Landroid/view/animation/Animation;

    const-string v2, "mListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/k;->E:Ljava/lang/reflect/Field;

    sget-object v1, Landroid/support/v4/app/k;->E:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_16
    sget-object v1, Landroid/support/v4/app/k;->E:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_1e} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_2d

    :catch_1f
    move-exception p0

    const-string v1, "Cannot access Animation\'s mListener field"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    :catch_26
    move-exception p0

    const-string v1, "No field with the name mListener is found in Animation class"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    const/4 p0, 0x0

    :goto_2d
    return-object p0
.end method

.method private a(Landroid/support/v4/app/b;ZZZ)V
    .registers 12

    if-eqz p2, :cond_6

    invoke-virtual {p1, p4}, Landroid/support/v4/app/b;->b(Z)V

    goto :goto_9

    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/app/b;->c()V

    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_27

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/k;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_27
    if-eqz p4, :cond_2e

    iget p2, p0, Landroid/support/v4/app/k;->m:I

    invoke-virtual {p0, p2, v6}, Landroid/support/v4/app/k;->a(IZ)V

    :cond_2e
    iget-object p2, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz p2, :cond_6e

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_38
    if-ge v0, p2, :cond_6e

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_6b

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_6b

    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_6b

    iget v2, v1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v2}, Landroid/support/v4/app/b;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget v2, v1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_60

    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_60
    if-eqz p4, :cond_65

    iput v3, v1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    goto :goto_6b

    :cond_65
    const/high16 v2, -0x40800000  # -1.0f

    iput v2, v1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    iput-boolean p3, v1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    :cond_6b
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_6e
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/k;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/k;->y()V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/k;Landroid/support/v4/app/b;ZZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/b;ZZZ)V

    return-void
.end method

.method private static a(Landroid/support/v4/app/o;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/o;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    goto :goto_d

    :cond_1d
    invoke-virtual {p0}, Landroid/support/v4/app/o;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_37

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/o;

    invoke-static {v0}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/o;)V

    goto :goto_27

    :cond_37
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/support/v4/app/k$d;)V
    .registers 7

    if-eqz p0, :cond_6f

    if-nez p1, :cond_6

    goto/16 :goto_6f

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_4a

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {p0}, Landroid/support/v4/view/n;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p1, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    instance-of v1, v0, Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_21

    goto :goto_3a

    :cond_21
    instance-of v1, v0, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_41

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_3c

    :goto_3a
    const/4 v0, 0x1

    goto :goto_47

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3f
    const/4 v0, 0x0

    goto :goto_47

    :cond_41
    iget-object v0, p1, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    invoke-static {v0}, Landroid/support/v4/app/k;->a(Landroid/animation/Animator;)Z

    move-result v0

    :goto_47
    if-eqz v0, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    if-eqz v2, :cond_6f

    iget-object v0, p1, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    if-eqz v0, :cond_5a

    new-instance p1, Landroid/support/v4/app/k$e;

    invoke-direct {p1, p0}, Landroid/support/v4/app/k$e;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_6f

    :cond_5a
    iget-object v0, p1, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroid/support/v4/app/k;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p1, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/support/v4/app/k$b;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/k$b;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private a(Lb/b/c/d/c;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/c/d/c<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/app/k;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v1, :cond_43

    iget-object v2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v4/app/Fragment;

    iget v2, v9, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v2, v0, :cond_40

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v5

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    iget-object v2, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_40

    iget-boolean v2, v9, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_40

    iget-boolean v2, v9, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_40

    invoke-virtual {p1, v9}, Lb/b/c/d/c;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_43
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .registers 9

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lb/b/c/d/e;

    invoke-direct {v0, v1}, Lb/b/c/d/e;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_31

    :try_start_22
    new-array v4, v4, [Ljava/lang/String;

    check-cast v0, Landroid/support/v4/app/FragmentActivity$b;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity$b;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v6, v5, v2, v4}, Landroid/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_3b

    :catch_2c
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    :cond_31
    :try_start_31
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2, v0}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3b
    throw p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/k;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_b
    move v2, v0

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_81

    iget-object v3, p0, Landroid/support/v4/app/k;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/k$i;

    const/4 v4, -0x1

    if-eqz p1, :cond_3a

    invoke-static {v3}, Landroid/support/v4/app/k$i;->a(Landroid/support/v4/app/k$i;)Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-static {v3}, Landroid/support/v4/app/k$i;->b(Landroid/support/v4/app/k$i;)Landroid/support/v4/app/b;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_3a

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v3}, Landroid/support/v4/app/k$i;->a()V

    goto :goto_7e

    :cond_3a
    invoke-virtual {v3}, Landroid/support/v4/app/k$i;->c()Z

    move-result v5

    if-nez v5, :cond_50

    if-eqz p1, :cond_7e

    invoke-static {v3}, Landroid/support/v4/app/k$i;->b(Landroid/support/v4/app/k$i;)Landroid/support/v4/app/b;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroid/support/v4/app/b;->a(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_7e

    :cond_50
    iget-object v5, p0, Landroid/support/v4/app/k;->B:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_7b

    invoke-static {v3}, Landroid/support/v4/app/k$i;->a(Landroid/support/v4/app/k$i;)Z

    move-result v5

    if-nez v5, :cond_7b

    invoke-static {v3}, Landroid/support/v4/app/k$i;->b(Landroid/support/v4/app/k$i;)Landroid/support/v4/app/b;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_7b

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-virtual {v3}, Landroid/support/v4/app/k$i;->a()V

    goto :goto_7e

    :cond_7b
    invoke-virtual {v3}, Landroid/support/v4/app/k$i;->b()V

    :cond_7e
    :goto_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_81
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    iget-boolean v11, v0, Landroid/support/v4/app/b;->s:Z

    iget-object v0, v6, Landroid/support/v4/app/k;->y:Ljava/util/ArrayList;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroid/support/v4/app/k;->y:Ljava/util/ArrayList;

    goto :goto_21

    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_21
    iget-object v0, v6, Landroid/support/v4/app/k;->y:Ljava/util/ArrayList;

    iget-object v1, v6, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Landroid/support/v4/app/k;->q:Landroid/support/v4/app/Fragment;

    move-object v1, v0

    move v0, v9

    const/4 v13, 0x0

    :goto_2d
    const/4 v15, 0x1

    if-ge v0, v10, :cond_16f

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/b;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_126

    iget-object v3, v6, Landroid/support/v4/app/k;->y:Ljava/util/ArrayList;

    move-object v5, v1

    const/4 v1, 0x0

    :goto_47
    iget-object v14, v2, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v1, v14, :cond_124

    iget-object v14, v2, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v4/app/b$a;

    iget v12, v14, Landroid/support/v4/app/b$a;->a:I

    if-eq v12, v15, :cond_113

    const/4 v15, 0x2

    const/16 v9, 0x9

    if-eq v12, v15, :cond_95

    if-eq v12, v4, :cond_7c

    const/4 v15, 0x6

    if-eq v12, v15, :cond_7c

    const/4 v15, 0x7

    if-eq v12, v15, :cond_113

    const/16 v15, 0x8

    if-eq v12, v15, :cond_6d

    goto :goto_92

    :cond_6d
    iget-object v12, v2, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/v4/app/b$a;

    invoke-direct {v15, v9, v5}, Landroid/support/v4/app/b$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v12, v1, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    iget-object v5, v14, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    goto :goto_92

    :cond_7c
    iget-object v12, v14, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v12, v14, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    if-ne v12, v5, :cond_92

    iget-object v5, v2, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    new-instance v14, Landroid/support/v4/app/b$a;

    invoke-direct {v14, v9, v12}, Landroid/support/v4/app/b$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v5, v1, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    :cond_92
    :goto_92
    const/4 v7, 0x1

    goto/16 :goto_119

    :cond_95
    iget-object v12, v14, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    iget v15, v12, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, 0x1

    add-int/lit8 v17, v17, -0x1

    move v4, v1

    move-object v9, v5

    move/from16 v1, v17

    const/4 v5, 0x0

    :goto_a6
    if-ltz v1, :cond_fe

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Landroid/support/v4/app/Fragment;

    iget v7, v8, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v7, v15, :cond_f3

    if-ne v8, v12, :cond_ba

    move/from16 v18, v15

    const/4 v5, 0x1

    goto :goto_f5

    :cond_ba
    if-ne v8, v9, :cond_ce

    iget-object v7, v2, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    new-instance v9, Landroid/support/v4/app/b$a;

    move/from16 v18, v15

    const/16 v15, 0x9

    invoke-direct {v9, v15, v8}, Landroid/support/v4/app/b$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v7, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x0

    goto :goto_d2

    :cond_ce
    move/from16 v18, v15

    const/16 v15, 0x9

    :goto_d2
    new-instance v7, Landroid/support/v4/app/b$a;

    const/4 v15, 0x3

    invoke-direct {v7, v15, v8}, Landroid/support/v4/app/b$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    iget v15, v14, Landroid/support/v4/app/b$a;->c:I

    iput v15, v7, Landroid/support/v4/app/b$a;->c:I

    iget v15, v14, Landroid/support/v4/app/b$a;->e:I

    iput v15, v7, Landroid/support/v4/app/b$a;->e:I

    iget v15, v14, Landroid/support/v4/app/b$a;->d:I

    iput v15, v7, Landroid/support/v4/app/b$a;->d:I

    iget v15, v14, Landroid/support/v4/app/b$a;->f:I

    iput v15, v7, Landroid/support/v4/app/b$a;->f:I

    iget-object v15, v2, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v15, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    add-int/2addr v4, v7

    goto :goto_f5

    :cond_f3
    move/from16 v18, v15

    :goto_f5
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v15, v18

    goto :goto_a6

    :cond_fe
    if-eqz v5, :cond_10a

    iget-object v1, v2, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    const/4 v7, 0x1

    goto :goto_111

    :cond_10a
    const/4 v7, 0x1

    iput v7, v14, Landroid/support/v4/app/b$a;->a:I

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    :goto_111
    move-object v5, v9

    goto :goto_119

    :cond_113
    const/4 v7, 0x1

    iget-object v4, v14, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_119
    add-int/2addr v1, v7

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    const/4 v4, 0x3

    const/4 v15, 0x1

    goto/16 :goto_47

    :cond_124
    move-object v1, v5

    goto :goto_15b

    :cond_126
    iget-object v3, v6, Landroid/support/v4/app/k;->y:Ljava/util/ArrayList;

    move-object v4, v1

    const/4 v1, 0x0

    :goto_12a
    iget-object v5, v2, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_15a

    iget-object v5, v2, Landroid/support/v4/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/b$a;

    iget v7, v5, Landroid/support/v4/app/b$a;->a:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_151

    const/4 v8, 0x3

    if-eq v7, v8, :cond_14b

    packed-switch v7, :pswitch_data_2c0

    goto :goto_157

    :pswitch_146  #0x9
    iget-object v4, v5, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    goto :goto_157

    :pswitch_149  #0x8
    const/4 v4, 0x0

    goto :goto_157

    :cond_14b
    :pswitch_14b  #0x6
    iget-object v5, v5, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_157

    :cond_151
    const/4 v8, 0x3

    :pswitch_152  #0x7
    iget-object v5, v5, Landroid/support/v4/app/b$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_157
    add-int/lit8 v1, v1, 0x1

    goto :goto_12a

    :cond_15a
    move-object v1, v4

    :goto_15b
    if-nez v13, :cond_164

    iget-boolean v2, v2, Landroid/support/v4/app/b;->i:Z

    if-eqz v2, :cond_162

    goto :goto_164

    :cond_162
    const/4 v13, 0x0

    goto :goto_165

    :cond_164
    :goto_164
    const/4 v13, 0x1

    :goto_165
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    goto/16 :goto_2d

    :cond_16f
    iget-object v0, v6, Landroid/support/v4/app/k;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_184

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/k;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_184
    move/from16 v0, p3

    :goto_186
    const/4 v7, -0x1

    if-ge v0, v10, :cond_1b7

    move-object/from16 v8, p1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/b;

    move-object/from16 v9, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1ad

    invoke-virtual {v1, v7}, Landroid/support/v4/app/b;->a(I)V

    add-int/lit8 v2, v10, -0x1

    if-ne v0, v2, :cond_1a8

    const/4 v2, 0x1

    goto :goto_1a9

    :cond_1a8
    const/4 v2, 0x0

    :goto_1a9
    invoke-virtual {v1, v2}, Landroid/support/v4/app/b;->b(Z)V

    goto :goto_1b4

    :cond_1ad
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/b;->a(I)V

    invoke-virtual {v1}, Landroid/support/v4/app/b;->c()V

    :goto_1b4
    add-int/lit8 v0, v0, 0x1

    goto :goto_186

    :cond_1b7
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    if-eqz v11, :cond_24a

    new-instance v0, Lb/b/c/d/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lb/b/c/d/c;-><init>(IZ)V

    invoke-direct {v6, v0}, Landroid/support/v4/app/k;->a(Lb/b/c/d/c;)V

    add-int/lit8 v1, v10, -0x1

    move/from16 v12, p3

    move v2, v10

    :goto_1cb
    if-lt v1, v12, :cond_225

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/b;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3}, Landroid/support/v4/app/b;->d()Z

    move-result v5

    if-eqz v5, :cond_1ed

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v8, v5, v10}, Landroid/support/v4/app/b;->a(Ljava/util/ArrayList;II)Z

    move-result v5

    if-nez v5, :cond_1ed

    const/4 v5, 0x1

    goto :goto_1ee

    :cond_1ed
    const/4 v5, 0x0

    :goto_1ee
    if-eqz v5, :cond_221

    iget-object v5, v6, Landroid/support/v4/app/k;->B:Ljava/util/ArrayList;

    if-nez v5, :cond_1fb

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v6, Landroid/support/v4/app/k;->B:Ljava/util/ArrayList;

    :cond_1fb
    new-instance v5, Landroid/support/v4/app/k$i;

    invoke-direct {v5, v3, v4}, Landroid/support/v4/app/k$i;-><init>(Landroid/support/v4/app/b;Z)V

    iget-object v14, v6, Landroid/support/v4/app/k;->B:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment$e;)V

    if-eqz v4, :cond_20f

    invoke-virtual {v3}, Landroid/support/v4/app/b;->c()V

    const/4 v14, 0x0

    goto :goto_213

    :cond_20f
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/support/v4/app/b;->b(Z)V

    :goto_213
    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_21d

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v8, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_21d
    invoke-direct {v6, v0}, Landroid/support/v4/app/k;->a(Lb/b/c/d/c;)V

    goto :goto_222

    :cond_221
    const/4 v14, 0x0

    :goto_222
    add-int/lit8 v1, v1, -0x1

    goto :goto_1cb

    :cond_225
    const/4 v14, 0x0

    invoke-virtual {v0}, Lb/b/c/d/c;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_22b
    if-ge v3, v1, :cond_248

    invoke-virtual {v0, v3}, Lb/b/c/d/c;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    iget-boolean v5, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v5, :cond_245

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v15

    iput v15, v4, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_245
    add-int/lit8 v3, v3, 0x1

    goto :goto_22b

    :cond_248
    move v4, v2

    goto :goto_24e

    :cond_24a
    move/from16 v12, p3

    const/4 v14, 0x0

    move v4, v10

    :goto_24e
    if-eq v4, v12, :cond_264

    if-eqz v11, :cond_264

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/k;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    iget v0, v6, Landroid/support/v4/app/k;->m:I

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/app/k;->a(IZ)V

    :cond_264
    :goto_264
    if-ge v12, v10, :cond_2a2

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_281

    iget v1, v0, Landroid/support/v4/app/b;->l:I

    if-ltz v1, :cond_281

    invoke-virtual {v6, v1}, Landroid/support/v4/app/k;->b(I)V

    iput v7, v0, Landroid/support/v4/app/b;->l:I

    :cond_281
    iget-object v1, v0, Landroid/support/v4/app/b;->t:Ljava/util/ArrayList;

    if-eqz v1, :cond_29e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_28a
    if-ge v2, v1, :cond_29a

    iget-object v3, v0, Landroid/support/v4/app/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28a

    :cond_29a
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/app/b;->t:Ljava/util/ArrayList;

    goto :goto_29f

    :cond_29e
    const/4 v2, 0x0

    :goto_29f
    add-int/lit8 v12, v12, 0x1

    goto :goto_264

    :cond_2a2
    if-eqz v13, :cond_2be

    iget-object v0, v6, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_2be

    :goto_2a8
    iget-object v0, v6, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_2be

    iget-object v0, v6, Landroid/support/v4/app/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/j$c;

    invoke-interface {v0}, Landroid/support/v4/app/j$c;->a()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2a8

    :cond_2be
    return-void

    nop

    :pswitch_data_2c0
    .packed-switch 0x6
        :pswitch_14b  #00000006
        :pswitch_152  #00000007
        :pswitch_149  #00000008
        :pswitch_146  #00000009
    .end packed-switch
.end method

.method static a(Landroid/animation/Animator;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const/4 v1, 0x0

    :goto_10
    array-length v3, p0

    if-ge v1, v3, :cond_46

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    return v2

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_25
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_46

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    :goto_30
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Landroid/support/v4/app/k;->a(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_43

    return v2

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_46
    return v0
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3a

    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_16
    if-ge v1, v0, :cond_28

    iget-object v3, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/k$g;

    invoke-interface {v3, p1, p2}, Landroid/support/v4/app/k$g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    iget-object p1, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    invoke-virtual {p1}, Landroid/support/v4/app/i;->e()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/app/k;->D:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0

    return v2

    :cond_3a
    :goto_3a
    monitor-exit p0

    return v1

    :catchall_3c
    move-exception p1

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    goto :goto_40

    :goto_3f
    throw p1

    :goto_40
    goto :goto_3f
.end method

.method private c(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/k;->a(IZ)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_d

    iput-boolean v1, p0, Landroid/support/v4/app/k;->c:Z

    invoke-virtual {p0}, Landroid/support/v4/app/k;->o()Z

    return-void

    :catchall_d
    move-exception p1

    iput-boolean v1, p0, Landroid/support/v4/app/k;->c:Z

    throw p1
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6e

    :cond_9
    if-eqz p2, :cond_66

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_66

    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/k;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_60

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/b;

    iget-boolean v3, v3, Landroid/support/v4/app/b;->s:Z

    if-nez v3, :cond_5d

    if-eq v2, v1, :cond_2f

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/support/v4/app/k;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_2f
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_58

    :goto_3d
    if-ge v2, v0, :cond_58

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/b;

    iget-boolean v3, v3, Landroid/support/v4/app/b;->s:Z

    if-nez v3, :cond_58

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_58
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/support/v4/app/k;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_60
    if-eq v2, v0, :cond_65

    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v4/app/k;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_65
    return-void

    :cond_66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    :goto_6e
    return-void
.end method

.method private c(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    if-nez v0, :cond_42

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    invoke-virtual {v1}, Landroid/support/v4/app/i;->e()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3a

    if-nez p1, :cond_19

    invoke-direct {p0}, Landroid/support/v4/app/k;->w()V

    :cond_19
    iget-object p1, p0, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    if-nez p1, :cond_2b

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/k;->x:Ljava/util/ArrayList;

    :cond_2b
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/k;->c:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_30
    invoke-direct {p0, v0, v0}, Landroid/support/v4/app/k;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_36

    iput-boolean p1, p0, Landroid/support/v4/app/k;->c:Z

    return-void

    :catchall_36
    move-exception v0

    iput-boolean p1, p0, Landroid/support/v4/app/k;->c:Z

    throw v0

    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(I)I
    .registers 4

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_13

    if-eq p0, v1, :cond_11

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    goto :goto_13

    :cond_e
    const/16 v0, 0x1001

    goto :goto_13

    :cond_11
    const/16 v0, 0x1003

    :cond_13
    :goto_13
    return v0
.end method

.method private v()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_20

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_20
    return-void
.end method

.method private w()V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/k;->s:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action inside of "

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private x()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    iget-object v0, p0, Landroid/support/v4/app/k;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private y()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/k;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/k;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iget-object v3, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    if-nez v0, :cond_23

    if-eqz v1, :cond_39

    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->e()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/k;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->e()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/k;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_39
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3b

    throw v0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/b;)I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    goto :goto_29

    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return v0

    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_34

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    :cond_34
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return v0

    :catchall_41
    move-exception p1

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_19

    iget v2, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_26
    if-ltz v0, :cond_3a

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_37

    iget v2, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_37

    return-object v1

    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_3a
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5

    if-eqz p1, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_22

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1f

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_46

    if-eqz p1, :cond_46

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2e
    if-ltz v0, :cond_46

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_43

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    return-object v1

    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    :cond_46
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/k$d;
    .registers 11

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    new-instance p1, Landroid/support/v4/app/k$d;

    invoke-direct {p1, v1, v2}, Landroid/support/v4/app/k$d;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/k$a;)V

    return-object p1

    :cond_11
    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1d

    new-instance p2, Landroid/support/v4/app/k$d;

    invoke-direct {p2, p1, v2}, Landroid/support/v4/app/k$d;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/k$a;)V

    return-object p2

    :cond_1d
    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_70

    iget-object v3, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v3, v3, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "anim"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    :try_start_35
    iget-object v4, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v4, v4, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-static {v4, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_45

    new-instance v5, Landroid/support/v4/app/k$d;

    invoke-direct {v5, v4, v2}, Landroid/support/v4/app/k$d;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/k$a;)V
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_44} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_44} :catch_49

    return-object v5

    :cond_45
    const/4 v4, 0x1

    goto :goto_4a

    :catch_47
    move-exception p1

    throw p1

    :catch_49
    :cond_49
    const/4 v4, 0x0

    :goto_4a
    if-nez v4, :cond_70

    :try_start_4c
    iget-object v4, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v4, v4, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-static {v4, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    if-eqz v4, :cond_70

    new-instance v5, Landroid/support/v4/app/k$d;

    invoke-direct {v5, v4, v2}, Landroid/support/v4/app/k$d;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/k$a;)V
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_5b} :catch_5c

    return-object v5

    :catch_5c
    move-exception v4

    if-nez v3, :cond_6f

    iget-object v3, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v3, v3, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_70

    new-instance p1, Landroid/support/v4/app/k$d;

    invoke-direct {p1, v0, v2}, Landroid/support/v4/app/k$d;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/k$a;)V

    return-object p1

    :cond_6f
    throw v4

    :cond_70
    if-nez p2, :cond_73

    return-object v2

    :cond_73
    const/16 v0, 0x1001

    if-eq p2, v0, :cond_8d

    const/16 v0, 0x1003

    if-eq p2, v0, :cond_87

    const/16 v0, 0x2002

    if-eq p2, v0, :cond_81

    const/4 p2, -0x1

    goto :goto_92

    :cond_81
    if-eqz p3, :cond_85

    const/4 p2, 0x3

    goto :goto_92

    :cond_85
    const/4 p2, 0x4

    goto :goto_92

    :cond_87
    if-eqz p3, :cond_8b

    const/4 p2, 0x5

    goto :goto_92

    :cond_8b
    const/4 p2, 0x6

    goto :goto_92

    :cond_8d
    if-eqz p3, :cond_91

    const/4 p2, 0x1

    goto :goto_92

    :cond_91
    const/4 p2, 0x2

    :goto_92
    if-gez p2, :cond_95

    return-object v2

    :cond_95
    const p3, 0x3f79999a  # 0.975f

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const-wide/16 v4, 0xdc

    packed-switch p2, :pswitch_data_11e

    if-nez p4, :cond_11c

    iget-object p2, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    goto :goto_fc

    :pswitch_a5  #0x6
    iget-object p1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object p1, p1, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v3, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object p2, Landroid/support/v4/app/k;->G:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance p2, Landroid/support/v4/app/k$d;

    invoke-direct {p2, p1, v2}, Landroid/support/v4/app/k$d;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/k$a;)V

    return-object p2

    :pswitch_bc  #0x5
    iget-object p1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object p1, p1, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v0, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object p2, Landroid/support/v4/app/k;->G:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance p2, Landroid/support/v4/app/k$d;

    invoke-direct {p2, p1, v2}, Landroid/support/v4/app/k$d;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/k$a;)V

    return-object p2

    :pswitch_d3  #0x4
    iget-object p1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object p1, p1, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    const p1, 0x3f89999a  # 1.075f

    invoke-static {v3, p1, v3, v0}, Landroid/support/v4/app/k;->a(FFFF)Landroid/support/v4/app/k$d;

    move-result-object p1

    return-object p1

    :pswitch_df  #0x3
    iget-object p1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object p1, p1, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-static {p3, v3, v0, v3}, Landroid/support/v4/app/k;->a(FFFF)Landroid/support/v4/app/k$d;

    move-result-object p1

    return-object p1

    :pswitch_e8  #0x2
    iget-object p1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object p1, p1, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-static {v3, p3, v3, v0}, Landroid/support/v4/app/k;->a(FFFF)Landroid/support/v4/app/k$d;

    move-result-object p1

    return-object p1

    :pswitch_f1  #0x1
    iget-object p1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object p1, p1, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    const/high16 p1, 0x3f900000  # 1.125f

    invoke-static {p1, v3, v0, v3}, Landroid/support/v4/app/k;->a(FFFF)Landroid/support/v4/app/k$d;

    move-result-object p1

    return-object p1

    :goto_fc
    check-cast p2, Landroid/support/v4/app/FragmentActivity$b;

    iget-object p2, p2, Landroid/support/v4/app/FragmentActivity$b;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_107

    const/4 p1, 0x1

    :cond_107
    if-eqz p1, :cond_11c

    iget-object p1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    check-cast p1, Landroid/support/v4/app/FragmentActivity$b;

    iget-object p1, p1, Landroid/support/v4/app/FragmentActivity$b;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_116

    goto :goto_11c

    :cond_116
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_11c
    :goto_11c
    return-object v2

    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_f1  #00000001
        :pswitch_e8  #00000002
        :pswitch_df  #00000003
        :pswitch_d3  #00000004
        :pswitch_bc  #00000005
        :pswitch_a5  #00000006
    .end packed-switch
.end method

.method public a()Landroid/support/v4/app/p;
    .registers 2

    new-instance v0, Landroid/support/v4/app/b;

    invoke-direct {v0, p0}, Landroid/support/v4/app/b;-><init>(Landroid/support/v4/app/k;)V

    return-object v0
.end method

.method public a(II)V
    .registers 5

    if-ltz p1, :cond_d

    new-instance v0, Landroid/support/v4/app/k$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v4/app/k$h;-><init>(Landroid/support/v4/app/k;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/k$g;Z)V

    return-void

    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad id: "

    invoke-static {v0, p1}, Ld/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(ILandroid/support/v4/app/b;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_1a
    :goto_1a
    if-ge v0, p1, :cond_39

    iget-object v1, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    if-nez v1, :cond_2d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    :cond_2d
    iget-object v1, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_39
    iget-object p1, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3e
    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_40

    goto :goto_44

    :goto_43
    throw p1

    :goto_44
    goto :goto_43
.end method

.method a(IZ)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    if-nez v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_f
    if-nez p2, :cond_16

    iget p2, p0, Landroid/support/v4/app/k;->m:I

    if-ne p1, p2, :cond_16

    return-void

    :cond_16
    iput p1, p0, Landroid/support/v4/app/k;->m:I

    iget-object p1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz p1, :cond_87

    iget-object p1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_25
    if-ge v0, p1, :cond_3e

    iget-object v2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/k;->e(Landroid/support/v4/app/Fragment;)V

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/c0;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Landroid/support/v4/app/c0;->f()Z

    move-result v2

    or-int/2addr v1, v2

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3e
    iget-object p1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_45
    if-ge v0, p1, :cond_6c

    iget-object v2, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_69

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-nez v3, :cond_59

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v3, :cond_69

    :cond_59
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-nez v3, :cond_69

    invoke-virtual {p0, v2}, Landroid/support/v4/app/k;->e(Landroid/support/v4/app/Fragment;)V

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/c0;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Landroid/support/v4/app/c0;->f()Z

    move-result v2

    or-int/2addr v1, v2

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_6c
    if-nez v1, :cond_71

    invoke-virtual {p0}, Landroid/support/v4/app/k;->u()V

    :cond_71
    iget-boolean p1, p0, Landroid/support/v4/app/k;->r:Z

    if-eqz p1, :cond_87

    iget-object p1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    if-eqz p1, :cond_87

    iget v0, p0, Landroid/support/v4/app/k;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_87

    check-cast p1, Landroid/support/v4/app/FragmentActivity$b;

    iget-object p1, p1, Landroid/support/v4/app/FragmentActivity$b;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    iput-boolean p2, p0, Landroid/support/v4/app/k;->r:Z

    :cond_87
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method a(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    :cond_3
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[Landroid/support/v4/app/FragmentState;

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_83

    invoke-virtual {p2}, Landroid/support/v4/app/o;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/app/o;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v2, :cond_1d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v4, :cond_84

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    const/4 v7, 0x0

    :goto_28
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->b:[Landroid/support/v4/app/FragmentState;

    array-length v9, v8

    if-ge v7, v9, :cond_38

    aget-object v8, v8, v7

    iget v8, v8, Landroid/support/v4/app/FragmentState;->c:I

    iget v9, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    if-eq v8, v9, :cond_38

    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_38
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->b:[Landroid/support/v4/app/FragmentState;

    array-length v9, v8

    if-eq v7, v9, :cond_6b

    aget-object v7, v8, v7

    iput-object v6, v7, Landroid/support/v4/app/FragmentState;->m:Landroid/support/v4/app/Fragment;

    iput-object v0, v6, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iput v1, v6, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    iput-boolean v1, v6, Landroid/support/v4/app/Fragment;->mInLayout:Z

    iput-boolean v1, v6, Landroid/support/v4/app/Fragment;->mAdded:Z

    iput-object v0, v6, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    if-eqz v8, :cond_68

    iget-object v9, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v9, v9, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    const-string v9, "android:view_state"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v6, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    iput-object v7, v6, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_6b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find active fragment with index "

    invoke-static {p2}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/support/v4/app/k;->a(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_83
    move-object v3, v0

    :cond_84
    new-instance v2, Landroid/util/SparseArray;

    iget-object v4, p1, Landroid/support/v4/app/FragmentManagerState;->b:[Landroid/support/v4/app/FragmentState;

    array-length v4, v4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    const/4 v2, 0x0

    :goto_8f
    iget-object v4, p1, Landroid/support/v4/app/FragmentManagerState;->b:[Landroid/support/v4/app/FragmentState;

    array-length v5, v4

    if-ge v2, v5, :cond_be

    aget-object v4, v4, v2

    if-eqz v4, :cond_bb

    if-eqz v3, :cond_a7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_a7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/o;

    goto :goto_a8

    :cond_a7
    move-object v5, v0

    :goto_a8
    iget-object v6, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v7, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    iget-object v8, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/g;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/o;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    iget v7, v5, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v0, v4, Landroid/support/v4/app/FragmentState;->m:Landroid/support/v4/app/Fragment;

    :cond_bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    :cond_be
    if-eqz p2, :cond_10a

    invoke-virtual {p2}, Landroid/support/v4/app/o;->b()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_cb

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_cc

    :cond_cb
    const/4 v2, 0x0

    :goto_cc
    const/4 v3, 0x0

    :goto_cd
    if-ge v3, v2, :cond_10a

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    iget v5, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v5, :cond_107

    iget-object v6, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    iput-object v5, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget-object v5, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-nez v5, :cond_107

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-attaching retained fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " target no longer exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    add-int/lit8 v3, v3, 0x1

    goto :goto_cd

    :cond_10a
    iget-object p2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->c:[I

    if-eqz p2, :cond_161

    const/4 p2, 0x0

    :goto_114
    iget-object v2, p1, Landroid/support/v4/app/FragmentManagerState;->c:[I

    array-length v3, v2

    if-ge p2, v3, :cond_161

    iget-object v3, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    aget v2, v2, p2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_147

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13f

    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_133
    iget-object v4, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_114

    :catchall_13c
    move-exception p1

    monitor-exit v3
    :try_end_13e
    .catchall {:try_start_133 .. :try_end_13e} :catchall_13c

    throw p1

    :cond_13f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already added!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_147
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instantiated fragment for index #"

    invoke-static {v2}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[I

    aget p1, p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/k;->a(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_161
    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->d:[Landroid/support/v4/app/BackStackState;

    if-eqz p2, :cond_187

    new-instance v0, Ljava/util/ArrayList;

    array-length p2, p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    :goto_16d
    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->d:[Landroid/support/v4/app/BackStackState;

    array-length v0, p2

    if-ge v1, v0, :cond_189

    aget-object p2, p2, v1

    invoke-virtual {p2, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/k;)Landroid/support/v4/app/b;

    move-result-object p2

    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p2, Landroid/support/v4/app/b;->l:I

    if-ltz v0, :cond_184

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/app/k;->a(ILandroid/support/v4/app/b;)V

    :cond_184
    add-int/lit8 v1, v1, 0x1

    goto :goto_16d

    :cond_187
    iput-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    :cond_189
    iget p2, p1, Landroid/support/v4/app/FragmentManagerState;->e:I

    if-ltz p2, :cond_197

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Landroid/support/v4/app/k;->q:Landroid/support/v4/app/Fragment;

    :cond_197
    iget p1, p1, Landroid/support/v4/app/FragmentManagerState;->f:I

    iput p1, p0, Landroid/support/v4/app/k;->d:I

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .registers 5

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_44

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_2a

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_44

    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_44

    iput-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    goto :goto_44

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    :goto_44
    return-void
.end method

.method a(Landroid/support/v4/app/Fragment;IIIZ)V
    .registers 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mAdded:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_11

    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_e

    goto :goto_11

    :cond_e
    move/from16 v0, p2

    goto :goto_16

    :cond_11
    :goto_11
    move/from16 v0, p2

    if-le v0, v8, :cond_16

    const/4 v0, 0x1

    :cond_16
    :goto_16
    iget-boolean v1, v7, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_2a

    iget v1, v7, Landroid/support/v4/app/Fragment;->mState:I

    if-le v0, v1, :cond_2a

    if-nez v1, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_2a

    :cond_28
    iget v0, v7, Landroid/support/v4/app/Fragment;->mState:I

    :cond_2a
    :goto_2a
    iget-boolean v1, v7, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eqz v1, :cond_39

    iget v1, v7, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v1, v10, :cond_39

    if-le v0, v9, :cond_39

    const/4 v0, 0x3

    const/4 v11, 0x3

    goto :goto_3a

    :cond_39
    move v11, v0

    :goto_3a
    iget v0, v7, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-gt v0, v11, :cond_2b6

    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_4a

    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_4a

    return-void

    :cond_4a
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_56

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_6a

    :cond_56
    invoke-virtual {v7, v14}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    invoke-virtual {v7, v14}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_6a
    iget v0, v7, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v15, -0x1

    if-eqz v0, :cond_79

    if-eq v0, v8, :cond_19b

    if-eq v0, v12, :cond_29b

    if-eq v0, v9, :cond_29f

    if-eq v0, v10, :cond_2a7

    goto/16 :goto_3f7

    :cond_79
    if-lez v11, :cond_19b

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_f0

    iget-object v1, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v1, v1, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v15, :cond_a0

    move-object v2, v14

    goto :goto_aa

    :cond_a0
    iget-object v2, v6, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_ce

    :goto_aa
    iput-object v2, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_ba

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    :cond_ba
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_f0

    iput-boolean v8, v7, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-le v11, v9, :cond_f0

    const/4 v11, 0x3

    goto :goto_f0

    :cond_ce
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": index "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v2}, Landroid/support/v4/app/k;->a(Ljava/lang/RuntimeException;)V

    throw v14

    :cond_f0
    :goto_f0
    iget-object v0, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iput-object v0, v7, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/i;

    iget-object v1, v6, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    iput-object v1, v7, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_fd

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/k;

    goto :goto_ff

    :cond_fd
    iget-object v0, v0, Landroid/support/v4/app/i;->d:Landroid/support/v4/app/k;

    :goto_ff
    iput-object v0, v7, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/k;

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    const-string v10, "Fragment "

    if-eqz v0, :cond_145

    iget-object v1, v6, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-ne v0, v1, :cond_121

    iget v0, v1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v8, :cond_145

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_145

    :cond_121
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_145
    :goto_145
    iget-object v0, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-virtual {v6, v7, v0, v13}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    iput-boolean v13, v7, Landroid/support/v4/app/Fragment;->mCalled:Z

    iget-object v0, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_18f

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_167

    iget-object v0, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    check-cast v0, Landroid/support/v4/app/FragmentActivity$b;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity$b;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_16a

    :cond_167
    invoke-virtual {v0, v7}, Landroid/support/v4/app/Fragment;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    :goto_16a
    iget-object v0, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-virtual {v6, v7, v0, v13}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mIsCreated:Z

    if-nez v0, :cond_185

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v13}, Landroid/support/v4/app/k;->c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v13}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_18c

    :cond_185
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iput v8, v7, Landroid/support/v4/app/Fragment;->mState:I

    :goto_18c
    iput-boolean v13, v7, Landroid/support/v4/app/Fragment;->mRetaining:Z

    goto :goto_19b

    :cond_18f
    new-instance v0, Landroid/support/v4/app/o0;

    const-string v1, " did not call through to super.onAttach()"

    invoke-static {v10, v7, v1}, Ld/a/a/a/a;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/o0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19b
    :goto_19b
    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1d6

    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_1d6

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v14, v2}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1d4

    iput-object v0, v7, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1c5

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1c5
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v2, v13}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_1d6

    :cond_1d4
    iput-object v14, v7, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    :cond_1d6
    :goto_1d6
    if-le v11, v8, :cond_29b

    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_286

    iget v0, v7, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_23b

    if-eq v0, v15, :cond_22a

    iget-object v2, v6, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/g;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_23c

    iget-boolean v2, v7, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-eqz v2, :cond_1f1

    goto :goto_23c

    :cond_1f1
    :try_start_1f1
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v7, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1fb
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f1 .. :try_end_1fb} :catch_1fc

    goto :goto_1fe

    :catch_1fc
    const-string v0, "unknown"

    :goto_1fe
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No view found for id 0x"

    invoke-static {v2}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v1}, Landroid/support/v4/app/k;->a(Ljava/lang/RuntimeException;)V

    throw v14

    :cond_22a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create fragment "

    const-string v2, " for a container view with no id"

    invoke-static {v1, v7, v2}, Ld/a/a/a/a;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Landroid/support/v4/app/k;->a(Ljava/lang/RuntimeException;)V

    throw v14

    :cond_23b
    move-object v0, v14

    :cond_23c
    :goto_23c
    iput-object v0, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v2}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v2, v0, v3}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_284

    iput-object v2, v7, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    invoke-virtual {v2, v13}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v0, :cond_25c

    iget-object v2, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_25c
    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_265

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_265
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v1, v13}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_280

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_280

    goto :goto_281

    :cond_280
    const/4 v8, 0x0

    :goto_281
    iput-boolean v8, v7, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_286

    :cond_284
    iput-object v14, v7, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    :cond_286
    :goto_286
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v13}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_299

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    :cond_299
    iput-object v14, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_29b
    if-le v11, v12, :cond_29f

    iput v9, v7, Landroid/support/v4/app/Fragment;->mState:I

    :cond_29f
    if-le v11, v9, :cond_2a7

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performStart()V

    invoke-virtual {v6, v7, v13}, Landroid/support/v4/app/k;->f(Landroid/support/v4/app/Fragment;Z)V

    :cond_2a7
    const/4 v0, 0x4

    if-le v11, v0, :cond_3f7

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performResume()V

    invoke-virtual {v6, v7, v13}, Landroid/support/v4/app/k;->e(Landroid/support/v4/app/Fragment;Z)V

    iput-object v14, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v14, v7, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_3f7

    :cond_2b6
    if-le v0, v11, :cond_3f7

    if-eq v0, v8, :cond_38a

    if-eq v0, v12, :cond_2db

    if-eq v0, v9, :cond_2d6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2ce

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2c6

    goto/16 :goto_3f7

    :cond_2c6
    if-ge v11, v2, :cond_2ce

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performPause()V

    invoke-virtual {v6, v7, v13}, Landroid/support/v4/app/k;->d(Landroid/support/v4/app/Fragment;Z)V

    :cond_2ce
    if-ge v11, v1, :cond_2d6

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performStop()V

    invoke-virtual {v6, v7, v13}, Landroid/support/v4/app/k;->g(Landroid/support/v4/app/Fragment;Z)V

    :cond_2d6
    if-ge v11, v9, :cond_2db

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    :cond_2db
    if-ge v11, v12, :cond_38a

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2f5

    iget-object v0, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    check-cast v0, Landroid/support/v4/app/FragmentActivity$b;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity$b;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/2addr v0, v8

    if-eqz v0, :cond_2f5

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_2f5

    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/k;->h(Landroid/support/v4/app/Fragment;)V

    :cond_2f5
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    invoke-virtual {v6, v7, v13}, Landroid/support/v4/app/k;->h(Landroid/support/v4/app/Fragment;Z)V

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_382

    iget-object v1, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_382

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget v0, v6, Landroid/support/v4/app/k;->m:I

    const/4 v1, 0x0

    if-lez v0, :cond_32e

    iget-boolean v0, v6, Landroid/support/v4/app/k;->t:Z

    if-nez v0, :cond_32e

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_32e

    iget v0, v7, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_32e

    move/from16 v0, p3

    move/from16 v2, p4

    invoke-virtual {v6, v7, v0, v13, v2}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/k$d;

    move-result-object v0

    move-object v9, v0

    goto :goto_32f

    :cond_32e
    move-object v9, v14

    :goto_32f
    iput v1, v7, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    if-eqz v9, :cond_37b

    iget-object v10, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    invoke-virtual {v7, v11}, Landroid/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    iget-object v12, v9, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    if-eqz v12, :cond_361

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    invoke-static {v12}, Landroid/support/v4/app/k;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    new-instance v15, Landroid/support/v4/app/l;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v4, v10

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/k;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v12, v15}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {v10, v9}, Landroid/support/v4/app/k;->a(Landroid/view/View;Landroid/support/v4/app/k$d;)V

    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_37b

    :cond_361
    iget-object v0, v9, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    new-instance v1, Landroid/support/v4/app/m;

    invoke-direct {v1, v6, v3, v10, v7}, Landroid/support/v4/app/m;-><init>(Landroid/support/v4/app/k;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v9}, Landroid/support/v4/app/k;->a(Landroid/view/View;Landroid/support/v4/app/k$d;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_37b
    :goto_37b
    iget-object v0, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_382
    iput-object v14, v7, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iput-object v14, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v14, v7, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iput-boolean v13, v7, Landroid/support/v4/app/Fragment;->mInLayout:Z

    :cond_38a
    if-ge v11, v8, :cond_3f7

    iget-boolean v0, v6, Landroid/support/v4/app/k;->t:Z

    if-eqz v0, :cond_3b1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3a1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v14}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_3b1

    :cond_3a1
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_3b1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v7, v14}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3b1
    :goto_3b1
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3f3

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_3be

    goto :goto_3f3

    :cond_3be
    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_3c9

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    invoke-virtual {v6, v7, v13}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_3cb

    :cond_3c9
    iput v13, v7, Landroid/support/v4/app/Fragment;->mState:I

    :goto_3cb
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDetach()V

    invoke-virtual {v6, v7, v13}, Landroid/support/v4/app/k;->c(Landroid/support/v4/app/Fragment;Z)V

    if-nez p5, :cond_3f7

    iget-boolean v0, v7, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_3ec

    iget v0, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_3dc

    goto :goto_3f7

    :cond_3dc
    iget-object v1, v6, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v1, v7, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->a(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->initState()V

    goto :goto_3f7

    :cond_3ec
    iput-object v14, v7, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/i;

    iput-object v14, v7, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    iput-object v14, v7, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/k;

    goto :goto_3f7

    :cond_3f3
    :goto_3f3
    invoke-virtual {v7, v11}, Landroid/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    goto :goto_3f8

    :cond_3f7
    :goto_3f7
    move v8, v11

    :goto_3f8
    iget v0, v7, Landroid/support/v4/app/Fragment;->mState:I

    if-eq v0, v8, :cond_42b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, v7, Landroid/support/v4/app/Fragment;->mState:I

    :cond_42b
    return-void
.end method

.method a(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/c/d/i;

    if-eqz p3, :cond_30

    iget-object v0, p2, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_30
    iget-object p2, p2, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast p2, Landroid/support/v4/app/j$b;

    invoke-virtual {p2}, Landroid/support/v4/app/j$b;->b()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/c/d/i;

    if-eqz p3, :cond_30

    iget-object v0, p2, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_30
    iget-object p2, p2, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast p2, Landroid/support/v4/app/j$b;

    invoke-virtual {p2}, Landroid/support/v4/app/j$b;->a()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/c/d/i;

    if-eqz p4, :cond_30

    iget-object p3, p2, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_18

    :cond_30
    iget-object p2, p2, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast p2, Landroid/support/v4/app/j$b;

    invoke-virtual {p2}, Landroid/support/v4/app/j$b;->m()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Z)V
    .registers 11

    invoke-virtual {p0, p1}, Landroid/support/v4/app/k;->d(Landroid/support/v4/app/Fragment;)V

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_55

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_12
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_3b

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_24

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    :cond_24
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2e

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2e

    iput-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    :cond_2e
    if-eqz p2, :cond_55

    iget v4, p0, Landroid/support/v4/app/k;->m:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_55

    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1

    :cond_3e
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_55
    :goto_55
    return-void
.end method

.method public a(Landroid/support/v4/app/k$g;Z)V
    .registers 4

    if-nez p2, :cond_5

    invoke-direct {p0}, Landroid/support/v4/app/k;->w()V

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Landroid/support/v4/app/k;->t:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    if-nez v0, :cond_f

    goto :goto_24

    :cond_f
    iget-object p2, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    if-nez p2, :cond_1a

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    :cond_1a
    iget-object p2, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/support/v4/app/k;->y()V

    monitor-exit p0

    return-void

    :cond_24
    :goto_24
    if-eqz p2, :cond_28

    monitor-exit p0

    return-void

    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public a(Landroid/view/Menu;)V
    .registers 4

    iget v0, p0, Landroid/support/v4/app/k;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    const-string v0, "    "

    invoke-static {p1, v0}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_4f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v1, :cond_4f

    iget-object v4, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v4, :cond_4c

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_4f
    iget-object p2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_84

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Added Fragments:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_60
    if-ge p4, p2, :cond_84

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_60

    :cond_84
    iget-object p2, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    if-eqz p2, :cond_bb

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_bb

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_97
    if-ge p4, p2, :cond_bb

    iget-object v1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_97

    :cond_bb
    iget-object p2, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz p2, :cond_f6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_f6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_ce
    if-ge p4, p2, :cond_f6

    iget-object v1, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/b;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p3, v3}, Landroid/support/v4/app/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_ce

    :cond_f6
    monitor-enter p0

    :try_start_f7
    iget-object p2, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    if-eqz p2, :cond_12c

    iget-object p2, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_12c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_10c
    if-ge p4, p2, :cond_12c

    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/b;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_10c

    :cond_12c
    iget-object p2, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    if-eqz p2, :cond_14d

    iget-object p2, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_14d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14d
    monitor-exit p0
    :try_end_14e
    .catchall {:try_start_f7 .. :try_end_14e} :catchall_1f7

    iget-object p2, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    if-eqz p2, :cond_180

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_180

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_160
    if-ge v2, p2, :cond_180

    iget-object p4, p0, Landroid/support/v4/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/support/v4/app/k$g;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_160

    :cond_180
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_1b3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1b3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/k;->m:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/k;->s:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/k;->t:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Landroid/support/v4/app/k;->r:Z

    if-eqz p2, :cond_1e5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/k;->r:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1e5
    iget-object p2, p0, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    if-eqz p2, :cond_1f6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNoTransactionsBecause="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/support/v4/app/k;->u:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f6
    return-void

    :catchall_1f7
    move-exception p1

    :try_start_1f8
    monitor-exit p0
    :try_end_1f9
    .catchall {:try_start_1f8 .. :try_end_1f9} :catchall_1f7

    goto :goto_1fb

    :goto_1fa
    throw p1

    :goto_1fb
    goto :goto_1fa
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performMultiWindowModeChanged(Z)V

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 10

    iget v0, p0, Landroid/support/v4/app/k;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_b
    iget-object v5, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_31

    iget-object v5, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2e

    invoke-virtual {v5, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_2e

    if-nez v3, :cond_2a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_31
    iget-object p1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    if-eqz p1, :cond_53

    :goto_35
    iget-object p1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_53

    iget-object p1, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_4d

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_50

    :cond_4d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_53
    iput-object v3, p0, Landroid/support/v4/app/k;->h:Ljava/util/ArrayList;

    return v4
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 6

    iget v0, p0, Landroid/support/v4/app/k;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_21

    invoke-virtual {v3, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_21

    return v2

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_24
    return v1
.end method

.method a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x1

    if-nez p3, :cond_29

    if-gez p4, :cond_29

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_29

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_17

    return v1

    :cond_17
    iget-object p4, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9f

    :cond_29
    const/4 v0, -0x1

    if-nez p3, :cond_31

    if-ltz p4, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v3, -0x1

    goto :goto_79

    :cond_31
    :goto_31
    iget-object v3, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_38
    if-ltz v3, :cond_57

    iget-object v4, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/b;

    if-eqz p3, :cond_4d

    iget-object v5, v4, Landroid/support/v4/app/b;->j:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_57

    :cond_4d
    if-ltz p4, :cond_54

    iget v4, v4, Landroid/support/v4/app/b;->l:I

    if-ne p4, v4, :cond_54

    goto :goto_57

    :cond_54
    add-int/lit8 v3, v3, -0x1

    goto :goto_38

    :cond_57
    :goto_57
    if-gez v3, :cond_5a

    return v1

    :cond_5a
    and-int/2addr p5, v2

    if-eqz p5, :cond_79

    :cond_5d
    :goto_5d
    add-int/2addr v3, v0

    if-ltz v3, :cond_79

    iget-object p5, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/support/v4/app/b;

    if-eqz p3, :cond_72

    iget-object v4, p5, Landroid/support/v4/app/b;->j:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    :cond_72
    if-ltz p4, :cond_79

    iget p5, p5, Landroid/support/v4/app/b;->l:I

    if-ne p4, p5, :cond_79

    goto :goto_5d

    :cond_79
    :goto_79
    iget-object p3, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v3, p3, :cond_83

    return v1

    :cond_83
    iget-object p3, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_8a
    if-le p3, v3, :cond_9f

    iget-object p4, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_8a

    :cond_9f
    :goto_9f
    return v2
.end method

.method public b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_22

    if-eqz p1, :cond_22

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_22

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public b(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/k;->j:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .registers 5

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_22

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_1e

    iput-boolean v0, p0, Landroid/support/v4/app/k;->r:Z

    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    goto :goto_25

    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1

    :cond_25
    :goto_25
    return-void
.end method

.method b(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/c/d/i;

    if-eqz p3, :cond_30

    iget-object v0, p2, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_30
    iget-object p2, p2, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast p2, Landroid/support/v4/app/j$b;

    invoke-virtual {p2}, Landroid/support/v4/app/j$b;->g()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/c/d/i;

    if-eqz p3, :cond_30

    iget-object v0, p2, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_30
    iget-object p2, p2, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast p2, Landroid/support/v4/app/j$b;

    invoke-virtual {p2}, Landroid/support/v4/app/j$b;->c()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method b(Landroid/support/v4/app/Fragment;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/d/i;

    if-eqz p2, :cond_30

    iget-object v1, v0, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_30
    iget-object v0, v0, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j$b;

    invoke-virtual {v0}, Landroid/support/v4/app/j$b;->d()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->performPictureInPictureModeChanged(Z)V

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .registers 6

    iget v0, p0, Landroid/support/v4/app/k;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_24

    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_21

    invoke-virtual {v3, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v0, 0x1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_24
    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .registers 6

    iget v0, p0, Landroid/support/v4/app/k;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    iget-object v3, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_21

    invoke-virtual {v3, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_21

    return v2

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_24
    return v1
.end method

.method public c(Landroid/support/v4/app/Fragment;)V
    .registers 4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    :cond_c
    return-void
.end method

.method c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/c/d/i;

    if-eqz p3, :cond_30

    iget-object v0, p2, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_30
    iget-object p2, p2, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast p2, Landroid/support/v4/app/j$b;

    invoke-virtual {p2}, Landroid/support/v4/app/j$b;->h()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method c(Landroid/support/v4/app/Fragment;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->c(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/d/i;

    if-eqz p2, :cond_30

    iget-object v1, v0, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_30
    iget-object v0, v0, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j$b;

    invoke-virtual {v0}, Landroid/support/v4/app/j$b;->e()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public c()Z
    .registers 9

    invoke-direct {p0}, Landroid/support/v4/app/k;->w()V

    invoke-virtual {p0}, Landroid/support/v4/app/k;->o()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->c(Z)V

    iget-object v1, p0, Landroid/support/v4/app/k;->q:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->peekChildFragmentManager()Landroid/support/v4/app/j;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/support/v4/app/j;->c()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_42

    :cond_1b
    iget-object v3, p0, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/k;->x:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/k;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3b

    iput-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    :try_start_2b
    iget-object v0, p0, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/k;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroid/support/v4/app/k;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_36

    invoke-direct {p0}, Landroid/support/v4/app/k;->x()V

    goto :goto_3b

    :catchall_36
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/k;->x()V

    throw v0

    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Landroid/support/v4/app/k;->n()V

    invoke-direct {p0}, Landroid/support/v4/app/k;->v()V

    move v0, v1

    :goto_42
    return v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->s:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->c(I)V

    return-void
.end method

.method d(Landroid/support/v4/app/Fragment;)V
    .registers 4

    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Landroid/support/v4/app/k;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/app/k;->d:I

    iget-object v1, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_1b

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    :cond_1b
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/k;->d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/c/d/i;

    if-eqz p3, :cond_30

    iget-object v0, p2, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_30
    iget-object p2, p2, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast p2, Landroid/support/v4/app/j$b;

    invoke-virtual {p2}, Landroid/support/v4/app/j$b;->j()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method d(Landroid/support/v4/app/Fragment;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->d(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/d/i;

    if-eqz p2, :cond_30

    iget-object v1, v0, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_30
    iget-object v0, v0, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j$b;

    invoke-virtual {v0}, Landroid/support/v4/app/j$b;->f()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->s:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->c(I)V

    return-void
.end method

.method e(Landroid/support/v4/app/Fragment;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p0, Landroid/support/v4/app/k;->m:I

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1a

    :cond_16
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1a
    :goto_1a
    move v6, v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v7

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_ab

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v1, :cond_50

    if-nez v0, :cond_35

    goto :goto_50

    :cond_35
    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_50

    iget-object v5, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v6, v1, :cond_3b

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_3b

    move-object v4, v5

    :cond_50
    :goto_50
    if-eqz v4, :cond_6a

    iget-object v0, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_6a

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_6a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_ab

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_ab

    iget v0, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_7e

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_7e
    iput v1, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v1

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/k$d;

    move-result-object v0

    if-eqz v0, :cond_ab

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/k;->a(Landroid/view/View;Landroid/support/v4/app/k$d;)V

    iget-object v1, v0, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_9f

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_ab

    :cond_9f
    iget-object v1, v0, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_ab
    :goto_ab
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_141

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_12c

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I

    move-result v0

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    xor-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    invoke-virtual {p0, p1, v0, v1, v4}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/k$d;

    move-result-object v0

    if-eqz v0, :cond_fd

    iget-object v1, v0, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    if-eqz v1, :cond_fd

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_ed

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    goto :goto_f2

    :cond_db
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v5, v0, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    new-instance v6, Landroid/support/v4/app/n;

    invoke-direct {v6, p0, v1, v4, p1}, Landroid/support/v4/app/n;-><init>(Landroid/support/v4/app/k;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_f2

    :cond_ed
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_f2
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/k;->a(Landroid/view/View;Landroid/support/v4/app/k$d;)V

    iget-object v0, v0, Landroid/support/v4/app/k$d;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_12c

    :cond_fd
    if-eqz v0, :cond_110

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/k;->a(Landroid/view/View;Landroid/support/v4/app/k$d;)V

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Landroid/support/v4/app/k$d;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_110
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_11d

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_11d

    const/16 v0, 0x8

    goto :goto_11e

    :cond_11d
    const/4 v0, 0x0

    :goto_11e
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    :cond_12c
    :goto_12c
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_13a

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_13a

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_13a

    iput-boolean v2, p0, Landroid/support/v4/app/k;->r:Z

    :cond_13a
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    :cond_141
    return-void
.end method

.method e(Landroid/support/v4/app/Fragment;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->e(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/d/i;

    if-eqz p2, :cond_30

    iget-object v1, v0, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_30
    iget-object v0, v0, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j$b;

    invoke-virtual {v0}, Landroid/support/v4/app/j$b;->i()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->t:Z

    invoke-virtual {p0}, Landroid/support/v4/app/k;->o()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->c(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iput-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    iput-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public f(Landroid/support/v4/app/Fragment;)V
    .registers 9

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/k;->v:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    iget v3, p0, Landroid/support/v4/app/k;->m:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_19
    return-void
.end method

.method f(Landroid/support/v4/app/Fragment;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->f(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/d/i;

    if-eqz p2, :cond_30

    iget-object v1, v0, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_30
    iget-object v0, v0, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j$b;

    invoke-virtual {v0}, Landroid/support/v4/app/j$b;->k()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->c(I)V

    return-void
.end method

.method public g(Landroid/support/v4/app/Fragment;)V
    .registers 5

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_c

    if-eqz v0, :cond_24

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_f
    iget-object v2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_25

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_1f

    iput-boolean v1, p0, Landroid/support/v4/app/k;->r:Z

    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    :cond_24
    return-void

    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method g(Landroid/support/v4/app/Fragment;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->g(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/d/i;

    if-eqz p2, :cond_30

    iget-object v1, v0, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_30
    iget-object v0, v0, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j$b;

    invoke-virtual {v0}, Landroid/support/v4/app/j$b;->l()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public h()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method h(Landroid/support/v4/app/Fragment;)V
    .registers 4

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/k;->A:Landroid/util/SparseArray;

    if-nez v0, :cond_11

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/k;->A:Landroid/util/SparseArray;

    goto :goto_14

    :cond_11
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :goto_14
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/k;->A:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->A:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Landroid/support/v4/app/k;->A:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/k;->A:Landroid/util/SparseArray;

    :cond_2a
    return-void
.end method

.method h(Landroid/support/v4/app/Fragment;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/k;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/support/v4/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/k;->h(Landroid/support/v4/app/Fragment;Z)V

    :cond_12
    iget-object p1, p0, Landroid/support/v4/app/k;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/d/i;

    if-eqz p2, :cond_30

    iget-object v1, v0, Lb/b/c/d/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_30
    iget-object v0, v0, Lb/b/c/d/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/j$b;

    invoke-virtual {v0}, Landroid/support/v4/app/j$b;->n()V

    goto :goto_18

    :cond_38
    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->c(I)V

    return-void
.end method

.method public i(Landroid/support/v4/app/Fragment;)V
    .registers 5

    if-eqz p1, :cond_36

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_17

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/i;

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    if-ne v0, p0, :cond_17

    goto :goto_36

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_36
    iput-object p1, p0, Landroid/support/v4/app/k;->q:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->c(I)V

    return-void
.end method

.method public j(Landroid/support/v4/app/Fragment;)V
    .registers 3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    :cond_d
    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->s:Z

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->c(I)V

    return-void
.end method

.method public l()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->s:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->c(I)V

    return-void
.end method

.method public m()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->s:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->c(I)V

    return-void
.end method

.method n()V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/app/k;->v:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    iget-object v3, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_22

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/c0;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Landroid/support/v4/app/c0;->f()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_25
    if-nez v2, :cond_2c

    iput-boolean v0, p0, Landroid/support/v4/app/k;->v:Z

    invoke-virtual {p0}, Landroid/support/v4/app/k;->u()V

    :cond_2c
    return-void
.end method

.method public o()Z
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->c(Z)V

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/k;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/app/k;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_22

    iput-boolean v0, p0, Landroid/support/v4/app/k;->c:Z

    :try_start_11
    iget-object v1, p0, Landroid/support/v4/app/k;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/k;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/k;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    invoke-direct {p0}, Landroid/support/v4/app/k;->x()V

    const/4 v1, 0x1

    goto :goto_5

    :catchall_1d
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/k;->x()V

    throw v0

    :cond_22
    invoke-virtual {p0}, Landroid/support/v4/app/k;->n()V

    invoke-direct {p0}, Landroid/support/v4/app/k;->v()V

    return v1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 17

    move-object v6, p0

    move-object v0, p3

    move-object/from16 v1, p4

    const-string v2, "fragment"

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    return-object v3

    :cond_f
    const-string v2, "class"

    invoke-interface {v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/support/v4/app/k$f;->a:[I

    invoke-virtual {p3, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v2, :cond_22

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_22
    move-object v7, v2

    const/4 v2, -0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iget-object v4, v4, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    return-object v3

    :cond_3c
    if-eqz p1, :cond_42

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    :cond_42
    if-ne v5, v2, :cond_67

    if-ne v9, v2, :cond_67

    if-eqz v10, :cond_49

    goto :goto_67

    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    :goto_67
    if-eq v9, v2, :cond_6e

    invoke-virtual {p0, v9}, Landroid/support/v4/app/k;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    goto :goto_6f

    :cond_6e
    move-object v4, v3

    :goto_6f
    if-nez v4, :cond_77

    if-eqz v10, :cond_77

    invoke-virtual {p0, v10}, Landroid/support/v4/app/k;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    :cond_77
    if-nez v4, :cond_7f

    if-eq v5, v2, :cond_7f

    invoke-virtual {p0, v5}, Landroid/support/v4/app/k;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    :cond_7f
    if-nez v4, :cond_a8

    iget-object v2, v6, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/g;

    invoke-virtual {v2, p3, v7, v3}, Landroid/support/v4/app/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-boolean v8, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v9, :cond_8d

    move v2, v9

    goto :goto_8e

    :cond_8d
    move v2, v5

    :goto_8e
    iput v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    iput-object v10, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    iput-boolean v8, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    iput-object v6, v0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/k;

    iget-object v2, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iput-object v2, v0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/i;

    iget-object v2, v2, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v8}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v11, v0

    goto :goto_be

    :cond_a8
    iget-boolean v0, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_101

    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z

    iget-object v0, v6, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    iput-object v0, v4, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/i;

    iget-boolean v2, v4, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_bd

    iget-object v0, v0, Landroid/support/v4/app/i;->b:Landroid/content/Context;

    iget-object v2, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v1, v2}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_bd
    move-object v11, v4

    :goto_be
    iget v0, v6, Landroid/support/v4/app/k;->m:I

    if-ge v0, v8, :cond_d0

    iget-boolean v0, v11, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_d0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_da

    :cond_d0
    iget v2, v6, Landroid/support/v4/app/k;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :goto_da
    iget-object v0, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_f3

    if-eqz v9, :cond_e3

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    :cond_e3
    iget-object v0, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f0

    iget-object v0, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_f0
    iget-object v0, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0

    :cond_f3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " did not create a view."

    invoke-static {v1, v7, v2}, Ld/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Duplicate id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or parent id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with another fragment for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method p()Landroid/view/LayoutInflater$Factory2;
    .registers 1

    return-object p0
.end method

.method public q()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/k;->C:Landroid/support/v4/app/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/k;->s:Z

    iget-object v1, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_c
    if-ge v0, v1, :cond_1e

    iget-object v2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->noteStateNotSaved()V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method

.method r()Landroid/support/v4/app/o;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/k;->C:Landroid/support/v4/app/o;

    invoke-static {v0}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/o;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->C:Landroid/support/v4/app/o;

    return-object v0
.end method

.method s()Landroid/os/Parcelable;
    .registers 12

    iget-object v0, p0, Landroid/support/v4/app/k;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    :goto_5
    iget-object v0, p0, Landroid/support/v4/app/k;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/app/k;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k$i;

    invoke-virtual {v0}, Landroid/support/v4/app/k$i;->b()V

    goto :goto_5

    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_20

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_25

    :cond_20
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_25
    const/4 v3, 0x0

    if-ge v0, v2, :cond_68

    iget-object v4, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_65

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_58

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v7

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    :cond_4d
    invoke-virtual {v6, v3}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_65

    :cond_58
    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_65

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_65
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_68
    invoke-virtual {p0}, Landroid/support/v4/app/k;->o()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->s:Z

    iput-object v3, p0, Landroid/support/v4/app/k;->C:Landroid/support/v4/app/o;

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_205

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_7c

    goto/16 :goto_205

    :cond_7c
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v2, v0, [Landroid/support/v4/app/FragmentState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_86
    const-string v6, " has cleared index: "

    const-string v7, "Failure saving state: active "

    if-ge v4, v0, :cond_184

    iget-object v8, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_180

    iget v5, v8, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v5, :cond_160

    new-instance v5, Landroid/support/v4/app/FragmentState;

    invoke-direct {v5, v8}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    aput-object v5, v2, v4

    iget v6, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v6, :cond_15a

    iget-object v6, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    if-nez v6, :cond_15a

    iget-object v6, p0, Landroid/support/v4/app/k;->z:Landroid/os/Bundle;

    if-nez v6, :cond_b4

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Landroid/support/v4/app/k;->z:Landroid/os/Bundle;

    :cond_b4
    iget-object v6, p0, Landroid/support/v4/app/k;->z:Landroid/os/Bundle;

    invoke-virtual {v8, v6}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v6, p0, Landroid/support/v4/app/k;->z:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v6, v1}, Landroid/support/v4/app/k;->d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v6, p0, Landroid/support/v4/app/k;->z:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_cb

    iget-object v6, p0, Landroid/support/v4/app/k;->z:Landroid/os/Bundle;

    iput-object v3, p0, Landroid/support/v4/app/k;->z:Landroid/os/Bundle;

    goto :goto_cc

    :cond_cb
    move-object v6, v3

    :goto_cc
    iget-object v7, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v7, :cond_d3

    invoke-virtual {p0, v8}, Landroid/support/v4/app/k;->h(Landroid/support/v4/app/Fragment;)V

    :cond_d3
    iget-object v7, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v7, :cond_e5

    if-nez v6, :cond_de

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_de
    iget-object v7, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string v9, "android:view_state"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_e5
    iget-boolean v7, v8, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v7, :cond_f7

    if-nez v6, :cond_f0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_f0
    iget-boolean v7, v8, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    const-string v9, "android:user_visible_hint"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_f7
    iput-object v6, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    iget-object v6, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_15e

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v6, :cond_136

    iget-object v6, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    if-nez v6, :cond_10c

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    :cond_10c
    iget-object v6, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    iget-object v7, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v9, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v9, :cond_125

    const-string v7, "android:target_state"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v6, v8, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v6, :cond_15e

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    const-string v7, "android:target_req_state"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15e

    :cond_125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " is not currently in the FragmentManager"

    invoke-static {v1, v7, v2}, Ld/a/a/a/a;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->a(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_136
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure saving state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has target not in fragment manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->a(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_15a
    iget-object v6, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v6, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/os/Bundle;

    :cond_15e
    :goto_15e
    const/4 v5, 0x1

    goto :goto_180

    :cond_160
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->a(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_180
    :goto_180
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_86

    :cond_184
    if-nez v5, :cond_187

    return-object v3

    :cond_187
    iget-object v0, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c9

    new-array v4, v0, [I

    const/4 v5, 0x0

    :goto_192
    if-ge v5, v0, :cond_1ca

    iget-object v8, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v8, v4, v5

    aget v8, v4, v5

    if-ltz v8, :cond_1a7

    add-int/lit8 v5, v5, 0x1

    goto :goto_192

    :cond_1a7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v4, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->a(Ljava/lang/RuntimeException;)V

    throw v3

    :cond_1c9
    move-object v4, v3

    :cond_1ca
    iget-object v0, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1ea

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1ea

    new-array v3, v0, [Landroid/support/v4/app/BackStackState;

    :goto_1d6
    if-ge v1, v0, :cond_1ea

    new-instance v5, Landroid/support/v4/app/BackStackState;

    iget-object v6, p0, Landroid/support/v4/app/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/b;

    invoke-direct {v5, v6}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/b;)V

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d6

    :cond_1ea
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerState;->b:[Landroid/support/v4/app/FragmentState;

    iput-object v4, v0, Landroid/support/v4/app/FragmentManagerState;->c:[I

    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->d:[Landroid/support/v4/app/BackStackState;

    iget-object v1, p0, Landroid/support/v4/app/k;->q:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1fd

    iget v1, v1, Landroid/support/v4/app/Fragment;->mIndex:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->e:I

    :cond_1fd
    iget v1, p0, Landroid/support/v4/app/k;->d:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->f:I

    invoke-virtual {p0}, Landroid/support/v4/app/k;->t()V

    return-object v0

    :cond_205
    :goto_205
    return-object v3
.end method

.method t()V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    const/4 v0, 0x0

    move-object v3, v1

    move-object v4, v3

    const/4 v2, 0x0

    :goto_9
    iget-object v5, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_63

    iget-object v5, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_5e

    iget-boolean v6, v5, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v6, :cond_33

    if-nez v3, :cond_26

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_30

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    goto :goto_31

    :cond_30
    const/4 v6, -0x1

    :goto_31
    iput v6, v5, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    :cond_33
    iget-object v6, v5, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/k;

    if-eqz v6, :cond_3f

    invoke-virtual {v6}, Landroid/support/v4/app/k;->t()V

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/k;

    iget-object v5, v5, Landroid/support/v4/app/k;->C:Landroid/support/v4/app/o;

    goto :goto_41

    :cond_3f
    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/o;

    :goto_41
    if-nez v4, :cond_59

    if-eqz v5, :cond_59

    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_51
    if-ge v6, v2, :cond_59

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    :cond_59
    if-eqz v4, :cond_5e

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_61
    move-object v3, v1

    move-object v4, v3

    :cond_63
    if-nez v3, :cond_6a

    if-nez v4, :cond_6a

    iput-object v1, p0, Landroid/support/v4/app/k;->C:Landroid/support/v4/app/o;

    goto :goto_71

    :cond_6a
    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0, v3, v4}, Landroid/support/v4/app/o;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v4/app/k;->C:Landroid/support/v4/app/o;

    :goto_71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_24

    invoke-static {v1, v0}, La/a/g;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_29

    :cond_24
    iget-object v1, p0, Landroid/support/v4/app/k;->n:Landroid/support/v4/app/i;

    invoke-static {v1, v0}, La/a/g;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_29
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Landroid/support/v4/app/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1b

    invoke-virtual {p0, v1}, Landroid/support/v4/app/k;->f(Landroid/support/v4/app/Fragment;)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1e
    return-void
.end method
