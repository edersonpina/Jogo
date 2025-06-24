.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$d;,
        Landroid/support/v7/app/AlertController$b;,
        Landroid/support/v7/app/AlertController$RecycleListView;,
        Landroid/support/v7/app/AlertController$c;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/View;

.field D:Landroid/widget/ListAdapter;

.field E:I

.field private F:I

.field private G:I

.field H:I

.field I:I

.field J:I

.field K:I

.field private L:Z

.field private M:I

.field N:Landroid/os/Handler;

.field private final O:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field final b:Landroid/support/v7/app/x;

.field private final c:Landroid/view/Window;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field n:Landroid/widget/Button;

.field private o:Ljava/lang/CharSequence;

.field p:Landroid/os/Message;

.field q:Landroid/widget/Button;

.field private r:Ljava/lang/CharSequence;

.field s:Landroid/os/Message;

.field t:Landroid/widget/Button;

.field private u:Ljava/lang/CharSequence;

.field v:Landroid/os/Message;

.field w:Landroid/support/v4/widget/NestedScrollView;

.field private x:I

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/x;Landroid/view/Window;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->m:Z

    iput v0, p0, Landroid/support/v7/app/AlertController;->x:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/app/AlertController;->E:I

    iput v0, p0, Landroid/support/v7/app/AlertController;->M:I

    new-instance v1, Landroid/support/v7/app/AlertController$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertController$a;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->O:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/x;

    iput-object p3, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    new-instance p3, Landroid/support/v7/app/AlertController$c;

    invoke-direct {p3, p2}, Landroid/support/v7/app/AlertController$c;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Landroid/support/v7/app/AlertController;->N:Landroid/os/Handler;

    sget-object p3, Lb/b/d/a/j;->AlertDialog:[I

    sget v1, Lb/b/d/a/a;->alertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p3, Lb/b/d/a/j;->AlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->F:I

    sget p3, Lb/b/d/a/j;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->G:I

    sget p3, Lb/b/d/a/j;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->H:I

    sget p3, Lb/b/d/a/j;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->I:I

    sget p3, Lb/b/d/a/j;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->J:I

    sget p3, Lb/b/d/a/j;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->K:I

    sget p3, Lb/b/d/a/j;->AlertDialog_showTitle:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/app/AlertController;->L:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/m;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/m;->b(I)Z

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5

    if-nez p1, :cond_f

    instance-of p1, p2, Landroid/view/ViewStub;

    if-eqz p1, :cond_c

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    :cond_c
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_f
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1e

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_28

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_28
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method static a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_11

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    const/4 v2, 0x4

    :goto_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz p2, :cond_1f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x4

    :goto_1c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method

.method private a(Landroid/widget/Button;)V
    .registers 4

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static c(Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_14
    if-lez v0, :cond_23

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->c(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v1

    :cond_23
    return v2
.end method


# virtual methods
.method public a(I)I
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public a()V
    .registers 16

    iget v0, p0, Landroid/support/v7/app/AlertController;->G:I

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iget v0, p0, Landroid/support/v7/app/AlertController;->F:I

    goto :goto_f

    :cond_8
    iget v2, p0, Landroid/support/v7/app/AlertController;->M:I

    if-ne v2, v1, :cond_d

    goto :goto_f

    :cond_d
    iget v0, p0, Landroid/support/v7/app/AlertController;->F:I

    :goto_f
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/x;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/x;->setContentView(I)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v2, Lb/b/d/a/f;->parentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lb/b/d/a/f;->topPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lb/b/d/a/f;->contentPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lb/b/d/a/f;->buttonPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lb/b/d/a/f;->customPanel:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_3d

    goto :goto_4f

    :cond_3d
    iget v5, p0, Landroid/support/v7/app/AlertController;->h:I

    if-eqz v5, :cond_4e

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v8, p0, Landroid/support/v7/app/AlertController;->h:I

    invoke-virtual {v5, v8, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_4f

    :cond_4e
    move-object v5, v6

    :goto_4f
    if-eqz v5, :cond_53

    const/4 v8, 0x1

    goto :goto_54

    :cond_53
    const/4 v8, 0x0

    :goto_54
    if-eqz v8, :cond_5c

    invoke-static {v5}, Landroid/support/v7/app/AlertController;->c(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_63

    :cond_5c
    iget-object v9, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const/high16 v10, 0x20000

    invoke-virtual {v9, v10, v10}, Landroid/view/Window;->setFlags(II)V

    :cond_63
    const/4 v9, -0x1

    const/16 v10, 0x8

    if-eqz v8, :cond_97

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v11, Lb/b/d/a/f;->custom:I

    invoke-virtual {v8, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v5, p0, Landroid/support/v7/app/AlertController;->m:Z

    if-eqz v5, :cond_89

    iget v5, p0, Landroid/support/v7/app/AlertController;->i:I

    iget v11, p0, Landroid/support/v7/app/AlertController;->j:I

    iget v12, p0, Landroid/support/v7/app/AlertController;->k:I

    iget v13, p0, Landroid/support/v7/app/AlertController;->l:I

    invoke-virtual {v8, v5, v11, v12, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_89
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v5, :cond_9a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/i0$a;

    const/4 v8, 0x0

    iput v8, v5, Landroid/support/v7/widget/i0$a;->a:F

    goto :goto_9a

    :cond_97
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9a
    :goto_9a
    sget v5, Lb/b/d/a/f;->topPanel:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v8, Lb/b/d/a/f;->contentPanel:I

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    sget v11, Lb/b/d/a/f;->buttonPanel:I

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-direct {p0, v5, v2}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v8, v3}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {p0, v11, v4}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v8, Lb/b/d/a/f;->scrollView:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/NestedScrollView;

    iput-object v5, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v5, v7}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v5, 0x102000b

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    if-nez v5, :cond_de

    goto :goto_113

    :cond_de
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    if-eqz v8, :cond_e6

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_113

    :cond_e6
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v5, :cond_110

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v11, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_113

    :cond_110
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_113
    const v5, 0x1020019

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_134

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v5, 0x0

    goto :goto_141

    :cond_134
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v5, 0x1

    :goto_141
    const v8, 0x102001a

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->r:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_161

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_16f

    :cond_161
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->r:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v5, v5, 0x2

    :goto_16f
    const v8, 0x102001b

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->u:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_18f

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_19d

    :cond_18f
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->u:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v5, v5, 0x4

    :goto_19d
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v12, Lb/b/d/a/a;->alertDialogCenterButtons:I

    invoke-virtual {v8, v12, v11, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v11, Landroid/util/TypedValue;->data:I

    if-eqz v8, :cond_1b3

    const/4 v8, 0x1

    goto :goto_1b4

    :cond_1b3
    const/4 v8, 0x0

    :goto_1b4
    const/4 v11, 0x2

    if-eqz v8, :cond_1cf

    if-ne v5, v1, :cond_1bf

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    invoke-direct {p0, v8}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_1cf

    :cond_1bf
    if-ne v5, v11, :cond_1c7

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    invoke-direct {p0, v8}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_1cf

    :cond_1c7
    const/4 v8, 0x4

    if-ne v5, v8, :cond_1cf

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    invoke-direct {p0, v8}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/Button;)V

    :cond_1cf
    :goto_1cf
    if-eqz v5, :cond_1d3

    const/4 v5, 0x1

    goto :goto_1d4

    :cond_1d3
    const/4 v5, 0x0

    :goto_1d4
    if-nez v5, :cond_1d9

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1d9
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->C:Landroid/view/View;

    if-eqz v5, :cond_1f5

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v5, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->C:Landroid/view/View;

    invoke-virtual {v2, v8, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v8, Lb/b/d/a/f;->title_template:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_26c

    :cond_1f5
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v8, 0x1020006

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_259

    iget-boolean v5, p0, Landroid/support/v7/app/AlertController;->L:Z

    if-eqz v5, :cond_259

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v8, Lb/b/d/a/f;->alertTitle:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v5, p0, Landroid/support/v7/app/AlertController;->x:I

    if-eqz v5, :cond_22c

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_26c

    :cond_22c
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_236

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_26c

    :cond_236
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v8

    iget-object v12, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v12

    iget-object v13, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v13

    iget-object v14, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v5, v8, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_26c

    :cond_259
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v8, Lb/b/d/a/f;->title_template:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_26c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_274

    const/4 v0, 0x1

    goto :goto_275

    :cond_274
    const/4 v0, 0x0

    :goto_275
    if-eqz v2, :cond_27f

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_27f

    const/4 v5, 0x1

    goto :goto_280

    :cond_27f
    const/4 v5, 0x0

    :goto_280
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_288

    const/4 v4, 0x1

    goto :goto_289

    :cond_288
    const/4 v4, 0x0

    :goto_289
    if-nez v4, :cond_296

    sget v8, Lb/b/d/a/f;->textSpacerNoButtons:I

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_296

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_296
    if-eqz v5, :cond_2b6

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v8, :cond_29f

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    :cond_29f
    iget-object v8, p0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    if-nez v8, :cond_2aa

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v8, :cond_2a8

    goto :goto_2aa

    :cond_2a8
    move-object v2, v6

    goto :goto_2b0

    :cond_2aa
    :goto_2aa
    sget v8, Lb/b/d/a/f;->titleDividerNoCustom:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_2b0
    if-eqz v2, :cond_2c1

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c1

    :cond_2b6
    sget v2, Lb/b/d/a/f;->textSpacerNoTitle:I

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2c1

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2c1
    :goto_2c1
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    instance-of v8, v2, Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v8, :cond_2cc

    check-cast v2, Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {v2, v5, v4}, Landroid/support/v7/app/AlertController$RecycleListView;->a(ZZ)V

    :cond_2cc
    if-nez v0, :cond_354

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_2d3

    goto :goto_2d5

    :cond_2d3
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    :goto_2d5
    if-eqz v0, :cond_354

    if-eqz v4, :cond_2da

    const/4 v7, 0x2

    :cond_2da
    or-int v2, v5, v7

    const/4 v4, 0x3

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v7, Lb/b/d/a/f;->scrollIndicatorUp:I

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v8, Lb/b/d/a/f;->scrollIndicatorDown:I

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v8, v10, :cond_301

    invoke-static {v0, v2, v4}, Landroid/support/v4/view/n;->a(Landroid/view/View;II)V

    if-eqz v5, :cond_2fb

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2fb
    if-eqz v7, :cond_354

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_354

    :cond_301
    if-eqz v5, :cond_30b

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_30b

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v5, v6

    :cond_30b
    if-eqz v7, :cond_315

    and-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_315

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_316

    :cond_315
    move-object v6, v7

    :goto_316
    if-nez v5, :cond_31a

    if-eqz v6, :cond_354

    :cond_31a
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_333

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    new-instance v2, Landroid/support/v7/app/c;

    invoke-direct {v2, p0, v5, v6}, Landroid/support/v7/app/c;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$b;)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    new-instance v2, Landroid/support/v7/app/d;

    invoke-direct {v2, p0, v5, v6}, Landroid/support/v7/app/d;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_354

    :cond_333
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_34a

    new-instance v2, Landroid/support/v7/app/e;

    invoke-direct {v2, p0, v5, v6}, Landroid/support/v7/app/e;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    new-instance v2, Landroid/support/v7/app/f;

    invoke-direct {v2, p0, v5, v6}, Landroid/support/v7/app/f;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_354

    :cond_34a
    if-eqz v5, :cond_34f

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_34f
    if-eqz v6, :cond_354

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_354
    :goto_354
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_369

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_369

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v2, p0, Landroid/support/v7/app/AlertController;->E:I

    if-le v2, v9, :cond_369

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_369
    return-void
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 5

    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    iget-object p4, p0, Landroid/support/v7/app/AlertController;->N:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_a
    const/4 p3, -0x3

    if-eq p1, p3, :cond_25

    const/4 p3, -0x2

    if-eq p1, p3, :cond_20

    const/4 p3, -0x1

    if-ne p1, p3, :cond_18

    iput-object p2, p0, Landroid/support/v7/app/AlertController;->o:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->p:Landroid/os/Message;

    goto :goto_29

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->r:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->s:Landroid/os/Message;

    goto :goto_29

    :cond_25
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->u:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->v:Landroid/os/Message;

    :goto_29
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->x:I

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    if-eqz v1, :cond_19

    if-eqz p1, :cond_14

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    :cond_14
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_19
    :goto_19
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->C:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 6

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/app/AlertController;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->m:Z

    iput p2, p0, Landroid/support/v7/app/AlertController;->i:I

    iput p3, p0, Landroid/support/v7/app/AlertController;->j:I

    iput p4, p0, Landroid/support/v7/app/AlertController;->k:I

    iput p5, p0, Landroid/support/v7/app/AlertController;->l:I

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public b(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroid/support/v7/app/AlertController;->x:I

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/v7/app/AlertController;->x:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c

    :cond_17
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/app/AlertController;->h:I

    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->m:Z

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->d:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public c(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    iput p1, p0, Landroid/support/v7/app/AlertController;->h:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->m:Z

    return-void
.end method
