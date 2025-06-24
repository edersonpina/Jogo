.class Landroid/support/v7/app/AppCompatDelegateImplV9;
.super Landroid/support/v7/app/n;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/menu/h$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV9$d;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$b;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$e;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$c;
    }
.end annotation


# static fields
.field private static final R:Z


# instance fields
.field private A:Z

.field private B:Landroid/view/ViewGroup;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

.field private I:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

.field private J:Z

.field K:Z

.field L:I

.field private final M:Ljava/lang/Runnable;

.field private N:Z

.field private O:Landroid/graphics/Rect;

.field private P:Landroid/graphics/Rect;

.field private Q:Landroid/support/v7/app/y;

.field private s:Landroid/support/v7/widget/c0;

.field private t:Landroid/support/v7/app/AppCompatDelegateImplV9$b;

.field private u:Landroid/support/v7/app/AppCompatDelegateImplV9$e;

.field v:Lb/b/d/d/b;

.field w:Landroid/support/v7/widget/ActionBarContextView;

.field x:Landroid/widget/PopupWindow;

.field y:Ljava/lang/Runnable;

.field z:Landroid/support/v4/view/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->R:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/n;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    new-instance p1, Landroid/support/v7/app/AppCompatDelegateImplV9$a;

    invoke-direct {p1, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$a;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->M:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 16

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-nez v0, :cond_161

    invoke-virtual {p0}, Landroid/support/v7/app/n;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_161

    :cond_c
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_29

    return-void

    :cond_29
    invoke-virtual {p0}, Landroid/support/v7/app/n;->i()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    return-void

    :cond_3d
    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4a

    return-void

    :cond_4a
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_51

    return-void

    :cond_51
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_6d

    iget-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->q:Z

    if-eqz p2, :cond_5c

    goto :goto_6d

    :cond_5c
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    if-eqz p2, :cond_13f

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_13f

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v3, :cond_13f

    const/4 v6, -0x1

    goto/16 :goto_140

    :cond_6d
    :goto_6d
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_8a

    invoke-virtual {p0}, Landroid/support/v7/app/n;->g()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a(Landroid/content/Context;)V

    new-instance p2, Landroid/support/v7/app/AppCompatDelegateImplV9$d;

    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->l:Landroid/content/Context;

    invoke-direct {p2, p0, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$d;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/content/Context;)V

    iput-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    iput p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->c:I

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_99

    return-void

    :cond_8a
    iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->q:Z

    if-eqz v3, :cond_99

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_99

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_99
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    if-eqz p2, :cond_a0

    iput-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    goto :goto_e3

    :cond_a0
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-nez p2, :cond_a5

    goto :goto_e5

    :cond_a5
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->u:Landroid/support/v7/app/AppCompatDelegateImplV9$e;

    if-nez p2, :cond_b0

    new-instance p2, Landroid/support/v7/app/AppCompatDelegateImplV9$e;

    invoke-direct {p2, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$e;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->u:Landroid/support/v7/app/AppCompatDelegateImplV9$e;

    :cond_b0
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->u:Landroid/support/v7/app/AppCompatDelegateImplV9$e;

    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-nez v3, :cond_b8

    const/4 p2, 0x0

    goto :goto_db

    :cond_b8
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->k:Landroid/support/v7/view/menu/f;

    if-nez v3, :cond_d3

    new-instance v3, Landroid/support/v7/view/menu/f;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->l:Landroid/content/Context;

    sget v6, Lb/b/d/a/g;->abc_list_menu_item_layout:I

    invoke-direct {v3, v5, v6}, Landroid/support/v7/view/menu/f;-><init>(Landroid/content/Context;I)V

    iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->k:Landroid/support/v7/view/menu/f;

    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->k:Landroid/support/v7/view/menu/f;

    invoke-virtual {v3, p2}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/p$a;)V

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->k:Landroid/support/v7/view/menu/f;

    invoke-virtual {p2, v3}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/p;)V

    :cond_d3
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->k:Landroid/support/v7/view/menu/f;

    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2, v3}, Landroid/support/v7/view/menu/f;->a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/q;

    move-result-object p2

    :goto_db
    check-cast p2, Landroid/view/View;

    iput-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    if-eqz p2, :cond_e5

    :goto_e3
    const/4 p2, 0x1

    goto :goto_e6

    :cond_e5
    :goto_e5
    const/4 p2, 0x0

    :goto_e6
    if-eqz p2, :cond_161

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    if-nez p2, :cond_ed

    goto :goto_100

    :cond_ed
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    if-eqz p2, :cond_f2

    goto :goto_fe

    :cond_f2
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->k:Landroid/support/v7/view/menu/f;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/f;->a()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_100

    :goto_fe
    const/4 p2, 0x1

    goto :goto_101

    :cond_100
    :goto_100
    const/4 p2, 0x0

    :goto_101
    if-nez p2, :cond_104

    goto :goto_161

    :cond_104
    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_111

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_111
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->b:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_12b

    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_12b

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12b
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_13f

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_13f
    const/4 v6, -0x2

    :goto_140
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->n:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->d:I

    iget v9, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->e:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->c:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->f:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    :cond_161
    :goto_161
    return-void
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    if-nez v0, :cond_12

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/view/menu/h;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_1a
    if-eqz v1, :cond_28

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_28

    iget-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-nez p3, :cond_28

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    :cond_28
    return v1
