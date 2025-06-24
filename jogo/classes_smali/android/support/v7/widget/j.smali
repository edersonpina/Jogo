.class public final Landroid/support/v7/widget/j;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/j$a;,
        Landroid/support/v7/widget/j$d;,
        Landroid/support/v7/widget/j$b;,
        Landroid/support/v7/widget/j$c;
    }
.end annotation


# static fields
.field private static final h:Landroid/graphics/PorterDuff$Mode;

.field private static i:Landroid/support/v7/widget/j;

.field private static final j:Landroid/support/v7/widget/j$b;

.field private static final k:[I

.field private static final l:[I

.field private static final m:[I

.field private static final n:[I

.field private static final o:[I

.field private static final p:[I


# instance fields
.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lb/b/c/d/k<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lb/b/c/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/a<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/j$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lb/b/c/d/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/c/d/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lb/b/c/d/f<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private f:Landroid/util/TypedValue;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 10

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/j;->h:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/support/v7/widget/j$b;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v7/widget/j$b;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/j;->j:Landroid/support/v7/widget/j$b;

    const/4 v0, 0x3

    new-array v2, v0, [I

    sget v3, Lb/b/d/a/e;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lb/b/d/a/e;->abc_textfield_default_mtrl_alpha:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Lb/b/d/a/e;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sput-object v2, Landroid/support/v7/widget/j;->k:[I

    const/4 v2, 0x7

    new-array v3, v2, [I

    sget v7, Lb/b/d/a/e;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Lb/b/d/a/e;->abc_seekbar_tick_mark_material:I

    aput v7, v3, v5

    sget v7, Lb/b/d/a/e;->abc_ic_menu_share_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Lb/b/d/a/e;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v7, v3, v0

    sget v7, Lb/b/d/a/e;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v8, 0x4

    aput v7, v3, v8

    sget v7, Lb/b/d/a/e;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v9, 0x5

    aput v7, v3, v9

    sget v7, Lb/b/d/a/e;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v7, v3, v1

    sput-object v3, Landroid/support/v7/widget/j;->l:[I

    const/16 v3, 0xa

    new-array v3, v3, [I

    sget v7, Lb/b/d/a/e;->abc_textfield_activated_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Lb/b/d/a/e;->abc_textfield_search_activated_mtrl_alpha:I

    aput v7, v3, v5

    sget v7, Lb/b/d/a/e;->abc_cab_background_top_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Lb/b/d/a/e;->abc_text_cursor_material:I

    aput v7, v3, v0

    sget v7, Lb/b/d/a/e;->abc_text_select_handle_left_mtrl_dark:I

    aput v7, v3, v8

    sget v7, Lb/b/d/a/e;->abc_text_select_handle_middle_mtrl_dark:I

    aput v7, v3, v9

    sget v7, Lb/b/d/a/e;->abc_text_select_handle_right_mtrl_dark:I

    aput v7, v3, v1

    sget v1, Lb/b/d/a/e;->abc_text_select_handle_left_mtrl_light:I

    aput v1, v3, v2

    sget v1, Lb/b/d/a/e;->abc_text_select_handle_middle_mtrl_light:I

    const/16 v2, 0x8

    aput v1, v3, v2

    sget v1, Lb/b/d/a/e;->abc_text_select_handle_right_mtrl_light:I

    const/16 v2, 0x9

    aput v1, v3, v2

    sput-object v3, Landroid/support/v7/widget/j;->m:[I

    new-array v0, v0, [I

    sget v1, Lb/b/d/a/e;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v4

    sget v1, Lb/b/d/a/e;->abc_cab_background_internal_bg:I

    aput v1, v0, v5

    sget v1, Lb/b/d/a/e;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v6

    sput-object v0, Landroid/support/v7/widget/j;->n:[I

    new-array v0, v6, [I

    sget v1, Lb/b/d/a/e;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Lb/b/d/a/e;->abc_textfield_search_material:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/j;->o:[I

    new-array v0, v6, [I

    sget v1, Lb/b/d/a/e;->abc_btn_check_material:I

    aput v1, v0, v4

    sget v1, Lb/b/d/a/e;->abc_btn_radio_material:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/j;->p:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/j;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/j;->e:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static a(Landroid/util/TypedValue;)J
    .registers 5

    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    sget-object v0, Landroid/support/v7/widget/j;->j:Landroid/support/v7/widget/j$b;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/j$b;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v1, Landroid/support/v7/widget/j;->j:Landroid/support/v7/widget/j$b;

    invoke-virtual {v1, p0, p1, v0}, Landroid/support/v7/widget/j$b;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    :cond_12
    return-object v0
.end method

.method private a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 10

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/j;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-static {p4}, Landroid/support/v7/widget/e0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    :cond_11
    invoke-static {p4}, Lb/b/c/a/h/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p4, v0}, Lb/b/c/a/h/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    sget p1, Lb/b/d/a/e;->abc_switch_thumb_material:I

    if-ne p2, p1, :cond_1e

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_1e
    if-eqz v1, :cond_a9

    invoke-static {p4, v1}, Lb/b/c/a/h/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_a9

    :cond_25
    sget v0, Lb/b/d/a/e;->abc_seekbar_track_material:I

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v0, :cond_62

    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget v0, Lb/b/d/a/a;->colorControlNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/support/v7/widget/j;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v0, v1}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget v0, Lb/b/d/a/a;->colorControlNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/support/v7/widget/j;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v0, v1}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lb/b/d/a/a;->colorControlActivated:I

    invoke-static {p1, p3}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Landroid/support/v7/widget/j;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, p1, p3}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_a9

    :cond_62
    sget v0, Lb/b/d/a/e;->abc_ratingbar_material:I

    if-eq p2, v0, :cond_79

    sget v0, Lb/b/d/a/e;->abc_ratingbar_indicator_material:I

    if-eq p2, v0, :cond_79

    sget v0, Lb/b/d/a/e;->abc_ratingbar_small_material:I

    if-ne p2, v0, :cond_6f

    goto :goto_79

    :cond_6f
    invoke-static {p1, p2, p4}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_a9

    if-eqz p3, :cond_a9

    move-object p4, v1

    goto :goto_a9

    :cond_79
    :goto_79
    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget v0, Lb/b/d/a/a;->colorControlNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/t0;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/support/v7/widget/j;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v0, v1}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget v0, Lb/b/d/a/a;->colorControlActivated:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/support/v7/widget/j;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v0, v1}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lb/b/d/a/a;->colorControlActivated:I

    invoke-static {p1, p3}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Landroid/support/v7/widget/j;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, p1, p3}, Landroid/support/v7/widget/j;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :cond_a9
    :goto_a9
    return-object p4
.end method

.method private a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 8

    iget-object v0, p0, Landroid/support/v7/widget/j;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/support/v7/widget/j;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/d/f;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    monitor-exit v0

    return-object v2

    :cond_10
    invoke-virtual {v1, p2, p3}, Lb/b/c/d/f;->b(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v3, :cond_2a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2a
    invoke-virtual {v1, p2, p3}, Lb/b/c/d/f;->a(J)V

    :cond_2d
    monitor-exit v0

    return-object v2

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public static a()Landroid/support/v7/widget/j;
    .registers 3

    sget-object v0, Landroid/support/v7/widget/j;->i:Landroid/support/v7/widget/j;

    if-nez v0, :cond_27

    new-instance v0, Landroid/support/v7/widget/j;

    invoke-direct {v0}, Landroid/support/v7/widget/j;-><init>()V

    sput-object v0, Landroid/support/v7/widget/j;->i:Landroid/support/v7/widget/j;

    sget-object v0, Landroid/support/v7/widget/j;->i:Landroid/support/v7/widget/j;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_27

    new-instance v1, Landroid/support/v7/widget/j$d;

    invoke-direct {v1}, Landroid/support/v7/widget/j$d;-><init>()V

    const-string v2, "vector"

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/j;->a(Ljava/lang/String;Landroid/support/v7/widget/j$c;)V

    new-instance v1, Landroid/support/v7/widget/j$a;

    invoke-direct {v1}, Landroid/support/v7/widget/j$a;-><init>()V

    const-string v2, "animated-vector"

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/j;->a(Ljava/lang/String;Landroid/support/v7/widget/j$c;)V

    :cond_27
    sget-object v0, Landroid/support/v7/widget/j;->i:Landroid/support/v7/widget/j;

    return-object v0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    invoke-static {p0}, Landroid/support/v7/widget/e0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_a
    if-nez p2, :cond_e

    sget-object p2, Landroid/support/v7/widget/j;->h:Landroid/graphics/PorterDuff$Mode;

    :cond_e
    invoke-static {p1, p2}, Landroid/support/v7/widget/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/w0;[I)V
    .registers 6

    invoke-static {p0}, Landroid/support/v7/widget/e0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_14

    const-string p0, "AppCompatDrawableManag"

    const-string p1, "Mutated drawable is not the same instance as the input."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget-boolean v0, p1, Landroid/support/v7/widget/w0;->d:Z

    if-nez v0, :cond_21

    iget-boolean v0, p1, Landroid/support/v7/widget/w0;->c:Z

    if-eqz v0, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_44

    :cond_21
    :goto_21
    iget-boolean v0, p1, Landroid/support/v7/widget/w0;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroid/support/v7/widget/w0;->a:Landroid/content/res/ColorStateList;

    goto :goto_2a

    :cond_29
    move-object v0, v1

    :goto_2a
    iget-boolean v2, p1, Landroid/support/v7/widget/w0;->c:Z

    if-eqz v2, :cond_31

    iget-object p1, p1, Landroid/support/v7/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_33

    :cond_31
    sget-object p1, Landroid/support/v7/widget/j;->h:Landroid/graphics/PorterDuff$Mode;

    :goto_33
    if-eqz v0, :cond_41

    if-nez p1, :cond_38

    goto :goto_41

    :cond_38
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-static {p2, p1}, Landroid/support/v7/widget/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    :cond_41
    :goto_41
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_44
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_4d

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4d
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/support/v7/widget/j$c;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/j;->b:Lb/b/c/d/a;

    if-nez v0, :cond_b

    new-instance v0, Lb/b/c/d/a;

    invoke-direct {v0}, Lb/b/c/d/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/j;->b:Lb/b/c/d/a;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/j;->b:Lb/b/c/d/a;

    invoke-virtual {v0, p1, p2}, Lb/b/c/d/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 9

    sget-object v0, Landroid/support/v7/widget/j;->h:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/support/v7/widget/j;->k:[I

    invoke-static {v1, p1}, Landroid/support/v7/widget/j;->a([II)Z

    move-result v1

    const v2, 0x1010031

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_15

    sget v2, Lb/b/d/a/a;->colorControlNormal:I

    :goto_12
    const/4 p1, 0x1

    const/4 v1, -0x1

    goto :goto_44

    :cond_15
    sget-object v1, Landroid/support/v7/widget/j;->m:[I

    invoke-static {v1, p1}, Landroid/support/v7/widget/j;->a([II)Z

    move-result v1

    if-eqz v1, :cond_20

    sget v2, Lb/b/d/a/a;->colorControlActivated:I

    goto :goto_12

    :cond_20
    sget-object v1, Landroid/support/v7/widget/j;->n:[I

    invoke-static {v1, p1}, Landroid/support/v7/widget/j;->a([II)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_12

    :cond_2b
    sget v1, Lb/b/d/a/e;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v1, :cond_3c

    const v2, 0x1010030

    const p1, 0x42233333  # 40.8f

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v1, p1

    const/4 p1, 0x1

    goto :goto_44

    :cond_3c
    sget v1, Lb/b/d/a/e;->abc_dialog_material_background:I

    if-ne p1, v1, :cond_41

    goto :goto_12

    :cond_41
    const/4 p1, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_44
    if-eqz p1, :cond_61

    invoke-static {p2}, Landroid/support/v7/widget/e0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_50
    invoke-static {p0, v2}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0, v0}, Landroid/support/v7/widget/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v1, v3, :cond_60

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_60
    return v5

    :cond_61
    return v4
.end method

.method private a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .registers 8

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_2b

    iget-object v0, p0, Landroid/support/v7/widget/j;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Landroid/support/v7/widget/j;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/d/f;

    if-nez v1, :cond_1d

    new-instance v1, Lb/b/c/d/f;

    invoke-direct {v1}, Lb/b/c/d/f;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/j;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, p3, p1}, Lb/b/c/d/f;->a(JLjava/lang/Object;)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_28

    throw p1

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method private static a([II)Z
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    if-ne v3, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method private c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 8

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, Lb/b/d/a/a;->colorControlHighlight:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lb/b/d/a/a;->colorButtonNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/t0;->a(Landroid/content/Context;I)I

    move-result p1

    sget-object v3, Landroid/support/v7/widget/t0;->b:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p1, v0, v4

    sget-object p1, Landroid/support/v7/widget/t0;->d:[I

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v2, p2}, Lb/b/c/a/a;->a(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Landroid/support/v7/widget/t0;->c:[I

    const/4 v3, 0x2

    aput-object p1, v1, v3

    invoke-static {v2, p2}, Lb/b/c/a/a;->a(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Landroid/support/v7/widget/t0;->f:[I

    const/4 v2, 0x3

    aput-object p1, v1, v2

    aput p2, v0, v2

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method private d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 13

    iget-object v0, p0, Landroid/support/v7/widget/j;->b:Lb/b/c/d/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_b9

    invoke-virtual {v0}, Lb/b/c/d/j;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Landroid/support/v7/widget/j;->c:Lb/b/c/d/k;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_28

    invoke-virtual {v0, p2}, Lb/b/c/d/k;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    if-eqz v0, :cond_31

    iget-object v3, p0, Landroid/support/v7/widget/j;->b:Lb/b/c/d/a;

    invoke-virtual {v3, v0}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_31

    :cond_27
    return-object v1

    :cond_28
    new-instance v0, Lb/b/c/d/k;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lb/b/c/d/k;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/j;->c:Lb/b/c/d/k;

    :cond_31
    iget-object v0, p0, Landroid/support/v7/widget/j;->f:Landroid/util/TypedValue;

    if-nez v0, :cond_3c

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/j;->f:Landroid/util/TypedValue;

    :cond_3c
    iget-object v0, p0, Landroid/support/v7/widget/j;->f:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    iget v6, v0, Landroid/util/TypedValue;->data:I

    int-to-long v6, v6

    or-long/2addr v4, v6

    invoke-direct {p0, p1, v4, v5}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_57

    return-object v6

    :cond_57
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_b1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b1

    :try_start_67
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    :goto_6f
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_79

    if-eq v8, v3, :cond_79

    goto :goto_6f

    :cond_79
    if-ne v8, v9, :cond_a1

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Landroid/support/v7/widget/j;->c:Lb/b/c/d/k;

    invoke-virtual {v8, p2, v3}, Lb/b/c/d/k;->a(ILjava/lang/Object;)V

    iget-object v8, p0, Landroid/support/v7/widget/j;->b:Lb/b/c/d/a;

    invoke-virtual {v8, v3}, Lb/b/c/d/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/j$c;

    if-eqz v3, :cond_96

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-interface {v3, p1, v1, v7, v8}, Landroid/support/v7/widget/j$c;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_96
    if-eqz v6, :cond_b1

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {p0, p1, v4, v5, v6}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_b1

    :cond_a1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_a9} :catch_a9

    :catch_a9
    move-exception p1

    const-string v0, "AppCompatDrawableManag"

    const-string v1, "Exception while inflating drawable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b1
    :goto_b1
    if-nez v6, :cond_b8

    iget-object p1, p0, Landroid/support/v7/widget/j;->c:Lb/b/c/d/k;

    invoke-virtual {p1, p2, v2}, Lb/b/c/d/k;->a(ILjava/lang/Object;)V

    :cond_b8
    return-object v6

    :cond_b9
    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 12

    iget-boolean v0, p0, Landroid/support/v7/widget/j;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    goto :goto_2b

    :cond_7
    iput-boolean v1, p0, Landroid/support/v7/widget/j;->g:Z

    sget v0, Lb/b/d/a/e;->abc_vector_test:I

    invoke-virtual {p0, p1, v0, v2}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8a

    instance-of v3, v0, Lb/b/b/a/j;

    if-nez v3, :cond_28

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    :goto_29
    if-eqz v0, :cond_8a

    :goto_2b
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/j;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_78

    iget-object v0, p0, Landroid/support/v7/widget/j;->f:Landroid/util/TypedValue;

    if-nez v0, :cond_3c

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/j;->f:Landroid/util/TypedValue;

    :cond_3c
    iget-object v0, p0, Landroid/support/v7/widget/j;->f:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v0}, Landroid/support/v7/widget/j;->a(Landroid/util/TypedValue;)J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_51

    :cond_4f
    :goto_4f
    move-object v0, v5

    goto :goto_78

    :cond_51
    sget v6, Lb/b/d/a/e;->abc_cab_background_top_material:I

    if-ne p2, v6, :cond_6d

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    sget v7, Lb/b/d/a/e;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, p1, v7, v2}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v2

    sget v7, Lb/b/d/a/e;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, p1, v7, v2}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_6d
    if-eqz v5, :cond_4f

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {p0, p1, v3, v4, v5}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_4f

    :cond_78
    :goto_78
    if-nez v0, :cond_7e

    invoke-static {p1, p2}, Landroid/support/v4/content/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_7e
    if-eqz v0, :cond_84

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_84
    if-eqz v0, :cond_89

    invoke-static {v0}, Landroid/support/v7/widget/e0;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_89
    return-object v0

    :cond_8a
    iput-boolean v2, p0, Landroid/support/v7/widget/j;->g:Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_95

    :goto_94
    throw p1

    :goto_95
    goto :goto_94
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/j;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/support/v7/widget/j;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/d/f;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lb/b/c/d/f;->a()V

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 10

    iget-object v0, p0, Landroid/support/v7/widget/j;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/d/k;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p2}, Lb/b/c/d/k;->a(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_14
    if-nez v1, :cond_12b

    sget v0, Lb/b/d/a/e;->abc_edit_text_material:I

    if-ne p2, v0, :cond_22

    sget v0, Lb/b/d/a/c;->abc_tint_edittext:I

    invoke-static {p1, v0}, Lb/b/d/b/a/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_105

    :cond_22
    sget v0, Lb/b/d/a/e;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v0, :cond_2e

    sget v0, Lb/b/d/a/c;->abc_tint_switch_track:I

    invoke-static {p1, v0}, Lb/b/d/b/a/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_105

    :cond_2e
    sget v0, Lb/b/d/a/e;->abc_switch_thumb_material:I

    const/4 v2, 0x0

    if-ne p2, v0, :cond_97

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v3, Lb/b/d/a/a;->colorSwitchThumbNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/t0;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_6b

    sget-object v6, Landroid/support/v7/widget/t0;->b:[I

    aput-object v6, v1, v2

    aget-object v6, v1, v2

    invoke-virtual {v3, v6, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    aput v6, v0, v2

    sget-object v2, Landroid/support/v7/widget/t0;->e:[I

    aput-object v2, v1, v5

    sget v2, Lb/b/d/a/a;->colorControlActivated:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v5

    sget-object v2, Landroid/support/v7/widget/t0;->f:[I

    aput-object v2, v1, v4

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v0, v4

    goto :goto_8f

    :cond_6b
    sget-object v3, Landroid/support/v7/widget/t0;->b:[I

    aput-object v3, v1, v2

    sget v3, Lb/b/d/a/a;->colorSwitchThumbNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/t0;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v2

    sget-object v2, Landroid/support/v7/widget/t0;->e:[I

    aput-object v2, v1, v5

    sget v2, Lb/b/d/a/a;->colorControlActivated:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v5

    sget-object v2, Landroid/support/v7/widget/t0;->f:[I

    aput-object v2, v1, v4

    sget v2, Lb/b/d/a/a;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v4

    :goto_8f
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v1, v2

    goto/16 :goto_105

    :cond_97
    sget v0, Lb/b/d/a/e;->abc_btn_default_mtrl_shape:I

    if-ne p2, v0, :cond_a6

    sget v0, Lb/b/d/a/a;->colorButtonNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/j;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_105

    :cond_a6
    sget v0, Lb/b/d/a/e;->abc_btn_borderless_material:I

    if-ne p2, v0, :cond_af

    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/j;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_105

    :cond_af
    sget v0, Lb/b/d/a/e;->abc_btn_colored_material:I

    if-ne p2, v0, :cond_be

    sget v0, Lb/b/d/a/a;->colorAccent:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/t0;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/j;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_105

    :cond_be
    sget v0, Lb/b/d/a/e;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v0, :cond_ff

    sget v0, Lb/b/d/a/e;->abc_spinner_textfield_background_material:I

    if-ne p2, v0, :cond_c7

    goto :goto_ff

    :cond_c7
    sget-object v0, Landroid/support/v7/widget/j;->l:[I

    invoke-static {v0, p2}, Landroid/support/v7/widget/j;->a([II)Z

    move-result v0

    if-eqz v0, :cond_d6

    sget v0, Lb/b/d/a/a;->colorControlNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/t0;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_105

    :cond_d6
    sget-object v0, Landroid/support/v7/widget/j;->o:[I

    invoke-static {v0, p2}, Landroid/support/v7/widget/j;->a([II)Z

    move-result v0

    if-eqz v0, :cond_e5

    sget v0, Lb/b/d/a/c;->abc_tint_default:I

    invoke-static {p1, v0}, Lb/b/d/b/a/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_105

    :cond_e5
    sget-object v0, Landroid/support/v7/widget/j;->p:[I

    invoke-static {v0, p2}, Landroid/support/v7/widget/j;->a([II)Z

    move-result v0

    if-eqz v0, :cond_f4

    sget v0, Lb/b/d/a/c;->abc_tint_btn_checkable:I

    invoke-static {p1, v0}, Lb/b/d/b/a/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_105

    :cond_f4
    sget v0, Lb/b/d/a/e;->abc_seekbar_thumb_material:I

    if-ne p2, v0, :cond_105

    sget v0, Lb/b/d/a/c;->abc_tint_seek_thumb:I

    invoke-static {p1, v0}, Lb/b/d/b/a/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_105

    :cond_ff
    :goto_ff
    sget v0, Lb/b/d/a/c;->abc_tint_spinner:I

    invoke-static {p1, v0}, Lb/b/d/b/a/b;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :cond_105
    :goto_105
    if-eqz v1, :cond_12b

    iget-object v0, p0, Landroid/support/v7/widget/j;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_112

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/j;->a:Ljava/util/WeakHashMap;

    :cond_112
    iget-object v0, p0, Landroid/support/v7/widget/j;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/d/k;

    if-nez v0, :cond_128

    new-instance v0, Lb/b/c/d/k;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lb/b/c/d/k;-><init>(I)V

    iget-object v2, p0, Landroid/support/v7/widget/j;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_128
    invoke-virtual {v0, p2, v1}, Lb/b/c/d/k;->a(ILjava/lang/Object;)V

    :cond_12b
    return-object v1
.end method
