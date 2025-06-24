.class public Landroid/support/v7/widget/x;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/support/v4/view/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/x$b;,
        Landroid/support/v7/widget/x$a;
    }
.end annotation


# static fields
.field private static final j:[I


# instance fields
.field private final b:Landroid/support/v7/widget/e;

.field private final c:Landroid/content/Context;

.field private d:Landroid/support/v7/widget/h0;

.field private e:Landroid/widget/SpinnerAdapter;

.field private final f:Z

.field private g:Landroid/support/v7/widget/x$b;

.field private h:I

.field private final i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/x;->j:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/x;->i:Landroid/graphics/Rect;

    sget-object v0, Lb/b/d/a/j;->Spinner:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/widget/y0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/y0;

    move-result-object v0

    new-instance v2, Landroid/support/v7/widget/e;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/e;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/e;

    const/4 v2, 0x0

    sget v3, Lb/b/d/a/j;->Spinner_popupTheme:I

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/y0;->g(II)I

    move-result v3

    if-eqz v3, :cond_29

    new-instance v4, Lb/b/d/d/d;

    invoke-direct {v4, p1, v3}, Lb/b/d/d/d;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/support/v7/widget/x;->c:Landroid/content/Context;

    goto :goto_34

    :cond_29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_31

    move-object v3, p1

    goto :goto_32

    :cond_31
    move-object v3, v2

    :goto_32
    iput-object v3, p0, Landroid/support/v7/widget/x;->c:Landroid/content/Context;

    :goto_34
    iget-object v3, p0, Landroid/support/v7/widget/x;->c:Landroid/content/Context;

    const/4 v4, 0x1

    if-eqz v3, :cond_a0

    const/4 v3, -0x1

    :try_start_3a
    sget-object v5, Landroid/support/v7/widget/x;->j:[I

    invoke-virtual {p1, p2, v5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_52
    .catchall {:try_start_3a .. :try_end_40} :catchall_50

    :try_start_40
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-virtual {v5, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_4e
    .catchall {:try_start_40 .. :try_end_4a} :catchall_4b

    goto :goto_5e

    :catchall_4b
    move-exception p1

    move-object v2, v5

    goto :goto_9a

    :catch_4e
    move-exception v6

    goto :goto_55

    :catchall_50
    move-exception p1

    goto :goto_9a

    :catch_52
    move-exception v5

    move-object v6, v5

    move-object v5, v2

    :goto_55
    :try_start_55
    const-string v7, "AppCompatSpinner"

    const-string v8, "Could not read android:spinnerMode"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_4b

    if-eqz v5, :cond_61

    :cond_5e
    :goto_5e
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_61
    if-ne v3, v4, :cond_a0

    new-instance v3, Landroid/support/v7/widget/x$b;

    iget-object v5, p0, Landroid/support/v7/widget/x;->c:Landroid/content/Context;

    invoke-direct {v3, p0, v5, p2, p3}, Landroid/support/v7/widget/x$b;-><init>(Landroid/support/v7/widget/x;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v5, p0, Landroid/support/v7/widget/x;->c:Landroid/content/Context;

    sget-object v6, Lb/b/d/a/j;->Spinner:[I

    invoke-static {v5, p2, v6, p3, v1}, Landroid/support/v7/widget/y0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/y0;

    move-result-object v1

    sget v5, Lb/b/d/a/j;->Spinner_android_dropDownWidth:I

    const/4 v6, -0x2

    invoke-virtual {v1, v5, v6}, Landroid/support/v7/widget/y0;->f(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/x;->h:I

    sget v5, Lb/b/d/a/j;->Spinner_android_popupBackground:I

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/y0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/l0;->a(Landroid/graphics/drawable/Drawable;)V

    sget v5, Lb/b/d/a/j;->Spinner_android_prompt:I

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/y0;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/x$b;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/y0;->a()V

    iput-object v3, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    new-instance v1, Landroid/support/v7/widget/w;

    invoke-direct {v1, p0, p0, v3}, Landroid/support/v7/widget/w;-><init>(Landroid/support/v7/widget/x;Landroid/view/View;Landroid/support/v7/widget/x$b;)V

    iput-object v1, p0, Landroid/support/v7/widget/x;->d:Landroid/support/v7/widget/h0;

    goto :goto_a0

    :goto_9a
    if-eqz v2, :cond_9f

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_9f
    throw p1

    :cond_a0
    :goto_a0
    sget v1, Lb/b/d/a/j;->Spinner_android_entries:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/y0;->f(I)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_b8

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v3, p1, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    sget p1, Lb/b/d/a/g;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v3, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/x;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_b8
    invoke-virtual {v0}, Landroid/support/v7/widget/y0;->a()V

    iput-boolean v4, p0, Landroid/support/v7/widget/x;->f:Z

    iget-object p1, p0, Landroid/support/v7/widget/x;->e:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_c6

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/x;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v2, p0, Landroid/support/v7/widget/x;->e:Landroid/widget/SpinnerAdapter;

    :cond_c6
    iget-object p1, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/e;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/e;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/x;)Landroid/support/v7/widget/x$b;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    return-object p0
.end method

.method static synthetic b(Landroid/support/v7/widget/x;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/support/v7/widget/x;->i:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic c(Landroid/support/v7/widget/x;)I
    .registers 1

    iget p0, p0, Landroid/support/v7/widget/x;->h:I

    return p0
.end method


# virtual methods
.method a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move-object v7, v5

    const/4 v6, 0x0

    :goto_32
    if-ge v3, v4, :cond_5d

    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_3c

    move-object v7, v5

    move v0, v8

    :cond_3c
    invoke-interface {p1, v3, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_4f

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4f
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_5d
    if-eqz p2, :cond_6c

    iget-object p1, p0, Landroid/support/v7/widget/x;->i:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p1, p0, Landroid/support/v7/widget/x;->i:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p1

    add-int/2addr v6, p2

    :cond_6c
    return v6
.end method

.method protected drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->a()V

    :cond_a
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->f()I

    move-result v0

    return v0

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->g()I

    move-result v0

    return v0

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/widget/x;->h:I

    return v0

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/x;->c:Landroid/content/Context;

    return-object v0

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/x$b;->k()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->dismiss()V

    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    iget-object p2, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz p2, :cond_32

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_32

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/x;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    :cond_32
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/x;->d:Landroid/support/v7/widget/h0;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/h0;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/support/v7/widget/l0;->d()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/x$b;->a()V

    :cond_f
    const/4 v0, 0x1

    return v0

    :cond_11
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/x;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v7/widget/x;->f:Z

    if-nez v0, :cond_7

    iput-object p1, p0, Landroid/support/v7/widget/x;->e:Landroid/widget/SpinnerAdapter;

    return-void

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v7/widget/x;->c:Landroid/content/Context;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_16
    iget-object v1, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    new-instance v2, Landroid/support/v7/widget/x$a;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroid/support/v7/widget/x$a;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/x$b;->a(Landroid/widget/ListAdapter;)V

    :cond_24
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/e;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/support/v7/widget/e;->d()V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->a(I)V

    :cond_a
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/l0;->d(I)V

    goto :goto_d

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :goto_d
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/l0;->g(I)V

    goto :goto_d

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :goto_d
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_7

    iput p1, p0, Landroid/support/v7/widget/x;->h:I

    goto :goto_c

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :goto_c
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_f
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/x;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/b/d/b/a/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/x;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/x$b;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/x$b;->a(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_b
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method