.end method

.method private b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 13

    invoke-virtual {p0}, Landroid/support/v7/app/n;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    return v2

    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->I:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v0, :cond_17

    if-eq v0, p1, :cond_17

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/app/n;->i()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_25

    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    :cond_25
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_30

    if-ne v3, v4, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v3, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v3, 0x1

    :goto_31
    if-eqz v3, :cond_3a

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-eqz v5, :cond_3a

    invoke-interface {v5}, Landroid/support/v7/widget/c0;->c()V

    :cond_3a
    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    if-nez v5, :cond_143

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    const/4 v6, 0x0

    if-eqz v5, :cond_47

    iget-boolean v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->r:Z

    if-eqz v5, :cond_f5

    :cond_47
    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-nez v5, :cond_bb

    iget-object v5, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    iget v7, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    if-eqz v7, :cond_53

    if-ne v7, v4, :cond_aa

    :cond_53
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-eqz v4, :cond_aa

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Lb/b/d/a/a;->actionBarTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_7f

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v9, Lb/b/d/a/a;->actionBarWidgetTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_85

    :cond_7f
    sget v8, Lb/b/d/a/a;->actionBarWidgetTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    :goto_85
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_9b

    if-nez v8, :cond_96

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_96
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_9b
    if-eqz v8, :cond_aa

    new-instance v4, Lb/b/d/d/d;

    invoke-direct {v4, v5, v1}, Lb/b/d/d/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lb/b/d/d/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_ab

    :cond_aa
    move-object v4, v5

    :goto_ab
    new-instance v5, Landroid/support/v7/view/menu/h;

    invoke-direct {v5, v4}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    invoke-virtual {p1, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a(Landroid/support/v7/view/menu/h;)V

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-nez v4, :cond_bb

    return v1

    :cond_bb
    if-eqz v3, :cond_d5

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-eqz v4, :cond_d5

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->t:Landroid/support/v7/app/AppCompatDelegateImplV9$b;

    if-nez v4, :cond_cc

    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV9$b;

    invoke-direct {v4, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$b;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->t:Landroid/support/v7/app/AppCompatDelegateImplV9$b;

    :cond_cc
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->t:Landroid/support/v7/app/AppCompatDelegateImplV9$b;

    invoke-interface {v4, v5, v7}, Landroid/support/v7/widget/c0;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/p$a;)V

    :cond_d5
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->p()V

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_f3

    invoke-virtual {p1, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a(Landroid/support/v7/view/menu/h;)V

    if-eqz v3, :cond_f2

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-eqz p1, :cond_f2

    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->t:Landroid/support/v7/app/AppCompatDelegateImplV9$b;

    invoke-interface {p1, v6, p2}, Landroid/support/v7/widget/c0;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/p$a;)V

    :cond_f2
    return v1

    :cond_f3
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->r:Z

    :cond_f5
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->p()V

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_105

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v5, v4}, Landroid/support/v7/view/menu/h;->a(Landroid/os/Bundle;)V

    iput-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->s:Landroid/os/Bundle;

    :cond_105
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_120

    if-eqz v3, :cond_11a

    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-eqz p2, :cond_11a

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->t:Landroid/support/v7/app/AppCompatDelegateImplV9$b;

    invoke-interface {p2, v6, v0}, Landroid/support/v7/widget/c0;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/p$a;)V

    :cond_11a
    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->o()V

    return v1

    :cond_120
    if-eqz p2, :cond_127

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_128

    :cond_127
    const/4 p2, -0x1

    :goto_128
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_134

    const/4 p2, 0x1

    goto :goto_135

    :cond_134
    const/4 p2, 0x0

    :goto_135
    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->p:Z

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->p:Z

    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/h;->setQwertyMode(Z)V

    iget-object p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/h;->o()V

    :cond_143
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->n:Z

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->I:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    return v2
.end method

