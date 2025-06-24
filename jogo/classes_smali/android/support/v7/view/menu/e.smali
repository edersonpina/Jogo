.class final Landroid/support/v7/view/menu/e;
.super Landroid/support/v7/view/menu/n;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/support/v7/view/menu/p;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/e$d;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/PopupWindow$OnDismissListener;

.field B:Z

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Z

.field final h:Landroid/os/Handler;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/view/menu/h;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/view/menu/e$d;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final l:Landroid/view/View$OnAttachStateChangeListener;

.field private final m:Landroid/support/v7/widget/n0;

.field private n:I

.field private o:I

.field private p:Landroid/view/View;

.field q:Landroid/view/View;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Landroid/support/v7/view/menu/p$a;

.field private z:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .registers 7

    invoke-direct {p0}, Landroid/support/v7/view/menu/n;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    new-instance v0, Landroid/support/v7/view/menu/e$a;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/e$a;-><init>(Landroid/support/v7/view/menu/e;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Landroid/support/v7/view/menu/e$b;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/e$b;-><init>(Landroid/support/v7/view/menu/e;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->l:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/support/v7/view/menu/e$c;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/e$c;-><init>(Landroid/support/v7/view/menu/e;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->m:Landroid/support/v7/widget/n0;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/e;->n:I

    iput v0, p0, Landroid/support/v7/view/menu/e;->o:I

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->c:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/view/menu/e;->p:Landroid/view/View;

    iput p3, p0, Landroid/support/v7/view/menu/e;->e:I

    iput p4, p0, Landroid/support/v7/view/menu/e;->f:I

    iput-boolean p5, p0, Landroid/support/v7/view/menu/e;->g:Z

    iput-boolean v0, p0, Landroid/support/v7/view/menu/e;->w:Z

    iget-object p2, p0, Landroid/support/v7/view/menu/e;->p:Landroid/view/View;

    invoke-static {p2}, Landroid/support/v4/view/n;->d(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_41

    const/4 p3, 0x0

    :cond_41
    iput p3, p0, Landroid/support/v7/view/menu/e;->r:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Lb/b/d/a/d;->abc_config_prefDialogWidth:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/e;->d:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/menu/e;)Landroid/view/ViewTreeObserver;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/view/menu/e;->z:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static synthetic a(Landroid/support/v7/view/menu/e;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->z:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v7/view/menu/e;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/view/menu/e;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method private c(Landroid/support/v7/view/menu/h;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/support/v7/view/menu/e;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v3, Landroid/support/v7/view/menu/g;

    iget-boolean v4, v0, Landroid/support/v7/view/menu/e;->g:Z

    invoke-direct {v3, v1, v2, v4}, Landroid/support/v7/view/menu/g;-><init>(Landroid/support/v7/view/menu/h;Landroid/view/LayoutInflater;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/e;->d()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_20

    iget-boolean v4, v0, Landroid/support/v7/view/menu/e;->w:Z

    if-eqz v4, :cond_20

    invoke-virtual {v3, v5}, Landroid/support/v7/view/menu/g;->a(Z)V

    goto :goto_2d

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/e;->d()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-static/range {p1 .. p1}, Landroid/support/v7/view/menu/n;->b(Landroid/support/v7/view/menu/h;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/g;->a(Z)V

    :cond_2d
    :goto_2d
    iget-object v4, v0, Landroid/support/v7/view/menu/e;->c:Landroid/content/Context;

    iget v6, v0, Landroid/support/v7/view/menu/e;->d:I

    const/4 v7, 0x0

    invoke-static {v3, v7, v4, v6}, Landroid/support/v7/view/menu/n;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v4

    new-instance v6, Landroid/support/v7/widget/o0;

    iget-object v8, v0, Landroid/support/v7/view/menu/e;->c:Landroid/content/Context;

    iget v9, v0, Landroid/support/v7/view/menu/e;->e:I

    iget v10, v0, Landroid/support/v7/view/menu/e;->f:I

    invoke-direct {v6, v8, v7, v9, v10}, Landroid/support/v7/widget/o0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object v8, v0, Landroid/support/v7/view/menu/e;->m:Landroid/support/v7/widget/n0;

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/o0;->a(Landroid/support/v7/widget/n0;)V

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/l0;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/l0;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v8, v0, Landroid/support/v7/view/menu/e;->p:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/l0;->a(Landroid/view/View;)V

    iget v8, v0, Landroid/support/v7/view/menu/e;->o:I

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/l0;->c(I)V

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/l0;->a(Z)V

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/l0;->e(I)V

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/l0;->a(Landroid/widget/ListAdapter;)V

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/l0;->b(I)V

    iget v3, v0, Landroid/support/v7/view/menu/e;->o:I

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/l0;->c(I)V

    iget-object v3, v0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x0

    if-lez v3, :cond_e7

    iget-object v3, v0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/e$d;

    iget-object v10, v3, Landroid/support/v7/view/menu/e$d;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v10}, Landroid/support/v7/view/menu/h;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_85
    if-ge v12, v11, :cond_9b

    invoke-virtual {v10, v12}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v14

    if-eqz v14, :cond_98

    invoke-interface {v13}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    if-ne v1, v14, :cond_98

    goto :goto_9c

    :cond_98
    add-int/lit8 v12, v12, 0x1

    goto :goto_85

    :cond_9b
    move-object v13, v7

    :goto_9c
    if-nez v13, :cond_a0

    :cond_9e
    :goto_9e
    move-object v5, v7

    goto :goto_e9

    :cond_a0
    invoke-virtual {v3}, Landroid/support/v7/view/menu/e$d;->a()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    instance-of v12, v11, Landroid/widget/HeaderViewListAdapter;

    if-eqz v12, :cond_b9

    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v12

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Landroid/support/v7/view/menu/g;

    goto :goto_bc

    :cond_b9
    check-cast v11, Landroid/support/v7/view/menu/g;

    const/4 v12, 0x0

    :goto_bc
    invoke-virtual {v11}, Landroid/support/v7/view/menu/g;->getCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_c1
    const/4 v8, -0x1

    if-ge v15, v14, :cond_cf

    invoke-virtual {v11, v15}, Landroid/support/v7/view/menu/g;->getItem(I)Landroid/support/v7/view/menu/k;

    move-result-object v5

    if-ne v13, v5, :cond_cb

    goto :goto_d0

    :cond_cb
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    goto :goto_c1

    :cond_cf
    const/4 v15, -0x1

    :goto_d0
    if-ne v15, v8, :cond_d3

    goto :goto_9e

    :cond_d3
    add-int/2addr v15, v12

    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v15, v5

    if-ltz v15, :cond_9e

    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lt v15, v5, :cond_e2

    goto :goto_9e

    :cond_e2
    invoke-virtual {v10, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_e9

    :cond_e7
    move-object v3, v7

    move-object v5, v3

    :goto_e9
    if-eqz v5, :cond_17b

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/o0;->c(Z)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/o0;->a(Ljava/lang/Object;)V

    iget-object v8, v0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/e$d;

    invoke-virtual {v8}, Landroid/support/v7/view/menu/e$d;->a()Landroid/widget/ListView;

    move-result-object v8

    const/4 v10, 0x2

    new-array v12, v10, [I

    invoke-virtual {v8, v12}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v13, v0, Landroid/support/v7/view/menu/e;->q:Landroid/view/View;

    invoke-virtual {v13, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v13, v0, Landroid/support/v7/view/menu/e;->r:I

    if-ne v13, v11, :cond_124

    aget v11, v12, v9

    invoke-virtual {v8}, Landroid/widget/ListView;->getWidth()I

    move-result v8

    add-int/2addr v8, v11

    add-int/2addr v8, v4

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-le v8, v10, :cond_129

    goto :goto_12b

    :cond_124
    aget v8, v12, v9

    sub-int/2addr v8, v4

    if-gez v8, :cond_12b

    :cond_129
    const/4 v8, 0x1

    goto :goto_12c

    :cond_12b
    :goto_12b
    const/4 v8, 0x0

    :goto_12c
    const/4 v10, 0x1

    if-ne v8, v10, :cond_131

    const/4 v10, 0x1

    goto :goto_132

    :cond_131
    const/4 v10, 0x0

    :goto_132
    iput v8, v0, Landroid/support/v7/view/menu/e;->r:I

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v8, v11, :cond_140

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/l0;->a(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_158

    :cond_140
    const/4 v8, 0x2

    new-array v11, v8, [I

    iget-object v12, v0, Landroid/support/v7/view/menu/e;->p:Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v8, v8, [I

    invoke-virtual {v5, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v12, v8, v9

    aget v13, v11, v9

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    aget v8, v8, v13

    aget v11, v11, v13

    sub-int/2addr v8, v11

    :goto_158
    iget v11, v0, Landroid/support/v7/view/menu/e;->o:I

    const/4 v13, 0x5

    and-int/2addr v11, v13

    if-ne v11, v13, :cond_167

    if-eqz v10, :cond_162

    add-int/2addr v12, v4

    goto :goto_170

    :cond_162
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_16f

    :cond_167
    if-eqz v10, :cond_16f

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v12, v4

    goto :goto_170

    :cond_16f
    :goto_16f
    sub-int/2addr v12, v4

    :goto_170
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/l0;->d(I)V

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/l0;->b(Z)V

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/l0;->g(I)V

    goto :goto_194

    :cond_17b
    iget-boolean v4, v0, Landroid/support/v7/view/menu/e;->s:Z

    if-eqz v4, :cond_184

    iget v4, v0, Landroid/support/v7/view/menu/e;->u:I

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/l0;->d(I)V

    :cond_184
    iget-boolean v4, v0, Landroid/support/v7/view/menu/e;->t:Z

    if-eqz v4, :cond_18d

    iget v4, v0, Landroid/support/v7/view/menu/e;->v:I

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/l0;->g(I)V

    :cond_18d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/n;->f()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/l0;->a(Landroid/graphics/Rect;)V

    :goto_194
    new-instance v4, Landroid/support/v7/view/menu/e$d;

    iget v5, v0, Landroid/support/v7/view/menu/e;->r:I

    invoke-direct {v4, v6, v1, v5}, Landroid/support/v7/view/menu/e$d;-><init>(Landroid/support/v7/widget/o0;Landroid/support/v7/view/menu/h;I)V

    iget-object v5, v0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/support/v7/widget/l0;->a()V

    invoke-virtual {v6}, Landroid/support/v7/widget/l0;->c()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v3, :cond_1d3

    iget-boolean v3, v0, Landroid/support/v7/view/menu/e;->x:Z

    if-eqz v3, :cond_1d3

    iget-object v3, v1, Landroid/support/v7/view/menu/h;->n:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1d3

    sget v3, Lb/b/d/a/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v2, v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v1, v1, Landroid/support/v7/view/menu/h;->n:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2, v7, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v6}, Landroid/support/v7/widget/l0;->a()V

    :cond_1d3
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/view/menu/e;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/h;

    invoke-direct {p0, v1}, Landroid/support/v7/view/menu/e;->c(Landroid/support/v7/view/menu/h;)V

    goto :goto_d

    :cond_1d
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->p:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->q:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->q:Landroid/view/View;

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->z:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    iget-object v1, p0, Landroid/support/v7/view/menu/e;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/e;->z:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->z:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_42
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->q:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_49
    return-void
.end method

.method public a(I)V
    .registers 3

    iget v0, p0, Landroid/support/v7/view/menu/e;->n:I

    if-eq v0, p1, :cond_12

    iput p1, p0, Landroid/support/v7/view/menu/e;->n:I

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->p:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/n;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, La/a/g;->a(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/e;->o:I

    :cond_12
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->c:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/p;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/support/v7/view/menu/e;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/e;->c(Landroid/support/v7/view/menu/h;)V

    goto :goto_14

    :cond_f
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_14
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .registers 9

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1a

    iget-object v3, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/e$d;

    iget-object v3, v3, Landroid/support/v7/view/menu/e$d;->b:Landroid/support/v7/view/menu/h;

    if-ne p1, v3, :cond_17

    goto :goto_1b

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    const/4 v2, -0x1

    :goto_1b
    if-gez v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_35

    iget-object v3, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$d;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$d;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    :cond_35
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$d;

    iget-object v2, v0, Landroid/support/v7/view/menu/e$d;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2, p0}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/p;)V

    iget-boolean v2, p0, Landroid/support/v7/view/menu/e;->B:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    iget-object v2, v0, Landroid/support/v7/view/menu/e$d;->a:Landroid/support/v7/widget/o0;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/o0;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Landroid/support/v7/view/menu/e$d;->a:Landroid/support/v7/widget/o0;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/l0;->a(I)V

    :cond_51
    iget-object v0, v0, Landroid/support/v7/view/menu/e$d;->a:Landroid/support/v7/widget/o0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->dismiss()V

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_6e

    iget-object v4, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/e$d;

    iget v4, v4, Landroid/support/v7/view/menu/e$d;->c:I

    iput v4, p0, Landroid/support/v7/view/menu/e;->r:I

    goto :goto_7b

    :cond_6e
    iget-object v4, p0, Landroid/support/v7/view/menu/e;->p:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/n;->d(Landroid/view/View;)I

    move-result v4

    if-ne v4, v2, :cond_78

    const/4 v4, 0x0

    goto :goto_79

    :cond_78
    const/4 v4, 0x1

    :goto_79
    iput v4, p0, Landroid/support/v7/view/menu/e;->r:I

    :goto_7b
    if-nez v0, :cond_a7

    invoke-virtual {p0}, Landroid/support/v7/view/menu/e;->dismiss()V

    iget-object p2, p0, Landroid/support/v7/view/menu/e;->y:Landroid/support/v7/view/menu/p$a;

    if-eqz p2, :cond_87

    invoke-interface {p2, p1, v2}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/h;Z)V

    :cond_87
    iget-object p1, p0, Landroid/support/v7/view/menu/e;->z:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_9a

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_98

    iget-object p1, p0, Landroid/support/v7/view/menu/e;->z:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Landroid/support/v7/view/menu/e;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_98
    iput-object v3, p0, Landroid/support/v7/view/menu/e;->z:Landroid/view/ViewTreeObserver;

    :cond_9a
    iget-object p1, p0, Landroid/support/v7/view/menu/e;->q:Landroid/view/View;

    iget-object p2, p0, Landroid/support/v7/view/menu/e;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Landroid/support/v7/view/menu/e;->A:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_b6

    :cond_a7
    if-eqz p2, :cond_b6

    iget-object p1, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/e$d;

    iget-object p1, p1, Landroid/support/v7/view/menu/e$d;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    :cond_b6
    :goto_b6
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p$a;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->y:Landroid/support/v7/view/menu/p$a;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->p:Landroid/view/View;

    if-eq v0, p1, :cond_14

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->p:Landroid/view/View;

    iget p1, p0, Landroid/support/v7/view/menu/e;->n:I

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->p:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/n;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, La/a/g;->a(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/e;->o:I

    :cond_14
    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->A:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object p1, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$d;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e$d;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_27

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/g;

    goto :goto_29

    :cond_27
    check-cast v0, Landroid/support/v7/view/menu/g;

    :goto_29
    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->notifyDataSetChanged()V

    goto :goto_6

    :cond_2d
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/v;)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/e$d;

    iget-object v3, v1, Landroid/support/v7/view/menu/e$d;->b:Landroid/support/v7/view/menu/h;

    if-ne p1, v3, :cond_6

    invoke-virtual {v1}, Landroid/support/v7/view/menu/e$d;->a()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    :cond_1f
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/e;->a(Landroid/support/v7/view/menu/h;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->y:Landroid/support/v7/view/menu/p$a;

    if-eqz v0, :cond_2f

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/h;)Z

    :cond_2f
    return v2

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public b(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/e;->s:Z

    iput p1, p0, Landroid/support/v7/view/menu/e;->u:I

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/view/menu/e;->w:Z

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/widget/ListView;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_1c

    :cond_a
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$d;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e$d;->a()Landroid/widget/ListView;

    move-result-object v0

    :goto_1c
    return-object v0
.end method

.method public c(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/e;->t:Z

    iput p1, p0, Landroid/support/v7/view/menu/e;->v:I

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/view/menu/e;->x:Z

    return-void
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$d;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$d;->a:Landroid/support/v7/widget/o0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public dismiss()V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    new-array v2, v0, [Landroid/support/v7/view/menu/e$d;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/support/v7/view/menu/e$d;

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_28

    aget-object v2, v1, v0

    iget-object v3, v2, Landroid/support/v7/view/menu/e$d;->a:Landroid/support/v7/widget/o0;

    invoke-virtual {v3}, Landroid/support/v7/widget/l0;->d()Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v2, v2, Landroid/support/v7/view/menu/e$d;->a:Landroid/support/v7/widget/o0;

    invoke-virtual {v2}, Landroid/support/v7/widget/l0;->dismiss()V

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_28
    return-void
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onDismiss()V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1e

    iget-object v3, p0, Landroid/support/v7/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/e$d;

    iget-object v4, v3, Landroid/support/v7/view/menu/e$d;->a:Landroid/support/v7/widget/o0;

    invoke-virtual {v4}, Landroid/support/v7/widget/l0;->d()Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_1f

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    if-eqz v3, :cond_26

    iget-object v0, v3, Landroid/support/v7/view/menu/e$d;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    :cond_26
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_f

    const/16 p1, 0x52

    if-ne p2, p1, :cond_f

    invoke-virtual {p0}, Landroid/support/v7/view/menu/e;->dismiss()V

    return p3

    :cond_f
    const/4 p1, 0x0

    return p1
.end method
