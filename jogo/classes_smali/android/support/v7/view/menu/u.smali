.class final Landroid/support/v7/view/menu/u;
.super Landroid/support/v7/view/menu/n;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v7/view/menu/p;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/support/v7/view/menu/h;

.field private final e:Landroid/support/v7/view/menu/g;

.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field final j:Landroid/support/v7/widget/o0;

.field private final k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final l:Landroid/view/View$OnAttachStateChangeListener;

.field private m:Landroid/widget/PopupWindow$OnDismissListener;

.field private n:Landroid/view/View;

.field o:Landroid/view/View;

.field private p:Landroid/support/v7/view/menu/p$a;

.field private q:Landroid/view/ViewTreeObserver;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;IIZ)V
    .registers 9

    invoke-direct {p0}, Landroid/support/v7/view/menu/n;-><init>()V

    new-instance v0, Landroid/support/v7/view/menu/u$a;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/u$a;-><init>(Landroid/support/v7/view/menu/u;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/u;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Landroid/support/v7/view/menu/u$b;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/u$b;-><init>(Landroid/support/v7/view/menu/u;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/u;->l:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/u;->u:I

    iput-object p1, p0, Landroid/support/v7/view/menu/u;->c:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    iput-boolean p6, p0, Landroid/support/v7/view/menu/u;->f:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    new-instance v0, Landroid/support/v7/view/menu/g;

    iget-boolean v1, p0, Landroid/support/v7/view/menu/u;->f:Z

    invoke-direct {v0, p2, p6, v1}, Landroid/support/v7/view/menu/g;-><init>(Landroid/support/v7/view/menu/h;Landroid/view/LayoutInflater;Z)V

    iput-object v0, p0, Landroid/support/v7/view/menu/u;->e:Landroid/support/v7/view/menu/g;

    iput p4, p0, Landroid/support/v7/view/menu/u;->h:I

    iput p5, p0, Landroid/support/v7/view/menu/u;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p5, p5, 0x2

    sget p6, Lb/b/d/a/d;->abc_config_prefDialogWidth:I

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/view/menu/u;->g:I

    iput-object p3, p0, Landroid/support/v7/view/menu/u;->n:Landroid/view/View;

    new-instance p3, Landroid/support/v7/widget/o0;

    iget-object p4, p0, Landroid/support/v7/view/menu/u;->c:Landroid/content/Context;

    iget p5, p0, Landroid/support/v7/view/menu/u;->h:I

    iget p6, p0, Landroid/support/v7/view/menu/u;->i:I

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, p5, p6}, Landroid/support/v7/widget/o0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {p2, p0, p1}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/p;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/menu/u;)Landroid/view/ViewTreeObserver;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static synthetic a(Landroid/support/v7/view/menu/u;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v7/view/menu/u;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/view/menu/u;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 8

    invoke-virtual {p0}, Landroid/support/v7/view/menu/u;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    goto/16 :goto_c3

    :cond_a
    iget-boolean v0, p0, Landroid/support/v7/view/menu/u;->r:Z

    if-nez v0, :cond_c2

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->n:Landroid/view/View;

    if-nez v0, :cond_14

    goto/16 :goto_c2

    :cond_14
    iput-object v0, p0, Landroid/support/v7/view/menu/u;->o:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/l0;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/l0;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/l0;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->o:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3d

    iget-object v3, p0, Landroid/support/v7/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    iget-object v4, p0, Landroid/support/v7/view/menu/u;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3d
    iget-object v3, p0, Landroid/support/v7/view/menu/u;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/l0;->a(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    iget v3, p0, Landroid/support/v7/view/menu/u;->u:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/l0;->c(I)V

    iget-boolean v0, p0, Landroid/support/v7/view/menu/u;->s:Z

    const/4 v3, 0x0

    if-nez v0, :cond_61

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->e:Landroid/support/v7/view/menu/g;

    iget-object v4, p0, Landroid/support/v7/view/menu/u;->c:Landroid/content/Context;

    iget v5, p0, Landroid/support/v7/view/menu/u;->g:I

    invoke-static {v0, v3, v4, v5}, Landroid/support/v7/view/menu/n;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/u;->t:I

    iput-boolean v2, p0, Landroid/support/v7/view/menu/u;->s:Z

    :cond_61
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    iget v4, p0, Landroid/support/v7/view/menu/u;->t:I

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/l0;->b(I)V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/l0;->e(I)V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/n;->f()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/l0;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->a()V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->c()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, Landroid/support/v7/view/menu/u;->v:Z

    if-eqz v4, :cond_b5

    iget-object v4, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    iget-object v4, v4, Landroid/support/v7/view/menu/h;->n:Ljava/lang/CharSequence;

    if-eqz v4, :cond_b5

    iget-object v4, p0, Landroid/support/v7/view/menu/u;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lb/b/d/a/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_af

    iget-object v6, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    iget-object v6, v6, Landroid/support/v7/view/menu/h;->n:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_af
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v0, v4, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_b5
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    iget-object v1, p0, Landroid/support/v7/view/menu/u;->e:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/l0;->a(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->a()V

    goto :goto_c3

    :cond_c2
    :goto_c2
    const/4 v2, 0x0

    :goto_c3
    if-eqz v2, :cond_c6

    return-void

    :cond_c6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/view/menu/u;->u:I

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/view/menu/u;->dismiss()V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->p:Landroid/support/v7/view/menu/p$a;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/h;Z)V

    :cond_f
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p$a;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/u;->p:Landroid/support/v7/view/menu/p$a;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/u;->n:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/u;->m:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public a(Z)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/view/menu/u;->s:Z

    iget-object p1, p0, Landroid/support/v7/view/menu/u;->e:Landroid/support/v7/view/menu/g;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/v;)Z
    .registers 11

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    new-instance v0, Landroid/support/v7/view/menu/o;

    iget-object v3, p0, Landroid/support/v7/view/menu/u;->c:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/view/menu/u;->o:Landroid/view/View;

    iget-boolean v6, p0, Landroid/support/v7/view/menu/u;->f:Z

    iget v7, p0, Landroid/support/v7/view/menu/u;->h:I

    iget v8, p0, Landroid/support/v7/view/menu/u;->i:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/support/v7/view/menu/o;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V

    iget-object v2, p0, Landroid/support/v7/view/menu/u;->p:Landroid/support/v7/view/menu/p$a;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/p$a;)V

    invoke-static {p1}, Landroid/support/v7/view/menu/n;->b(Landroid/support/v7/view/menu/h;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/o;->a(Z)V

    iget v2, p0, Landroid/support/v7/view/menu/u;->u:I

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/o;->a(I)V

    iget-object v2, p0, Landroid/support/v7/view/menu/u;->m:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/o;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/view/menu/u;->m:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    iget-object v2, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v2}, Landroid/support/v7/widget/l0;->f()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v3}, Landroid/support/v7/widget/l0;->g()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/view/menu/o;->a(II)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->p:Landroid/support/v7/view/menu/p$a;

    if-eqz v0, :cond_4f

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/p$a;->a(Landroid/support/v7/view/menu/h;)Z

    :cond_4f
    const/4 p1, 0x1

    return p1

    :cond_51
    return v1
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/l0;->d(I)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->e:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/g;->a(Z)V

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->c()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/l0;->g(I)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/view/menu/u;->v:Z

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/u;->r:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public dismiss()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/u;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->j:Landroid/support/v7/widget/o0;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->dismiss()V

    :cond_b
    return-void
.end method

.method public onDismiss()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/u;->r:Z

    iget-object v1, p0, Landroid/support/v7/view/menu/u;->d:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/menu/h;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    :cond_1a
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/u;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/u;->q:Landroid/view/ViewTreeObserver;

    :cond_24
    iget-object v0, p0, Landroid/support/v7/view/menu/u;->o:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/view/menu/u;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/u;->m:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_32
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

    invoke-virtual {p0}, Landroid/support/v7/view/menu/u;->dismiss()V

    return p3

    :cond_f
    const/4 p1, 0x0

    return p1
.end method