.method private g(I)V
    .registers 4

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->L:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->L:I

    iget-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->K:Z

    if-nez p1, :cond_19

    iget-object p1, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->M:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->K:Z

    :cond_19
    return-void
.end method

.method private o()V
    .registers 10

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->A:Z

    if-nez v0, :cond_253

    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    sget-object v1, Lb/b/d/a/j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lb/b/d/a/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_248

    sget v1, Lb/b/d/a/j;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v3, 0x6c

    const/4 v4, 0x1

    if-eqz v1, :cond_24

    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(I)Z

    goto :goto_2f

    :cond_24
    sget v1, Lb/b/d/a/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p0, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(I)Z

    :cond_2f
    :goto_2f
    sget v1, Lb/b/d/a/j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v5, 0x6d

    if-eqz v1, :cond_3c

    invoke-virtual {p0, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(I)Z

    :cond_3c
    sget v1, Lb/b/d/a/j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_49

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(I)Z

    :cond_49
    sget v1, Lb/b/d/a/j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/n;->l:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/app/n;->m:Z

    const/4 v6, 0x0

    if-nez v1, :cond_d7

    iget-boolean v1, p0, Landroid/support/v7/app/n;->l:Z

    if-eqz v1, :cond_76

    sget v1, Lb/b/d/a/g;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v2, p0, Landroid/support/v7/app/n;->j:Z

    iput-boolean v2, p0, Landroid/support/v7/app/n;->i:Z

    goto/16 :goto_106

    :cond_76
    iget-boolean v0, p0, Landroid/support/v7/app/n;->i:Z

    if-eqz v0, :cond_d5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v7, Lb/b/d/a/a;->actionBarTheme:I

    invoke-virtual {v1, v7, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_96

    new-instance v1, Lb/b/d/d/d;

    iget-object v7, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-direct {v1, v7, v0}, Lb/b/d/d/d;-><init>(Landroid/content/Context;I)V

    goto :goto_98

    :cond_96
    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    :goto_98
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lb/b/d/a/g;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lb/b/d/a/f;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/c0;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    invoke-virtual {p0}, Landroid/support/v7/app/n;->i()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/support/v7/widget/c0;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Landroid/support/v7/app/n;->j:Z

    if-eqz v1, :cond_c0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    invoke-interface {v1, v5}, Landroid/support/v7/widget/c0;->a(I)V

    :cond_c0
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->E:Z

    if-eqz v1, :cond_ca

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/support/v7/widget/c0;->a(I)V

    :cond_ca
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->F:Z

    if-eqz v1, :cond_106

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    const/4 v5, 0x5

    invoke-interface {v1, v5}, Landroid/support/v7/widget/c0;->a(I)V

    goto :goto_106

    :cond_d5
    move-object v0, v6

    goto :goto_106

    :cond_d7
    iget-boolean v1, p0, Landroid/support/v7/app/n;->k:Z

    if-eqz v1, :cond_e4

    sget v1, Lb/b/d/a/g;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_ec

    :cond_e4
    sget v1, Lb/b/d/a/g;->abc_screen_simple:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_ec
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_fb

    new-instance v1, Landroid/support/v7/app/s;

    invoke-direct {v1, p0}, Landroid/support/v7/app/s;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/support/v4/view/k;)V

    goto :goto_106

    :cond_fb
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/g0;

    new-instance v5, Landroid/support/v7/app/t;

    invoke-direct {v5, p0}, Landroid/support/v7/app/t;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-interface {v1, v5}, Landroid/support/v7/widget/g0;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/g0$a;)V

    :cond_106
    :goto_106
    if-eqz v0, :cond_206

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-nez v1, :cond_116

    sget v1, Lb/b/d/a/f;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/widget/TextView;

    :cond_116
    invoke-static {v0}, Landroid/support/v7/widget/f1;->b(Landroid/view/View;)V

    sget v1, Lb/b/d/a/f;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v5, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_14f

    :goto_12e
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_13f

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_12e

    :cond_13f
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    instance-of v8, v5, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_14f

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_14f
    iget-object v5, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {v5, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v5, Landroid/support/v7/app/u;

    invoke-direct {v5, p0}, Landroid/support/v7/app/u;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$a;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/support/v7/app/n;->h()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16b

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Ljava/lang/CharSequence;)V

    :cond_16b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v1, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/support/v7/widget/ContentFrameLayout;->a(IIII)V

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    sget-object v5, Lb/b/d/a/j;->AppCompatTheme:[I

    invoke-virtual {v1, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v5, Lb/b/d/a/j;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v5, Lb/b/d/a/j;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v5, Lb/b/d/a/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1b7

    sget v5, Lb/b/d/a/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1b7
    sget v5, Lb/b/d/a/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1c8

    sget v5, Lb/b/d/a/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1c8
    sget v5, Lb/b/d/a/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1d9

    sget v5, Lb/b/d/a/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1d9
    sget v5, Lb/b/d/a/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1ea

    sget v5, Lb/b/d/a/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1ea
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iput-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->A:Z

    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/n;->k()Z

    move-result v1

    if-nez v1, :cond_253

    if-eqz v0, :cond_202

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_253

    :cond_202
    invoke-direct {p0, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->g(I)V

    goto :goto_253

    :cond_206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, Ld/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/n;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/n;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/n;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/n;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/app/n;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_248
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_253
    :goto_253
    return-void
.end method

.method private p()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->A:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .registers 7

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->H:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    array-length v2, v0

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    if-ge v1, v2, :cond_16

    aget-object v3, v0, v1

    if-eqz v3, :cond_13

    iget-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-ne v4, p1, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->o()V

    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    iget-object p1, p0, Landroid/support/v7/app/n;->d:Landroid/view/Window$Callback;

    instance-of v0, p1, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_f

    check-cast p1, Landroid/view/LayoutInflater$Factory;

    invoke-interface {p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lb/b/d/d/b$a;)Lb/b/d/d/b;
    .registers 9

    if-eqz p1, :cond_19b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lb/b/d/d/b;->a()V

    :cond_9
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$c;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$c;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Lb/b/d/d/b$a;)V

    invoke-virtual {p0}, Landroid/support/v7/app/n;->j()V

    iget-object p1, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    if-eqz p1, :cond_26

    invoke-virtual {p1, v0}, Landroid/support/v7/app/a;->a(Lb/b/d/d/b$a;)Lb/b/d/d/b;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    if-eqz p1, :cond_26

    iget-object v1, p0, Landroid/support/v7/app/n;->f:Landroid/support/v7/app/l;

    if-eqz v1, :cond_26

    invoke-interface {v1, p1}, Landroid/support/v7/app/l;->b(Lb/b/d/d/b;)V

    :cond_26
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    if-nez p1, :cond_198

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->m()V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lb/b/d/d/b;->a()V

    :cond_34
    iget-object p1, p0, Landroid/support/v7/app/n;->f:Landroid/support/v7/app/l;

    const/4 v1, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Landroid/support/v7/app/n;->k()Z

    move-result p1

    if-nez p1, :cond_46

    :try_start_3f
    iget-object p1, p0, Landroid/support/v7/app/n;->f:Landroid/support/v7/app/l;

    invoke-interface {p1, v0}, Landroid/support/v7/app/l;->a(Lb/b/d/d/b$a;)Lb/b/d/d/b;

    move-result-object p1
    :try_end_45
    .catch Ljava/lang/AbstractMethodError; {:try_start_3f .. :try_end_45} :catch_46

    goto :goto_47

    :catch_46
    :cond_46
    move-object p1, v1

    :goto_47
    if-eqz p1, :cond_4d

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    goto/16 :goto_189

    :cond_4d
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_fa

    iget-boolean p1, p0, Landroid/support/v7/app/n;->l:Z

    if-eqz p1, :cond_db

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lb/b/d/a/a;->actionBarTheme:I

    invoke-virtual {v4, v5, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_8c

    iget-object v5, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, Lb/b/d/d/d;

    iget-object v6, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-direct {v4, v6, v3}, Lb/b/d/d/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lb/b/d/d/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_8e

    :cond_8c
    iget-object v4, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    :goto_8e
    new-instance v5, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Lb/b/d/a/a;->actionModePopupWindowStyle:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/support/v4/widget/i;->a(Landroid/widget/PopupWindow;I)V

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lb/b/d/a/a;->actionBarSize:I

    invoke-virtual {v5, v6, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance p1, Landroid/support/v7/app/v;

    invoke-direct {p1, p0}, Landroid/support/v7/app/v;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->y:Ljava/lang/Runnable;

    goto :goto_fa

    :cond_db
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:Landroid/view/ViewGroup;

    sget v4, Lb/b/d/a/f;->action_mode_bar_stub:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ViewStubCompat;

    if-eqz p1, :cond_fa

    invoke-virtual {p0}, Landroid/support/v7/app/n;->g()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ActionBarContextView;

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    :cond_fa
    :goto_fa
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz p1, :cond_189

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->m()V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->c()V

    new-instance p1, Lb/b/d/d/e;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    if-nez v6, :cond_115

    goto :goto_116

    :cond_115
    const/4 v2, 0x0

    :goto_116
    invoke-direct {p1, v4, v5, v0, v2}, Lb/b/d/d/e;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Lb/b/d/d/b$a;Z)V

    invoke-virtual {p1}, Lb/b/d/d/e;->c()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9$c;->a(Lb/b/d/d/b;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_187

    invoke-virtual {p1}, Lb/b/d/d/e;->i()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->a(Lb/b/d/d/b;)V

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->n()Z

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_151

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {p1}, Landroid/support/v4/view/n;->a(Landroid/view/View;)Landroid/support/v4/view/q;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/q;->a(F)Landroid/support/v4/view/q;

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    new-instance v0, Landroid/support/v7/app/w;

    invoke-direct {v0, p0}, Landroid/support/v7/app/w;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/q;->a(Landroid/support/v4/view/r;)Landroid/support/v4/view/q;

    goto :goto_177

    :cond_151
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_177

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/n;->m(Landroid/view/View;)V

    :cond_177
    :goto_177
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_189

    iget-object p1, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->y:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_189

    :cond_187
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    :cond_189
    :goto_189
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    if-eqz p1, :cond_194

    iget-object v0, p0, Landroid/support/v7/app/n;->f:Landroid/support/v7/app/l;

    if-eqz v0, :cond_194

    invoke-interface {v0, p1}, Landroid/support/v7/app/l;->b(Lb/b/d/d/b;)V

    :cond_194
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    :cond_198
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    return-object p1

    :cond_19b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
    .registers 6

    if-nez p3, :cond_11

    if-nez p2, :cond_d

    if-ltz p1, :cond_d

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->H:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    array-length v1, v0

    if-ge p1, v1, :cond_d

    aget-object p2, v0, p1

    :cond_d
    if-eqz p2, :cond_11

    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    :cond_11
    if-eqz p2, :cond_18

    iget-boolean p2, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-nez p2, :cond_18

    return-void

    :cond_18
    invoke-virtual {p0}, Landroid/support/v7/app/n;->k()Z

    move-result p2

    if-nez p2, :cond_23

    iget-object p2, p0, Landroid/support/v7/app/n;->d:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_23
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/app/n;->i:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->A:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/support/v7/app/n;->j()V

    iget-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(Landroid/content/res/Configuration;)V

    :cond_12
    invoke-static {}, Landroid/support/v7/widget/j;->a()Landroid/support/v7/widget/j;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/j;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Z

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v7/app/n;->d:Landroid/view/Window$Callback;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_25

    check-cast p1, Landroid/app/Activity;

    :try_start_8
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, La/a/g;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_10} :catch_1e

    if-eqz p1, :cond_25

    iget-object p1, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->N:Z

    goto :goto_25

    :cond_1a
    invoke-virtual {p1, v0}, Landroid/support/v7/app/a;->b(Z)V

    goto :goto_25

    :catch_1e
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_25
    :goto_25
    return-void
.end method

.method a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    .registers 6

    if-eqz p2, :cond_16

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/support/v7/widget/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/view/menu/h;)V

    return-void

    :cond_16
    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-eqz v2, :cond_35

    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v2, :cond_35

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_35

    iget p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    invoke-virtual {p0, p2, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    :cond_35
    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->n:Z

    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    iput-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->h:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->q:Z

    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->I:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-ne p2, p1, :cond_47

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->I:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    :cond_47
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)V
    .registers 7

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_83

    invoke-interface {p1}, Landroid/support/v7/widget/c0;->g()Z

    move-result p1

    if-eqz p1, :cond_83

    iget-object p1, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    invoke-interface {p1}, Landroid/support/v7/widget/c0;->d()Z

    move-result p1

    if-eqz p1, :cond_83

    :cond_20
    invoke-virtual {p0}, Landroid/support/v7/app/n;->i()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    invoke-interface {v2}, Landroid/support/v7/widget/c0;->a()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_43

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    invoke-interface {v0}, Landroid/support/v7/widget/c0;->e()Z

    invoke-virtual {p0}, Landroid/support/v7/app/n;->k()Z

    move-result v0

    if-nez v0, :cond_90

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_90

    :cond_43
    if-eqz p1, :cond_90

    invoke-virtual {p0}, Landroid/support/v7/app/n;->k()Z

    move-result v2

    if-nez v2, :cond_90

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->K:Z

    if-eqz v2, :cond_64

    iget v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->L:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->M:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_64
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-eqz v2, :cond_90

    iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->r:Z

    if-nez v4, :cond_90

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->i:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    invoke-interface {p1}, Landroid/support/v7/widget/c0;->f()Z

    goto :goto_90

    :cond_83
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object p1

    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->q:Z

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    :cond_90
    :goto_90
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->o()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v7/app/n;->d:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->o()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroid/support/v7/app/n;->d:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/support/v7/app/n;->j()V

    iget-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/a;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    return v1

    :cond_f
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->I:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz p1, :cond_24

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->I:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz p1, :cond_23

    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->n:Z

    :cond_23
    return v1

    :cond_24
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->I:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    const/4 v0, 0x0

    if-nez p1, :cond_3d

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, p1, v2, p2, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p2

    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    if-eqz p2, :cond_3d

    return v1

    :cond_3d
    return v0
.end method

.method a(ILandroid/view/Menu;)Z
    .registers 3

    const/16 p2, 0x6c

    if-ne p1, p2, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/app/n;->j()V

    iget-object p1, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    const/4 p2, 0x1

    if-eqz p1, :cond_f

    invoke-virtual {p1, p2}, Landroid/support/v7/app/a;->a(Z)V

    :cond_f
    return p2

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/support/v7/app/n;->i()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/support/v7/app/n;->k()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->i()Landroid/support/v7/view/menu/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget p1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method a(Landroid/view/KeyEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    const/4 v2, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/n;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v2

    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    const/4 v5, 0x4

    if-eqz v3, :cond_4a

    if-eq v0, v5, :cond_3b

    if-eq v0, v1, :cond_28

    goto :goto_47

    :cond_28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_100

    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-nez v1, :cond_100

    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    goto/16 :goto_100

    :cond_3b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    :goto_45
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->J:Z

    :cond_47
    :goto_47
    const/4 v2, 0x0

    goto/16 :goto_100

    :cond_4a
    if-eq v0, v5, :cond_d2

    if-eq v0, v1, :cond_4f

    goto :goto_47

    :cond_4f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    if-eqz v0, :cond_55

    goto/16 :goto_100

    :cond_55
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-eqz v1, :cond_91

    invoke-interface {v1}, Landroid/support/v7/widget/c0;->g()Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_91

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    invoke-interface {v1}, Landroid/support/v7/widget/c0;->a()Z

    move-result v1

    if-nez v1, :cond_8a

    invoke-virtual {p0}, Landroid/support/v7/app/n;->k()Z

    move-result v1

    if-nez v1, :cond_b1

    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_b1

    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    invoke-interface {p1}, Landroid/support/v7/widget/c0;->f()Z

    move-result p1

    goto :goto_b8

    :cond_8a
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    invoke-interface {p1}, Landroid/support/v7/widget/c0;->e()Z

    move-result p1

    goto :goto_b8

    :cond_91
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-nez v1, :cond_b3

    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->n:Z

    if-eqz v1, :cond_9a

    goto :goto_b3

    :cond_9a
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    if-eqz v1, :cond_b1

    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->r:Z

    if-eqz v1, :cond_a9

    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_aa

    :cond_a9
    const/4 v1, 0x1

    :goto_aa
    if-eqz v1, :cond_b1

    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_b8

    :cond_b1
    const/4 p1, 0x0

    goto :goto_b8

    :cond_b3
    :goto_b3
    iget-boolean p1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    :goto_b8
    if-eqz p1, :cond_100

    iget-object p1, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_ca

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_100

    :cond_ca
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    :cond_d2
    iget-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->J:Z

    iput-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->J:Z

    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_e6

    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-eqz v1, :cond_e6

    if-nez p1, :cond_100

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_100

    :cond_e6
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->v:Lb/b/d/d/b;

    if-eqz p1, :cond_ee

    invoke-virtual {p1}, Lb/b/d/d/b;->a()V

    goto :goto_fb

    :cond_ee
    invoke-virtual {p0}, Landroid/support/v7/app/n;->j()V

    iget-object p1, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    if-eqz p1, :cond_fd

    invoke-virtual {p1}, Landroid/support/v7/app/a;->a()Z

    move-result p1

    if-eqz p1, :cond_fd

    :goto_fb
    const/4 p1, 0x1

    goto :goto_fe

    :cond_fd
    const/4 p1, 0x0

    :goto_fe
    if-eqz p1, :cond_47

    :cond_100
    :goto_100
    return v2
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_10

    invoke-static {v0, p0}, Landroid/support/v4/view/c;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1f

    :cond_10
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;

    if-nez v0, :cond_1f

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method b(ILandroid/view/Menu;)V
    .registers 4

    const/4 p2, 0x0

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/app/n;->j()V

    iget-object p1, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    if-eqz p1, :cond_1d

    invoke-virtual {p1, p2}, Landroid/support/v7/app/a;->a(Z)V

    goto :goto_1d

    :cond_10
    if-nez p1, :cond_1d

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object p1

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->o:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->o()V

    return-void
.end method

.method b(Landroid/support/v7/view/menu/h;)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->G:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->G:Z

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    invoke-interface {v0}, Landroid/support/v7/widget/c0;->b()V

    invoke-virtual {p0}, Landroid/support/v7/app/n;->i()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/support/v7/app/n;->k()Z

    move-result v1

    if-nez v1, :cond_1e

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1e
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->G:Z

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->o()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroid/support/v7/app/n;->d:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Landroid/support/v7/widget/c0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_10
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public b(I)Z
    .registers 7

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_12

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_1d

    :cond_12
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1d

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    :cond_1d
    :goto_1d
    iget-boolean v0, p0, Landroid/support/v7/app/n;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    if-ne p1, v3, :cond_25

    return v1

    :cond_25
    iget-boolean v0, p0, Landroid/support/v7/app/n;->i:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_2e

    if-ne p1, v4, :cond_2e

    iput-boolean v1, p0, Landroid/support/v7/app/n;->i:Z

    :cond_2e
    if-eq p1, v4, :cond_63

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_57

    const/16 v0, 0xa

    if-eq p1, v0, :cond_51

    if-eq p1, v3, :cond_4b

    if-eq p1, v2, :cond_45

    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_45
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()V

    iput-boolean v4, p0, Landroid/support/v7/app/n;->j:Z

    return v4

    :cond_4b
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()V

    iput-boolean v4, p0, Landroid/support/v7/app/n;->i:Z

    return v4

    :cond_51
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()V

    iput-boolean v4, p0, Landroid/support/v7/app/n;->k:Z

    return v4

    :cond_57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()V

    iput-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->F:Z

    return v4

    :cond_5d
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()V

    iput-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->E:Z

    return v4

    :cond_63
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->p()V

    iput-boolean v4, p0, Landroid/support/v7/app/n;->m:Z

    return v4
.end method

.method public c()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/app/n;->j()V

    iget-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->g(I)V

    return-void
.end method

.method public c(I)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->o()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Landroid/support/v7/app/n;->d:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public d()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->K:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_f
    invoke-super {p0}, Landroid/support/v7/app/n;->d()V

    iget-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/support/v7/app/a;->d()V

    :cond_19
    return-void
.end method

.method d(I)V
    .registers 5

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_24

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/h;->b(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_1a

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->s:Landroid/os/Bundle;

    :cond_1a
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->p()V

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->clear()V

    :cond_24
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->r:Z

    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->q:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2f

    if-nez p1, :cond_40

    :cond_2f
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_40

    iput-boolean p1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->m:Z

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->b(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_40
    return-void
.end method

.method protected e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .registers 6

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->H:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v0, :cond_7

    array-length v1, v0

    if-gt v1, p1, :cond_15

    :cond_7
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v0, :cond_12

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->H:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v0, v1

    :cond_15
    aget-object v1, v0, p1

    if-nez v1, :cond_20

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    :cond_20
    return-object v1
.end method

.method f(I)I
    .registers 9

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_95

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->O:Landroid/graphics/Rect;

    if-nez v2, :cond_30

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->O:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->P:Landroid/graphics/Rect;

    :cond_30
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->O:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->P:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Landroid/support/v7/widget/f1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_42

    move v2, p1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_86

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->D:Landroid/view/View;

    if-nez v2, :cond_75

    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->D:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->D:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/n;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lb/b/d/a/c;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->D:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_84

    :cond_75
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_84

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->D:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_84
    :goto_84
    const/4 v2, 0x1

    goto :goto_87

    :cond_86
    const/4 v2, 0x0

    :goto_87
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->D:Landroid/view/View;

    if-eqz v4, :cond_8c

    goto :goto_8d

    :cond_8c
    const/4 v3, 0x0

    :goto_8d
    iget-boolean v4, p0, Landroid/support/v7/app/n;->k:Z

    if-nez v4, :cond_9f

    if-eqz v3, :cond_9f

    const/4 p1, 0x0

    goto :goto_9f

    :cond_95
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_9d

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v2, 0x0

    :goto_9e
    const/4 v3, 0x0

    :cond_9f
    :goto_9f
    if-eqz v2, :cond_a8

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->w:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a8

    :cond_a7
    const/4 v3, 0x0

    :cond_a8
    :goto_a8
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->D:Landroid/view/View;

    if-eqz v0, :cond_b4

    if-eqz v3, :cond_af

    goto :goto_b1

    :cond_af
    const/16 v1, 0x8

    :goto_b1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b4
    return p1
.end method

.method public f()V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/app/n;->j()V

    iget-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->c(Z)V

    :cond_b
    return-void
.end method

.method public j()V
    .registers 4

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->o()V

    iget-boolean v0, p0, Landroid/support/v7/app/n;->i:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_c

    goto :goto_34

    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/n;->d:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1e

    new-instance v1, Landroid/support/v7/app/c0;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/n;->j:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/c0;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    goto :goto_2b

    :cond_1e
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2b

    new-instance v1, Landroid/support/v7/app/c0;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/app/c0;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroid/support/v7/app/n;->g:Landroid/support/v7/app/a;

    if-eqz v0, :cond_34

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->N:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->b(Z)V

    :cond_34
    :goto_34
    return-void
.end method

.method l()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->s:Landroid/support/v7/widget/c0;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/support/v7/widget/c0;->b()V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    :try_start_1e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->x:Landroid/widget/PopupWindow;

    :cond_26
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->m()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->e(I)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Z)V

    :cond_38
    return-void
.end method

.method m()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->z:Landroid/support/v4/view/q;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/view/q;->a()V

    :cond_7
    return-void
.end method

.method final n()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->A:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->B:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroid/support/v4/view/n;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 16

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->Q:Landroid/support/v7/app/y;

    if-nez v0, :cond_12

    new-instance v0, Landroid/support/v7/app/y;

    invoke-direct {v0}, Landroid/support/v7/app/y;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->Q:Landroid/support/v7/app/y;

    :cond_12
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_4b

    goto :goto_34

    :cond_26
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    if-nez v0, :cond_2c

    goto :goto_4b

    :cond_2c
    iget-object v3, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :goto_32
    if-nez v0, :cond_36

    :goto_34
    const/4 v1, 0x1

    goto :goto_4b

    :cond_36
    if-eq v0, v3, :cond_4b

    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_4b

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/n;->j(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_46

    goto :goto_4b

    :cond_46
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_32

    :cond_4b
    :goto_4b
    move v7, v1

    goto :goto_4e

    :cond_4d
    const/4 v7, 0x0

    :goto_4e
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->Q:Landroid/support/v7/app/y;

    sget-boolean v8, Landroid/support/v7/app/AppCompatDelegateImplV9;->R:Z

    const/4 v9, 0x1

    invoke-static {}, Landroid/support/v7/widget/e1;->a()Z

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v10}, Landroid/support/v7/app/y;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
