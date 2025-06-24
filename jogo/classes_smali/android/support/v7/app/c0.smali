.class public Landroid/support/v7/app/c0;
.super Landroid/support/v7/app/a;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/c0$d;
    }
.end annotation


# static fields
.field private static final B:Landroid/view/animation/Interpolator;

.field private static final C:Landroid/view/animation/Interpolator;


# instance fields
.field final A:Landroid/support/v4/view/t;

.field a:Landroid/content/Context;

.field private b:Landroid/content/Context;

.field c:Landroid/support/v7/widget/ActionBarOverlayLayout;

.field d:Landroid/support/v7/widget/ActionBarContainer;

.field e:Landroid/support/v7/widget/d0;

.field f:Landroid/support/v7/widget/ActionBarContextView;

.field g:Landroid/view/View;

.field h:Landroid/support/v7/widget/r0;

.field private i:Z

.field j:Landroid/support/v7/app/c0$d;

.field k:Lb/b/d/d/b;

.field l:Lb/b/d/d/b$a;

.field private m:Z

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:I

.field q:Z

.field r:Z

.field s:Z

.field private t:Z

.field private u:Z

.field v:Lb/b/d/d/h;

.field private w:Z

.field x:Z

.field final y:Landroid/support/v4/view/r;

.field final z:Landroid/support/v4/view/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/app/c0;->B:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/app/c0;->C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/c0;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/c0;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/c0;->q:Z

    iput-boolean v0, p0, Landroid/support/v7/app/c0;->u:Z

    new-instance v0, Landroid/support/v7/app/c0$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c0$a;-><init>(Landroid/support/v7/app/c0;)V

    iput-object v0, p0, Landroid/support/v7/app/c0;->y:Landroid/support/v4/view/r;

    new-instance v0, Landroid/support/v7/app/c0$b;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c0$b;-><init>(Landroid/support/v7/app/c0;)V

    iput-object v0, p0, Landroid/support/v7/app/c0;->z:Landroid/support/v4/view/r;

    new-instance v0, Landroid/support/v7/app/c0$c;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c0$c;-><init>(Landroid/support/v7/app/c0;)V

    iput-object v0, p0, Landroid/support/v7/app/c0;->A:Landroid/support/v4/view/t;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/app/c0;->a(Landroid/view/View;)V

    if-nez p2, :cond_42

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/c0;->g:Landroid/view/View;

    :cond_42
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/c0;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/c0;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/c0;->q:Z

    iput-boolean v0, p0, Landroid/support/v7/app/c0;->u:Z

    new-instance v0, Landroid/support/v7/app/c0$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c0$a;-><init>(Landroid/support/v7/app/c0;)V

    iput-object v0, p0, Landroid/support/v7/app/c0;->y:Landroid/support/v4/view/r;

    new-instance v0, Landroid/support/v7/app/c0$b;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c0$b;-><init>(Landroid/support/v7/app/c0;)V

    iput-object v0, p0, Landroid/support/v7/app/c0;->z:Landroid/support/v4/view/r;

    new-instance v0, Landroid/support/v7/app/c0$c;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c0$c;-><init>(Landroid/support/v7/app/c0;)V

    iput-object v0, p0, Landroid/support/v7/app/c0;->A:Landroid/support/v4/view/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/app/c0;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 7

    sget v0, Lb/b/d/a/f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroid/support/v7/app/c0;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Landroid/support/v7/app/c0;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/widget/ActionBarOverlayLayout$d;)V

    :cond_11
    sget v0, Lb/b/d/a/f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/d0;

    if-eqz v1, :cond_1e

    check-cast v0, Landroid/support/v7/widget/d0;

    goto :goto_28

    :cond_1e
    instance-of v1, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_e6

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/d0;

    move-result-object v0

    :goto_28
    iput-object v0, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    sget v0, Lb/b/d/a/f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    sget v0, Lb/b/d/a/f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ActionBarContainer;

    iput-object p1, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    iget-object p1, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    if-eqz p1, :cond_c4

    iget-object v0, p0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_c4

    iget-object v0, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    if-eqz v0, :cond_c4

    check-cast p1, Landroid/support/v7/widget/a1;

    invoke-virtual {p1}, Landroid/support/v7/widget/a1;->b()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/c0;->a:Landroid/content/Context;

    iget-object p1, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast p1, Landroid/support/v7/widget/a1;

    invoke-virtual {p1}, Landroid/support/v7/widget/a1;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_62

    const/4 p1, 0x1

    goto :goto_63

    :cond_62
    const/4 p1, 0x0

    :goto_63
    if-eqz p1, :cond_67

    iput-boolean v0, p0, Landroid/support/v7/app/c0;->i:Z

    :cond_67
    iget-object v2, p0, Landroid/support/v7/app/c0;->a:Landroid/content/Context;

    invoke-static {v2}, Lb/b/d/d/a;->a(Landroid/content/Context;)Lb/b/d/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/d/d/a;->a()Z

    move-result v3

    if-nez v3, :cond_78

    if-eqz p1, :cond_76

    goto :goto_78

    :cond_76
    const/4 p1, 0x0

    goto :goto_79

    :cond_78
    :goto_78
    const/4 p1, 0x1

    :goto_79
    iget-object v3, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast v3, Landroid/support/v7/widget/a1;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/a1;->b(Z)V

    invoke-virtual {v2}, Lb/b/d/d/a;->f()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/app/c0;->f(Z)V

    iget-object p1, p0, Landroid/support/v7/app/c0;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lb/b/d/a/j;->ActionBar:[I

    sget v4, Lb/b/d/a/a;->actionBarStyle:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v2, Lb/b/d/a/j;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_b2

    iget-object v2, p0, Landroid/support/v7/app/c0;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->i()Z

    move-result v2

    if-eqz v2, :cond_aa

    iput-boolean v0, p0, Landroid/support/v7/app/c0;->x:Z

    iget-object v2, p0, Landroid/support/v7/app/c0;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_b2

    :cond_aa
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b2
    :goto_b2
    sget v0, Lb/b/d/a/j;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_c0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1, v0}, Landroid/support/v4/view/n;->a(Landroid/view/View;F)V

    :cond_c0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_c4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v7/app/c0;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_104

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_106

    :cond_104
    const-string v0, "null"

    :goto_106
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Z)V
    .registers 6

    iput-boolean p1, p0, Landroid/support/v7/app/c0;->o:Z

    iget-boolean p1, p0, Landroid/support/v7/app/c0;->o:Z

    const/4 v0, 0x0

    if-nez p1, :cond_16

    iget-object p1, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast p1, Landroid/support/v7/widget/a1;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/a1;->a(Landroid/support/v7/widget/r0;)V

    iget-object p1, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, p0, Landroid/support/v7/app/c0;->h:Landroid/support/v7/widget/r0;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/r0;)V

    goto :goto_24

    :cond_16
    iget-object p1, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/r0;)V

    iget-object p1, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    iget-object v0, p0, Landroid/support/v7/app/c0;->h:Landroid/support/v7/widget/r0;

    check-cast p1, Landroid/support/v7/widget/a1;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/a1;->a(Landroid/support/v7/widget/r0;)V

    :goto_24
    iget-object p1, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast p1, Landroid/support/v7/widget/a1;

    invoke-virtual {p1}, Landroid/support/v7/widget/a1;->d()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    iget-object v0, p0, Landroid/support/v7/app/c0;->h:Landroid/support/v7/widget/r0;

    if-eqz v0, :cond_4a

    if-eqz p1, :cond_45

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/c0;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_4a

    invoke-static {v0}, Landroid/support/v4/view/n;->m(Landroid/view/View;)V

    goto :goto_4a

    :cond_45
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_4a
    :goto_4a
    iget-object v0, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    iget-boolean v3, p0, Landroid/support/v7/app/c0;->o:Z

    if-nez v3, :cond_54

    if-eqz p1, :cond_54

    const/4 v3, 0x1

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    :goto_55
    check-cast v0, Landroid/support/v7/widget/a1;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/a1;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/app/c0;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Landroid/support/v7/app/c0;->o:Z

    if-nez v3, :cond_63

    if-eqz p1, :cond_63

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    :goto_64
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private g(Z)V
    .registers 10

    iget-boolean v0, p0, Landroid/support/v7/app/c0;->r:Z

    iget-boolean v1, p0, Landroid/support/v7/app/c0;->s:Z

    iget-boolean v2, p0, Landroid/support/v7/app/c0;->t:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_c

    :cond_a
    const/4 v0, 0x1

    goto :goto_11

    :cond_c
    if-nez v0, :cond_10

    if-eqz v1, :cond_a

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-wide/16 v1, 0xfa

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_bb

    iget-boolean v0, p0, Landroid/support/v7/app/c0;->u:Z

    if-nez v0, :cond_134

    iput-boolean v4, p0, Landroid/support/v7/app/c0;->u:Z

    iget-object v0, p0, Landroid/support/v7/app/c0;->v:Lb/b/d/d/h;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lb/b/d/d/h;->a()V

    :cond_26
    iget-object v0, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroid/support/v7/app/c0;->p:I

    const/4 v3, 0x0

    if-nez v0, :cond_98

    iget-boolean v0, p0, Landroid/support/v7/app/c0;->w:Z

    if-nez v0, :cond_36

    if-eqz p1, :cond_98

    :cond_36
    iget-object v0, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_53

    new-array p1, v5, [I

    fill-array-data p1, :array_136

    iget-object v5, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget p1, p1, v4

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_53
    iget-object p1, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    new-instance p1, Lb/b/d/d/h;

    invoke-direct {p1}, Lb/b/d/d/h;-><init>()V

    iget-object v4, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/n;->a(Landroid/view/View;)Landroid/support/v4/view/q;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/view/q;->b(F)Landroid/support/v4/view/q;

    iget-object v5, p0, Landroid/support/v7/app/c0;->A:Landroid/support/v4/view/t;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/q;->a(Landroid/support/v4/view/t;)Landroid/support/v4/view/q;

    invoke-virtual {p1, v4}, Lb/b/d/d/h;->a(Landroid/support/v4/view/q;)Lb/b/d/d/h;

    iget-boolean v4, p0, Landroid/support/v7/app/c0;->q:Z

    if-eqz v4, :cond_85

    iget-object v4, p0, Landroid/support/v7/app/c0;->g:Landroid/view/View;

    if-eqz v4, :cond_85

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroid/support/v7/app/c0;->g:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/n;->a(Landroid/view/View;)Landroid/support/v4/view/q;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/q;->b(F)Landroid/support/v4/view/q;

    invoke-virtual {p1, v0}, Lb/b/d/d/h;->a(Landroid/support/v4/view/q;)Lb/b/d/d/h;

    :cond_85
    sget-object v0, Landroid/support/v7/app/c0;->C:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lb/b/d/d/h;->a(Landroid/view/animation/Interpolator;)Lb/b/d/d/h;

    invoke-virtual {p1, v1, v2}, Lb/b/d/d/h;->a(J)Lb/b/d/d/h;

    iget-object v0, p0, Landroid/support/v7/app/c0;->z:Landroid/support/v4/view/r;

    invoke-virtual {p1, v0}, Lb/b/d/d/h;->a(Landroid/support/v4/view/r;)Lb/b/d/d/h;

    iput-object p1, p0, Landroid/support/v7/app/c0;->v:Lb/b/d/d/h;

    invoke-virtual {p1}, Lb/b/d/d/h;->c()V

    goto :goto_b2

    :cond_98
    iget-object p1, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-boolean p1, p0, Landroid/support/v7/app/c0;->q:Z

    if-eqz p1, :cond_ad

    iget-object p1, p0, Landroid/support/v7/app/c0;->g:Landroid/view/View;

    if-eqz p1, :cond_ad

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_ad
    iget-object p1, p0, Landroid/support/v7/app/c0;->z:Landroid/support/v4/view/r;

    invoke-interface {p1, v7}, Landroid/support/v4/view/r;->b(Landroid/view/View;)V

    :goto_b2
    iget-object p1, p0, Landroid/support/v7/app/c0;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_134

    invoke-static {p1}, Landroid/support/v4/view/n;->m(Landroid/view/View;)V

    goto/16 :goto_134

    :cond_bb
    iget-boolean v0, p0, Landroid/support/v7/app/c0;->u:Z

    if-eqz v0, :cond_134

    iput-boolean v3, p0, Landroid/support/v7/app/c0;->u:Z

    iget-object v0, p0, Landroid/support/v7/app/c0;->v:Lb/b/d/d/h;

    if-eqz v0, :cond_c8

    invoke-virtual {v0}, Lb/b/d/d/h;->a()V

    :cond_c8
    iget v0, p0, Landroid/support/v7/app/c0;->p:I

    if-nez v0, :cond_12f

    iget-boolean v0, p0, Landroid/support/v7/app/c0;->w:Z

    if-nez v0, :cond_d2

    if-eqz p1, :cond_12f

    :cond_d2
    iget-object v0, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lb/b/d/d/h;

    invoke-direct {v0}, Lb/b/d/d/h;-><init>()V

    iget-object v3, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    if-eqz p1, :cond_f9

    new-array p1, v5, [I

    fill-array-data p1, :array_13e

    iget-object v5, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget p1, p1, v4

    int-to-float p1, p1

    sub-float/2addr v3, p1

    :cond_f9
    iget-object p1, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {p1}, Landroid/support/v4/view/n;->a(Landroid/view/View;)Landroid/support/v4/view/q;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v4/view/q;->b(F)Landroid/support/v4/view/q;

    iget-object v4, p0, Landroid/support/v7/app/c0;->A:Landroid/support/v4/view/t;

    invoke-virtual {p1, v4}, Landroid/support/v4/view/q;->a(Landroid/support/v4/view/t;)Landroid/support/v4/view/q;

    invoke-virtual {v0, p1}, Lb/b/d/d/h;->a(Landroid/support/v4/view/q;)Lb/b/d/d/h;

    iget-boolean p1, p0, Landroid/support/v7/app/c0;->q:Z

    if-eqz p1, :cond_11c

    iget-object p1, p0, Landroid/support/v7/app/c0;->g:Landroid/view/View;

    if-eqz p1, :cond_11c

    invoke-static {p1}, Landroid/support/v4/view/n;->a(Landroid/view/View;)Landroid/support/v4/view/q;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v4/view/q;->b(F)Landroid/support/v4/view/q;

    invoke-virtual {v0, p1}, Lb/b/d/d/h;->a(Landroid/support/v4/view/q;)Lb/b/d/d/h;

    :cond_11c
    sget-object p1, Landroid/support/v7/app/c0;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Lb/b/d/d/h;->a(Landroid/view/animation/Interpolator;)Lb/b/d/d/h;

    invoke-virtual {v0, v1, v2}, Lb/b/d/d/h;->a(J)Lb/b/d/d/h;

    iget-object p1, p0, Landroid/support/v7/app/c0;->y:Landroid/support/v4/view/r;

    invoke-virtual {v0, p1}, Lb/b/d/d/h;->a(Landroid/support/v4/view/r;)Lb/b/d/d/h;

    iput-object v0, p0, Landroid/support/v7/app/c0;->v:Lb/b/d/d/h;

    invoke-virtual {v0}, Lb/b/d/d/h;->c()V

    goto :goto_134

    :cond_12f
    iget-object p1, p0, Landroid/support/v7/app/c0;->y:Landroid/support/v4/view/r;

    invoke-interface {p1, v7}, Landroid/support/v4/view/r;->b(Landroid/view/View;)V

    :cond_134
    :goto_134
    return-void

    nop

    :array_136
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_13e
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public a(Lb/b/d/d/b$a;)Lb/b/d/d/b;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/c0;->j:Landroid/support/v7/app/c0$d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v7/app/c0$d;->a()V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/c0;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->c()V

    new-instance v0, Landroid/support/v7/app/c0$d;

    iget-object v1, p0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/app/c0$d;-><init>(Landroid/support/v7/app/c0;Landroid/content/Context;Lb/b/d/d/b$a;)V

    invoke-virtual {v0}, Landroid/support/v7/app/c0$d;->k()Z

    move-result p1

    if-eqz p1, :cond_39

    iput-object v0, p0, Landroid/support/v7/app/c0;->j:Landroid/support/v7/app/c0$d;

    invoke-virtual {v0}, Landroid/support/v7/app/c0$d;->i()V

    iget-object p1, p0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->a(Lb/b/d/d/b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/c0;->d(Z)V

    iget-object p1, p0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/app/c0;->p:I

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    iget-object p1, p0, Landroid/support/v7/app/c0;->a:Landroid/content/Context;

    invoke-static {p1}, Lb/b/d/d/a;->a(Landroid/content/Context;)Lb/b/d/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/d/d/a;->f()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/app/c0;->f(Z)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast v0, Landroid/support/v7/widget/a1;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/a1;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v7/app/c0;->m:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroid/support/v7/app/c0;->m:Z

    iget-object v0, p0, Landroid/support/v7/app/c0;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    iget-object v2, p0, Landroid/support/v7/app/c0;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/a$b;

    invoke-interface {v2, p1}, Landroid/support/v7/app/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    if-eqz v0, :cond_15

    check-cast v0, Landroid/support/v7/widget/a1;

    invoke-virtual {v0}, Landroid/support/v7/widget/a1;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast v0, Landroid/support/v7/widget/a1;

    invoke-virtual {v0}, Landroid/support/v7/widget/a1;->a()V

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 7

    iget-object v0, p0, Landroid/support/v7/app/c0;->j:Landroid/support/v7/app/c0$d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/app/c0$d;->c()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_29

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_14

    :cond_13
    const/4 v2, -0x1

    :goto_14
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_29
    return v1
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast v0, Landroid/support/v7/widget/a1;

    invoke-virtual {v0}, Landroid/support/v7/widget/a1;->c()I

    move-result v0

    return v0
.end method

.method public b(Z)V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v7/app/c0;->i:Z

    if-nez v0, :cond_20

    const/4 v0, 0x4

    if-eqz p1, :cond_9

    const/4 p1, 0x4

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iget-object v1, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast v1, Landroid/support/v7/widget/a1;

    invoke-virtual {v1}, Landroid/support/v7/widget/a1;->c()I

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/app/c0;->i:Z

    iget-object v2, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    and-int/2addr p1, v0

    and-int/lit8 v0, v1, -0x5

    or-int/2addr p1, v0

    check-cast v2, Landroid/support/v7/widget/a1;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/a1;->a(I)V

    :cond_20
    return-void
.end method

.method public c()Landroid/content/Context;
    .registers 5

    iget-object v0, p0, Landroid/support/v7/app/c0;->b:Landroid/content/Context;

    if-nez v0, :cond_27

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/support/v7/app/c0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lb/b/d/a/a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_23

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/app/c0;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/app/c0;->b:Landroid/content/Context;

    goto :goto_27

    :cond_23
    iget-object v0, p0, Landroid/support/v7/app/c0;->a:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/app/c0;->b:Landroid/content/Context;

    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/support/v7/app/c0;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/app/c0;->w:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Landroid/support/v7/app/c0;->v:Lb/b/d/d/h;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lb/b/d/d/h;->a()V

    :cond_b
    return-void
.end method

.method public d(Z)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    iget-boolean v1, p0, Landroid/support/v7/app/c0;->t:Z

    if-nez v1, :cond_25

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/c0;->t:Z

    iget-object v2, p0, Landroid/support/v7/app/c0;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_11
    invoke-direct {p0, v0}, Landroid/support/v7/app/c0;->g(Z)V

    goto :goto_25

    :cond_15
    iget-boolean v1, p0, Landroid/support/v7/app/c0;->t:Z

    if-eqz v1, :cond_25

    iput-boolean v0, p0, Landroid/support/v7/app/c0;->t:Z

    iget-object v1, p0, Landroid/support/v7/app/c0;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_22

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_22
    invoke-direct {p0, v0}, Landroid/support/v7/app/c0;->g(Z)V

    :cond_25
    :goto_25
    iget-object v1, p0, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/n;->k(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_5f

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_45

    iget-object p1, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast p1, Landroid/support/v7/widget/a1;

    invoke-virtual {p1, v2, v4, v5}, Landroid/support/v7/widget/a1;->a(IJ)Landroid/support/v4/view/q;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v0, v6, v7}, Landroid/support/v7/widget/ActionBarContextView;->a(IJ)Landroid/support/v4/view/q;

    move-result-object v0

    goto :goto_53

    :cond_45
    iget-object p1, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast p1, Landroid/support/v7/widget/a1;

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v7/widget/a1;->a(IJ)Landroid/support/v4/view/q;

    move-result-object v0

    iget-object p1, p0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v3, v4, v5}, Landroid/support/v7/widget/ActionBarContextView;->a(IJ)Landroid/support/v4/view/q;

    move-result-object p1

    :goto_53
    new-instance v1, Lb/b/d/d/h;

    invoke-direct {v1}, Lb/b/d/d/h;-><init>()V

    invoke-virtual {v1, p1, v0}, Lb/b/d/d/h;->a(Landroid/support/v4/view/q;Landroid/support/v4/view/q;)Lb/b/d/d/h;

    invoke-virtual {v1}, Lb/b/d/d/h;->c()V

    goto :goto_7a

    :cond_5f
    if-eqz p1, :cond_6e

    iget-object p1, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast p1, Landroid/support/v7/widget/a1;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/a1;->c(I)V

    iget-object p1, p0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_7a

    :cond_6e
    iget-object p1, p0, Landroid/support/v7/app/c0;->e:Landroid/support/v7/widget/d0;

    check-cast p1, Landroid/support/v7/widget/a1;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/a1;->c(I)V

    iget-object p1, p0, Landroid/support/v7/app/c0;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    :goto_7a
    return-void
.end method

.method public e()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/app/c0;->s:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/c0;->s:Z

    invoke-direct {p0, v0}, Landroid/support/v7/app/c0;->g(Z)V

    :cond_a
    return-void
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/app/c0;->q:Z

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/c0;->v:Lb/b/d/d/h;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lb/b/d/d/h;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/c0;->v:Lb/b/d/d/h;

    :cond_a
    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/app/c0;->s:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/c0;->s:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/app/c0;->g(Z)V

    :cond_b
    return-void
.end method
