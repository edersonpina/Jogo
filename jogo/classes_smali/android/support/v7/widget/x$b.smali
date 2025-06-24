.class Landroid/support/v7/widget/x$b;
.super Landroid/support/v7/widget/l0;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private J:Ljava/lang/CharSequence;

.field K:Landroid/widget/ListAdapter;

.field private final L:Landroid/graphics/Rect;

.field final synthetic M:Landroid/support/v7/widget/x;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/x;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    iput-object p1, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/support/v7/widget/l0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/x$b;->L:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/l0;->a(Landroid/view/View;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/l0;->a(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/l0;->f(I)V

    new-instance p2, Landroid/support/v7/widget/x$b$a;

    invoke-direct {p2, p0, p1}, Landroid/support/v7/widget/x$b$a;-><init>(Landroid/support/v7/widget/x$b;Landroid/support/v7/widget/x;)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/l0;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/x$b;)V
    .registers 1

    invoke-super {p0}, Landroid/support/v7/widget/l0;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    invoke-virtual {p0}, Landroid/support/v7/widget/l0;->d()Z

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/x$b;->j()V

    iget-object v1, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-super {p0}, Landroid/support/v7/widget/l0;->a()V

    iget-object v1, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    invoke-virtual {p0}, Landroid/support/v7/widget/l0;->d()Z

    move-result v4

    if-eqz v4, :cond_36

    if-eqz v3, :cond_36

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/f0;->setListSelectionHidden(Z)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {v3}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_36
    if-eqz v0, :cond_39

    return-void

    :cond_39
    iget-object v0, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_53

    new-instance v1, Landroid/support/v7/widget/x$b$b;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/x$b$b;-><init>(Landroid/support/v7/widget/x$b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Landroid/support/v7/widget/x$b$c;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/x$b$c;-><init>(Landroid/support/v7/widget/x$b;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_53
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/l0;->a(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroid/support/v7/widget/x$b;->K:Landroid/widget/ListAdapter;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/x$b;->J:Ljava/lang/CharSequence;

    return-void
.end method

.method b(Landroid/view/View;)Z
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/n;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/x$b;->L:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method j()V
    .registers 8

    invoke-virtual {p0}, Landroid/support/v7/widget/l0;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v1}, Landroid/support/v7/widget/x;->b(Landroid/support/v7/widget/x;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v0}, Landroid/support/v7/widget/f1;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v0}, Landroid/support/v7/widget/x;->b(Landroid/support/v7/widget/x;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2a

    :cond_21
    iget-object v0, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v0}, Landroid/support/v7/widget/x;->b(Landroid/support/v7/widget/x;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_2a
    move v1, v0

    goto :goto_3c

    :cond_2c
    iget-object v0, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v0}, Landroid/support/v7/widget/x;->b(Landroid/support/v7/widget/x;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v2}, Landroid/support/v7/widget/x;->b(Landroid/support/v7/widget/x;)Landroid/graphics/Rect;

    move-result-object v2

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :goto_3c
    iget-object v0, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v4}, Landroid/support/v7/widget/x;->c(Landroid/support/v7/widget/x;)I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_95

    iget-object v4, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    iget-object v5, p0, Landroid/support/v7/widget/x$b;->K:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/l0;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/x;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v6}, Landroid/support/v7/widget/x;->b(Landroid/support/v7/widget/x;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v6}, Landroid/support/v7/widget/x;->b(Landroid/support/v7/widget/x;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_8a

    move v4, v5

    :cond_8a
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/l0;->b(I)V

    goto :goto_ae

    :cond_95
    iget-object v4, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v4}, Landroid/support/v7/widget/x;->c(Landroid/support/v7/widget/x;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a5

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/l0;->b(I)V

    goto :goto_ae

    :cond_a5
    iget-object v4, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v4}, Landroid/support/v7/widget/x;->c(Landroid/support/v7/widget/x;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/l0;->b(I)V

    :goto_ae
    iget-object v4, p0, Landroid/support/v7/widget/x$b;->M:Landroid/support/v7/widget/x;

    invoke-static {v4}, Landroid/support/v7/widget/f1;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_be

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/l0;->h()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    goto :goto_c0

    :cond_be
    add-int v3, v1, v0

    :goto_c0
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/l0;->d(I)V

    return-void
.end method

.method public k()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/x$b;->J:Ljava/lang/CharSequence;

    return-object v0
.end method
