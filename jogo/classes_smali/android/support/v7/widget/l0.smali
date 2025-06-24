.class public Landroid/support/v7/widget/l0;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/support/v7/view/menu/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/l0$c;,
        Landroid/support/v7/widget/l0$d;,
        Landroid/support/v7/widget/l0$e;,
        Landroid/support/v7/widget/l0$a;,
        Landroid/support/v7/widget/l0$b;
    }
.end annotation


# static fields
.field private static G:Ljava/lang/reflect/Method;

.field private static H:Ljava/lang/reflect/Method;

.field private static I:Ljava/lang/reflect/Method;


# instance fields
.field private final A:Landroid/support/v7/widget/l0$a;

.field final B:Landroid/os/Handler;

.field private final C:Landroid/graphics/Rect;

.field private D:Landroid/graphics/Rect;

.field private E:Z

.field F:Landroid/widget/PopupWindow;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ListAdapter;

.field d:Landroid/support/v7/widget/f0;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Z

.field p:I

.field private q:Landroid/view/View;

.field private r:I

.field private s:Landroid/database/DataSetObserver;

.field private t:Landroid/view/View;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/widget/AdapterView$OnItemClickListener;

.field private w:Landroid/widget/AdapterView$OnItemSelectedListener;

.field final x:Landroid/support/v7/widget/l0$e;

.field private final y:Landroid/support/v7/widget/l0$d;

.field private final z:Landroid/support/v7/widget/l0$c;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "ListPopupWindow"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setClipToScreenEnabled"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/support/v7/widget/l0;->G:Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    const-string v3, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    :try_start_1a
    const-class v3, Landroid/widget/PopupWindow;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_2c} :catch_35

    const-string v5, "getMaxAvailableHeight"

    :try_start_2e
    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/support/v7/widget/l0;->H:Ljava/lang/reflect/Method;
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_34} :catch_35

    goto :goto_3a

    :catch_35
    const-string v3, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    :try_start_3a
    const-class v3, Landroid/widget/PopupWindow;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v1
    :try_end_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3a .. :try_end_42} :catch_4b

    const-string v1, "setEpicenterBounds"

    :try_start_44
    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/l0;->I:Ljava/lang/reflect/Method;
    :try_end_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_44 .. :try_end_4a} :catch_4b

    goto :goto_50

    :catch_4b
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/support/v7/widget/l0;->e:I

    iput v0, p0, Landroid/support/v7/widget/l0;->f:I

    const/16 v0, 0x3ea

    iput v0, p0, Landroid/support/v7/widget/l0;->i:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/l0;->m:I

    iput-boolean v0, p0, Landroid/support/v7/widget/l0;->n:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/l0;->o:Z

    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/v7/widget/l0;->p:I

    iput v0, p0, Landroid/support/v7/widget/l0;->r:I

    new-instance v1, Landroid/support/v7/widget/l0$e;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/l0$e;-><init>(Landroid/support/v7/widget/l0;)V

    iput-object v1, p0, Landroid/support/v7/widget/l0;->x:Landroid/support/v7/widget/l0$e;

    new-instance v1, Landroid/support/v7/widget/l0$d;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/l0$d;-><init>(Landroid/support/v7/widget/l0;)V

    iput-object v1, p0, Landroid/support/v7/widget/l0;->y:Landroid/support/v7/widget/l0$d;

    new-instance v1, Landroid/support/v7/widget/l0$c;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/l0$c;-><init>(Landroid/support/v7/widget/l0;)V

    iput-object v1, p0, Landroid/support/v7/widget/l0;->z:Landroid/support/v7/widget/l0$c;

    new-instance v1, Landroid/support/v7/widget/l0$a;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/l0$a;-><init>(Landroid/support/v7/widget/l0;)V

    iput-object v1, p0, Landroid/support/v7/widget/l0;->A:Landroid/support/v7/widget/l0$a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/l0;->C:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/widget/l0;->b:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/support/v7/widget/l0;->B:Landroid/os/Handler;

    sget-object v1, Lb/b/d/a/j;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lb/b/d/a/j;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/l0;->g:I

    sget v2, Lb/b/d/a/j;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/l0;->h:I

    iget v0, p0, Landroid/support/v7/widget/l0;->h:I

    const/4 v2, 0x1

    if-eqz v0, :cond_67

    iput-boolean v2, p0, Landroid/support/v7/widget/l0;->j:Z

    :cond_67
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/support/v7/widget/q;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    iget-object p1, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroid/support/v7/widget/f0;
    .registers 4

    new-instance v0, Landroid/support/v7/widget/f0;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/f0;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public a()V
    .registers 16

    iget-object v0, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, "ListPopupWindow"

    if-nez v0, :cond_bb

    iget-object v0, p0, Landroid/support/v7/widget/l0;->b:Landroid/content/Context;

    new-instance v6, Landroid/support/v7/widget/j0;

    invoke-direct {v6, p0}, Landroid/support/v7/widget/j0;-><init>(Landroid/support/v7/widget/l0;)V

    iget-boolean v6, p0, Landroid/support/v7/widget/l0;->E:Z

    xor-int/2addr v6, v2

    invoke-virtual {p0, v0, v6}, Landroid/support/v7/widget/l0;->a(Landroid/content/Context;Z)Landroid/support/v7/widget/f0;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    iget-object v6, p0, Landroid/support/v7/widget/l0;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_24

    iget-object v7, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/m0;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_24
    iget-object v6, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    iget-object v7, p0, Landroid/support/v7/widget/l0;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    iget-object v7, p0, Landroid/support/v7/widget/l0;->v:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v6, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v6, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    iget-object v6, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    new-instance v7, Landroid/support/v7/widget/k0;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/k0;-><init>(Landroid/support/v7/widget/l0;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v6, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    iget-object v7, p0, Landroid/support/v7/widget/l0;->z:Landroid/support/v7/widget/l0$c;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v6, p0, Landroid/support/v7/widget/l0;->w:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v6, :cond_56

    iget-object v7, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_56
    iget-object v6, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    iget-object v7, p0, Landroid/support/v7/widget/l0;->q:Landroid/view/View;

    if-eqz v7, :cond_b4

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {v0, v3, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v9, p0, Landroid/support/v7/widget/l0;->r:I

    if-eqz v9, :cond_8b

    if-eq v9, v2, :cond_84

    const-string v0, "Invalid hint position "

    invoke-static {v0}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Landroid/support/v7/widget/l0;->r:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_84
    invoke-virtual {v8, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_91

    :cond_8b
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_91
    iget v0, p0, Landroid/support/v7/widget/l0;->f:I

    if-ltz v0, :cond_98

    const/high16 v6, -0x80000000

    goto :goto_9a

    :cond_98
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_9a
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v7, v0, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v0

    move v0, v6

    move-object v6, v8

    goto :goto_b5

    :cond_b4
    const/4 v0, 0x0

    :goto_b5
    iget-object v7, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_d9

    :cond_bb
    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/widget/l0;->q:Landroid/view/View;

    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v7

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v6

    goto :goto_d9

    :cond_d8
    const/4 v0, 0x0

    :goto_d9
    iget-object v6, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_f5

    iget-object v7, p0, Landroid/support/v7/widget/l0;->C:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v6, p0, Landroid/support/v7/widget/l0;->C:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget-boolean v8, p0, Landroid/support/v7/widget/l0;->j:Z

    if-nez v8, :cond_fb

    neg-int v7, v7

    iput v7, p0, Landroid/support/v7/widget/l0;->h:I

    goto :goto_fb

    :cond_f5
    iget-object v6, p0, Landroid/support/v7/widget/l0;->C:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v6, 0x0

    :cond_fb
    :goto_fb
    iget-object v7, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_106

    const/4 v7, 0x1

    goto :goto_107

    :cond_106
    const/4 v7, 0x0

    :goto_107
    iget-object v9, p0, Landroid/support/v7/widget/l0;->t:Landroid/view/View;

    iget v10, p0, Landroid/support/v7/widget/l0;->h:I

    sget-object v11, Landroid/support/v7/widget/l0;->H:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_132

    :try_start_10f
    iget-object v12, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v13, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_12c} :catch_12d

    goto :goto_138

    :catch_12d
    const-string v7, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_132
    iget-object v7, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9, v10}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v7

    :goto_138
    iget-boolean v9, p0, Landroid/support/v7/widget/l0;->n:Z

    const/4 v10, -0x2

    if-nez v9, :cond_19a

    iget v9, p0, Landroid/support/v7/widget/l0;->e:I

    if-ne v9, v3, :cond_142

    goto :goto_19a

    :cond_142
    iget v9, p0, Landroid/support/v7/widget/l0;->f:I

    if-eq v9, v10, :cond_168

    const/high16 v1, 0x40000000  # 2.0f

    if-eq v9, v3, :cond_14f

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_180

    :cond_14f
    iget-object v9, p0, Landroid/support/v7/widget/l0;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, p0, Landroid/support/v7/widget/l0;->C:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v11

    sub-int/2addr v9, v12

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_180

    :cond_168
    iget-object v9, p0, Landroid/support/v7/widget/l0;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, p0, Landroid/support/v7/widget/l0;->C:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v11

    sub-int/2addr v9, v12

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_180
    iget-object v9, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    sub-int/2addr v7, v0

    invoke-virtual {v9, v1, v7, v3}, Landroid/support/v7/widget/m0;->a(III)I

    move-result v1

    if-lez v1, :cond_198

    iget-object v7, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v7

    iget-object v9, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v7

    add-int/2addr v9, v6

    add-int/2addr v0, v9

    :cond_198
    add-int/2addr v1, v0

    goto :goto_19c

    :cond_19a
    :goto_19a
    add-int v1, v7, v6

    :goto_19c
    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    if-ne v0, v8, :cond_1a6

    const/4 v0, 0x1

    goto :goto_1a7

    :cond_1a6
    const/4 v0, 0x0

    :goto_1a7
    iget-object v6, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    iget v7, p0, Landroid/support/v7/widget/l0;->i:I

    invoke-static {v6, v7}, Landroid/support/v4/widget/i;->a(Landroid/widget/PopupWindow;I)V

    iget-object v6, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_227

    iget-object v5, p0, Landroid/support/v7/widget/l0;->t:Landroid/view/View;

    invoke-static {v5}, Landroid/support/v4/view/n;->j(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1bf

    return-void

    :cond_1bf
    iget v5, p0, Landroid/support/v7/widget/l0;->f:I

    if-ne v5, v3, :cond_1c5

    const/4 v5, -0x1

    goto :goto_1cd

    :cond_1c5
    if-ne v5, v10, :cond_1cd

    iget-object v5, p0, Landroid/support/v7/widget/l0;->t:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    :cond_1cd
    :goto_1cd
    iget v6, p0, Landroid/support/v7/widget/l0;->e:I

    if-ne v6, v3, :cond_1fb

    if-eqz v0, :cond_1d4

    goto :goto_1d5

    :cond_1d4
    const/4 v1, -0x1

    :goto_1d5
    if-eqz v0, :cond_1e9

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    iget v6, p0, Landroid/support/v7/widget/l0;->f:I

    if-ne v6, v3, :cond_1df

    const/4 v3, -0x1

    goto :goto_1e0

    :cond_1df
    const/4 v3, 0x0

    :goto_1e0
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_1ff

    :cond_1e9
    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/l0;->f:I

    if-ne v4, v3, :cond_1f1

    const/4 v4, -0x1

    goto :goto_1f2

    :cond_1f1
    const/4 v4, 0x0

    :goto_1f2
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_1ff

    :cond_1fb
    if-ne v6, v10, :cond_1fe

    goto :goto_1ff

    :cond_1fe
    move v1, v6

    :goto_1ff
    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/support/v7/widget/l0;->o:Z

    if-nez v3, :cond_20a

    iget-boolean v3, p0, Landroid/support/v7/widget/l0;->n:Z

    if-nez v3, :cond_20a

    goto :goto_20b

    :cond_20a
    const/4 v2, 0x0

    :goto_20b
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/support/v7/widget/l0;->t:Landroid/view/View;

    iget v8, p0, Landroid/support/v7/widget/l0;->g:I

    iget v9, p0, Landroid/support/v7/widget/l0;->h:I

    if-gez v5, :cond_21b

    const/4 v5, -0x1

    const/4 v10, -0x1

    goto :goto_21c

    :cond_21b
    move v10, v5

    :goto_21c
    if-gez v1, :cond_221

    const/4 v1, -0x1

    const/4 v11, -0x1

    goto :goto_222

    :cond_221
    move v11, v1

    :goto_222
    invoke-virtual/range {v6 .. v11}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_2cb

    :cond_227
    iget v0, p0, Landroid/support/v7/widget/l0;->f:I

    if-ne v0, v3, :cond_22d

    const/4 v0, -0x1

    goto :goto_235

    :cond_22d
    if-ne v0, v10, :cond_235

    iget-object v0, p0, Landroid/support/v7/widget/l0;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_235
    :goto_235
    iget v6, p0, Landroid/support/v7/widget/l0;->e:I

    if-ne v6, v3, :cond_23b

    const/4 v1, -0x1

    goto :goto_23f

    :cond_23b
    if-ne v6, v10, :cond_23e

    goto :goto_23f

    :cond_23e
    move v1, v6

    :goto_23f
    iget-object v6, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget-object v0, Landroid/support/v7/widget/l0;->G:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_260

    :try_start_24d
    iget-object v1, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25a
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_25a} :catch_25b

    goto :goto_260

    :catch_25b
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_260
    :goto_260
    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/support/v7/widget/l0;->o:Z

    if-nez v1, :cond_26c

    iget-boolean v1, p0, Landroid/support/v7/widget/l0;->n:Z

    if-nez v1, :cond_26c

    const/4 v1, 0x1

    goto :goto_26d

    :cond_26c
    const/4 v1, 0x0

    :goto_26d
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/l0;->y:Landroid/support/v7/widget/l0$d;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/l0;->l:Z

    if-eqz v0, :cond_282

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/support/v7/widget/l0;->k:Z

    invoke-static {v0, v1}, Landroid/support/v4/widget/i;->a(Landroid/widget/PopupWindow;Z)V

    :cond_282
    sget-object v0, Landroid/support/v7/widget/l0;->I:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_298

    :try_start_286
    iget-object v1, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Landroid/support/v7/widget/l0;->D:Landroid/graphics/Rect;

    aput-object v7, v6, v4

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_291} :catch_292

    goto :goto_298

    :catch_292
    move-exception v0

    const-string v1, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_298
    :goto_298
    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/l0;->t:Landroid/view/View;

    iget v4, p0, Landroid/support/v7/widget/l0;->g:I

    iget v5, p0, Landroid/support/v7/widget/l0;->h:I

    iget v6, p0, Landroid/support/v7/widget/l0;->m:I

    invoke-static {v0, v1, v4, v5, v6}, Landroid/support/v4/widget/i;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    iget-object v0, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    iget-boolean v0, p0, Landroid/support/v7/widget/l0;->E:Z

    if-eqz v0, :cond_2b6

    iget-object v0, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    invoke-virtual {v0}, Landroid/support/v7/widget/f0;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2c0

    :cond_2b6
    iget-object v0, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    if-eqz v0, :cond_2c0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/f0;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    :cond_2c0
    iget-boolean v0, p0, Landroid/support/v7/widget/l0;->E:Z

    if-nez v0, :cond_2cb

    iget-object v0, p0, Landroid/support/v7/widget/l0;->B:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/l0;->A:Landroid/support/v7/widget/l0$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2cb
    :goto_2cb
    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/l0;->D:Landroid/graphics/Rect;

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/l0;->t:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/l0;->v:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/l0;->s:Landroid/database/DataSetObserver;

    if-nez v0, :cond_c

    new-instance v0, Landroid/support/v7/widget/l0$b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/l0$b;-><init>(Landroid/support/v7/widget/l0;)V

    iput-object v0, p0, Landroid/support/v7/widget/l0;->s:Landroid/database/DataSetObserver;

    goto :goto_13

    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/l0;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_13

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_13
    :goto_13
    iput-object p1, p0, Landroid/support/v7/widget/l0;->c:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/support/v7/widget/l0;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/support/v7/widget/l0;->s:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1e
    iget-object p1, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    if-eqz p1, :cond_27

    iget-object v0, p0, Landroid/support/v7/widget/l0;->c:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_27
    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iput-boolean p1, p0, Landroid/support/v7/widget/l0;->E:Z

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/l0;->t:Landroid/view/View;

    return-object v0
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Landroid/support/v7/widget/l0;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/widget/l0;->C:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Landroid/support/v7/widget/l0;->f:I

    goto :goto_1a

    :cond_18
    iput p1, p0, Landroid/support/v7/widget/l0;->f:I

    :goto_1a
    return-void
.end method

.method public b(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/l0;->l:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/l0;->k:Z

    return-void
.end method

.method public c()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/widget/l0;->m:I

    return-void
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/widget/l0;->g:I

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public dismiss()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Landroid/support/v7/widget/l0;->q:Landroid/view/View;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_18

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/l0;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/widget/l0;->d:Landroid/support/v7/widget/f0;

    iget-object v0, p0, Landroid/support/v7/widget/l0;->B:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/l0;->x:Landroid/support/v7/widget/l0$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public f()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/l0;->g:I

    return v0
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/widget/l0;->r:I

    return-void
.end method

.method public g()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/l0;->j:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, p0, Landroid/support/v7/widget/l0;->h:I

    return v0
.end method

.method public g(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/widget/l0;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/l0;->j:Z

    return-void
.end method

.method public h()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/l0;->f:I

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/l0;->E:Z

    return v0
.end method
