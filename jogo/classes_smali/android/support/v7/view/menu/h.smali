.class public Landroid/support/v7/view/menu/h;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Lb/b/c/b/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/h$b;,
        Landroid/support/v7/view/menu/h$a;
    }
.end annotation


# static fields
.field private static final z:[I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/Resources;

.field private c:Z

.field private d:Z

.field private e:Landroid/support/v7/view/menu/h$a;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I

.field private m:Landroid/view/ContextMenu$ContextMenuInfo;

.field n:Ljava/lang/CharSequence;

.field o:Landroid/graphics/drawable/Drawable;

.field p:Landroid/view/View;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/view/menu/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private x:Landroid/support/v7/view/menu/k;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v7/view/menu/h;->z:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/h;->l:I

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->q:Z

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->r:Z

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->s:Z

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->t:Z

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->u:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/h;->v:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Landroid/support/v7/view/menu/h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/h;->b:Landroid/content/res/Resources;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/h;->g:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/view/menu/h;->h:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/h;->i:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/h;->j:Ljava/util/ArrayList;

    iput-boolean p1, p0, Landroid/support/v7/view/menu/h;->k:Z

    iget-object v1, p0, Landroid/support/v7/view/menu/h;->b:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, p1, :cond_5c

    iget-object v1, p0, Landroid/support/v7/view/menu/h;->b:Landroid/content/res/Resources;

    sget v2, Lb/b/d/a/b;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 p1, 0x0

    :goto_5d
    iput-boolean p1, p0, Landroid/support/v7/view/menu/h;->d:Z

    return-void
.end method

.method private a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->b:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz p5, :cond_c

    iput-object p5, p0, Landroid/support/v7/view/menu/h;->p:Landroid/view/View;

    iput-object v1, p0, Landroid/support/v7/view/menu/h;->n:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/support/v7/view/menu/h;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_2a

    :cond_c
    if-lez p1, :cond_15

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/h;->n:Ljava/lang/CharSequence;

    goto :goto_19

    :cond_15
    if-eqz p2, :cond_19

    iput-object p2, p0, Landroid/support/v7/view/menu/h;->n:Ljava/lang/CharSequence;

    :cond_19
    :goto_19
    if-lez p3, :cond_24

    iget-object p1, p0, Landroid/support/v7/view/menu/h;->a:Landroid/content/Context;

    invoke-static {p1, p3}, Landroid/support/v4/content/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/h;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_28

    :cond_24
    if-eqz p4, :cond_28

    iput-object p4, p0, Landroid/support/v7/view/menu/h;->o:Landroid/graphics/drawable/Drawable;

    :cond_28
    :goto_28
    iput-object v1, p0, Landroid/support/v7/view/menu/h;->p:Landroid/view/View;

    :goto_2a
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-void
.end method

.method private a(IZ)V
    .registers 4

    if-ltz p1, :cond_16

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_16

    :cond_b
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_16

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->b(Z)V

    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v7/view/menu/h;
    .registers 2

    iput p1, p0, Landroid/support/v7/view/menu/h;->l:I

    return-object p0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/h;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/h;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected a(Landroid/view/View;)Landroid/support/v7/view/menu/h;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/h;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected a(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/h;
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/h;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method a(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/k;
    .registers 14

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/view/menu/h;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    return-object v2

    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_2b

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/k;

    return-object p1

    :cond_2b
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->k()Z

    move-result v4

    const/4 v6, 0x0

    :goto_30
    if-ge v6, p2, :cond_66

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/k;

    if-eqz v4, :cond_3f

    invoke-virtual {v7}, Landroid/support/v7/view/menu/k;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_43

    :cond_3f
    invoke-virtual {v7}, Landroid/support/v7/view/menu/k;->getNumericShortcut()C

    move-result v8

    :goto_43
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v5

    if-ne v8, v9, :cond_4d

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_62

    :cond_4d
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v8, v9, :cond_58

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_62

    :cond_58
    if-eqz v4, :cond_63

    const/16 v9, 0x8

    if-ne v8, v9, :cond_63

    const/16 v8, 0x43

    if-ne p1, v8, :cond_63

    :cond_62
    return-object v7

    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_66
    return-object v2
.end method

.method protected a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 15

    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_4b

    sget-object v1, Landroid/support/v7/view/menu/h;->z:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4b

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    iget v9, p0, Landroid/support/v7/view/menu/h;->l:I

    new-instance v1, Landroid/support/v7/view/menu/k;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, v0

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Landroid/support/v7/view/menu/k;-><init>(Landroid/support/v7/view/menu/h;IIIILjava/lang/CharSequence;I)V

    iget-object p1, p0, Landroid/support/v7/view/menu/h;->m:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p1, :cond_2a

    invoke-virtual {v1, p1}, Landroid/support/v7/view/menu/k;->a(Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_2a
    iget-object p1, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_30
    add-int/lit8 p2, p2, -0x1

    const/4 p3, 0x1

    if-ltz p2, :cond_43

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/support/v7/view/menu/k;

    invoke-virtual {p4}, Landroid/support/v7/view/menu/k;->b()I

    move-result p4

    if-gt p4, v0, :cond_30

    add-int/2addr p2, p3

    goto :goto_44

    :cond_43
    const/4 p2, 0x0

    :goto_44
    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p3}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object v1

    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "order does not contain a valid category."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_54

    :goto_53
    throw p1

    :goto_54
    goto :goto_53
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->e:Landroid/support/v7/view/menu/h$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Landroid/support/v7/view/menu/h$a;->a(Landroid/support/v7/view/menu/h;)V

    :cond_7
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_38

    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_26

    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_26
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/v;

    invoke-virtual {v3, p1}, Landroid/support/v7/view/menu/h;->a(Landroid/os/Bundle;)V

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_38
    const-string v0, "android:menu:expandedactionview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_49

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_49

    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_49
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h$a;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/h;->e:Landroid/support/v7/view/menu/h$a;

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->a:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/p;Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p;Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p2, p0}, Landroid/support/v7/view/menu/p;->a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/view/menu/h;->k:Z

    return-void
.end method

.method a(Landroid/view/MenuItem;)V
    .registers 8

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->p()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_38

    iget-object v4, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/k;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v5

    if-ne v5, v0, :cond_35

    invoke-virtual {v4}, Landroid/support/v7/view/menu/k;->h()Z

    move-result v5

    if-nez v5, :cond_26

    goto :goto_35

    :cond_26
    invoke-virtual {v4}, Landroid/support/v7/view/menu/k;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_35

    :cond_2d
    if-ne v4, p1, :cond_31

    const/4 v5, 0x1

    goto :goto_32

    :cond_31
    const/4 v5, 0x0

    :goto_32
    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/k;->b(Z)V

    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_38
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->o()V

    return-void
.end method

.method a(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/view/menu/k;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->k()Z

    move-result v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v1

    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    const/16 v4, 0x43

    if-nez v3, :cond_18

    if-eq p2, v4, :cond_18

    return-void

    :cond_18
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v3, :cond_7d

    iget-object v7, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/k;

    invoke-virtual {v7}, Landroid/support/v7/view/menu/k;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-virtual {v7}, Landroid/support/v7/view/menu/k;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/h;

    invoke-virtual {v8, p1, p2, p3}, Landroid/support/v7/view/menu/h;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_39
    if-eqz v0, :cond_40

    invoke-virtual {v7}, Landroid/support/v7/view/menu/k;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_44

    :cond_40
    invoke-virtual {v7}, Landroid/support/v7/view/menu/k;->getNumericShortcut()C

    move-result v8

    :goto_44
    if-eqz v0, :cond_4b

    invoke-virtual {v7}, Landroid/support/v7/view/menu/k;->getAlphabeticModifiers()I

    move-result v9

    goto :goto_4f

    :cond_4b
    invoke-virtual {v7}, Landroid/support/v7/view/menu/k;->getNumericModifiers()I

    move-result v9

    :goto_4f
    const v10, 0x1100f

    and-int v11, v1, v10

    and-int/2addr v9, v10

    if-ne v11, v9, :cond_59

    const/4 v9, 0x1

    goto :goto_5a

    :cond_59
    const/4 v9, 0x0

    :goto_5a
    if-eqz v9, :cond_7a

    if-eqz v8, :cond_7a

    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-eq v8, v10, :cond_71

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_71

    if-eqz v0, :cond_7a

    const/16 v9, 0x8

    if-ne v8, v9, :cond_7a

    if-ne p2, v4, :cond_7a

    :cond_71
    invoke-virtual {v7}, Landroid/support/v7/view/menu/k;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_7a

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7a
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_7d
    return-void
.end method

.method public final a(Z)V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->u:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->u:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/p;

    if-nez v2, :cond_28

    iget-object v2, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_28
    invoke-interface {v2, p0, p1}, Landroid/support/v7/view/menu/p;->a(Landroid/support/v7/view/menu/h;Z)V

    goto :goto_e

    :cond_2c
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/view/menu/h;->u:Z

    return-void
.end method

.method a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->e:Landroid/support/v7/view/menu/h$a;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/h$a;->a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public a(Landroid/support/v7/view/menu/k;)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->x:Landroid/support/v7/view/menu/k;

    if-eq v0, p1, :cond_e

    goto :goto_3f

    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->p()V

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/p;

    if-nez v3, :cond_31

    iget-object v3, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_31
    invoke-interface {v3, p0, p1}, Landroid/support/v7/view/menu/p;->b(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_37
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->o()V

    if-eqz v1, :cond_3f

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/view/menu/h;->x:Landroid/support/v7/view/menu/k;

    :cond_3f
    :goto_3f
    return v1
.end method

.method public a(Landroid/view/MenuItem;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/p;I)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/p;I)Z
    .registers 10

    check-cast p1, Landroid/support/v7/view/menu/k;

    const/4 v0, 0x0

    if-eqz p1, :cond_ad

    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_ad

    :cond_d
    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->f()Z

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->a()Landroid/support/v4/view/b;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/support/v4/view/b;->a()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->e()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_ac

    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/h;->a(Z)V

    goto/16 :goto_ac

    :cond_33
    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_44

    if-eqz v4, :cond_3c

    goto :goto_44

    :cond_3c
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_ac

    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/h;->a(Z)V

    goto :goto_ac

    :cond_44
    :goto_44
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_4b

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->a(Z)V

    :cond_4b
    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_5b

    new-instance p3, Landroid/support/v7/view/menu/v;

    iget-object v5, p0, Landroid/support/v7/view/menu/h;->a:Landroid/content/Context;

    invoke-direct {p3, v5, p0, p1}, Landroid/support/v7/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)V

    invoke-virtual {p1, p3}, Landroid/support/v7/view/menu/k;->a(Landroid/support/v7/view/menu/v;)V

    :cond_5b
    invoke-virtual {p1}, Landroid/support/v7/view/menu/k;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/v;

    if-eqz v4, :cond_70

    check-cast v2, Landroid/support/v7/view/menu/l$a;

    iget-object p3, v2, Landroid/support/v7/view/menu/l$a;->b:Landroid/view/ActionProvider;

    iget-object v2, v2, Landroid/support/v7/view/menu/l$a;->c:Landroid/support/v7/view/menu/l;

    invoke-virtual {v2, p1}, Landroid/support/v7/view/menu/c;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    :cond_70
    iget-object p3, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_79

    goto :goto_a6

    :cond_79
    if-eqz p2, :cond_7f

    invoke-interface {p2, p1}, Landroid/support/v7/view/menu/p;->a(Landroid/support/v7/view/menu/v;)Z

    move-result v0

    :cond_7f
    iget-object p2, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_85
    :goto_85
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/p;

    if-nez v2, :cond_9f

    iget-object v2, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_85

    :cond_9f
    if-nez v0, :cond_85

    invoke-interface {v2, p1}, Landroid/support/v7/view/menu/p;->a(Landroid/support/v7/view/menu/v;)Z

    move-result v0

    goto :goto_85

    :cond_a6
    :goto_a6
    or-int/2addr v1, v0

    if-nez v1, :cond_ac

    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/h;->a(Z)V

    :cond_ac
    :goto_ac
    return v1

    :cond_ad
    :goto_ad
    return v0
.end method

.method public add(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/h;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/h;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/h;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/h;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 16

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_12

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1a

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->removeGroup(I)V

    :cond_1a
    :goto_1a
    if-ge v1, v2, :cond_60

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2a

    move-object v4, p6

    goto :goto_2c

    :cond_2a
    aget-object v4, p5, v4

    :goto_2c
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Landroid/support/v7/view/menu/h;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_5d

    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_5d

    aput-object v3, p8, p7

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_60
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/h;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/h;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/h;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/k;

    new-instance p2, Landroid/support/v7/view/menu/v;

    iget-object p3, p0, Landroid/support/v7/view/menu/h;->a:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Landroid/support/v7/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/k;->a(Landroid/support/v7/view/menu/v;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/h;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method protected b(I)Landroid/support/v7/view/menu/h;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/h;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public b()V
    .registers 7

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/view/menu/h;->k:Z

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/p;

    if-nez v5, :cond_2b

    iget-object v5, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2b
    invoke-interface {v5}, Landroid/support/v7/view/menu/p;->b()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_11

    :cond_31
    if-eqz v3, :cond_5e

    iget-object v1, p0, Landroid/support/v7/view/menu/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/support/v7/view/menu/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_42
    if-ge v3, v1, :cond_71

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/k;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/k;->g()Z

    move-result v5

    if-eqz v5, :cond_56

    iget-object v5, p0, Landroid/support/v7/view/menu/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_56
    iget-object v5, p0, Landroid/support/v7/view/menu/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_5e
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_71
    iput-boolean v2, p0, Landroid/support/v7/view/menu/h;->k:Z

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 9

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_44

    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_32

    if-nez v1, :cond_20

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :cond_20
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const-string v5, "android:menu:expandedactionview"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_32
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/v;

    invoke-virtual {v3, p1}, Landroid/support/v7/view/menu/h;->b(Landroid/os/Bundle;)V

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_44
    if-eqz v1, :cond_4d

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4d
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/p;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/p;

    if-eqz v2, :cond_1c

    if-ne v2, p1, :cond_6

    :cond_1c
    iget-object v2, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_22
    return-void
.end method

.method public b(Z)V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->q:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3f

    if-eqz p1, :cond_b

    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->h:Z

    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->k:Z

    :cond_b
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_45

    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->p()V

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/p;

    if-nez v2, :cond_37

    iget-object v2, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_37
    invoke-interface {v2, p1}, Landroid/support/v7/view/menu/p;->a(Z)V

    goto :goto_1d

    :cond_3b
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->o()V

    goto :goto_45

    :cond_3f
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->r:Z

    if-eqz p1, :cond_45

    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->s:Z

    :cond_45
    :goto_45
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/k;)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->p()V

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/p;

    if-nez v3, :cond_2d

    iget-object v3, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2d
    invoke-interface {v3, p0, p1}, Landroid/support/v7/view/menu/p;->a(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_33
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->o()V

    if-eqz v1, :cond_3a

    iput-object p1, p0, Landroid/support/v7/view/menu/h;->x:Landroid/support/v7/view/menu/k;

    :cond_3a
    return v1
.end method

.method protected c(I)Landroid/support/v7/view/menu/h;
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/h;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public c()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->b()V

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/view/menu/h;->y:Z

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->x:Landroid/support/v7/view/menu/k;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/k;)Z

    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-void
.end method

.method public clearHeader()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/h;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v7/view/menu/h;->n:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v7/view/menu/h;->p:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->a(Z)V

    return-void
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method public f()Landroid/support/v7/view/menu/k;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->x:Landroid/support/v7/view/menu/k;

    return-object v0
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 6

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2a

    iget-object v2, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/k;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/k;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    return-object v2

    :cond_16
    invoke-virtual {v2}, Landroid/support/v7/view/menu/k;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v2}, Landroid/support/v7/view/menu/k;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_27

    return-object v2

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->b()V

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method h()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->t:Z

    return v0
.end method

.method public hasVisibleItems()Z
    .registers 6

    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_20

    iget-object v4, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/k;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/k;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_20
    return v2
.end method

.method public i()Landroid/support/v7/view/menu/h;
    .registers 1

    return-object p0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/h;->a(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/k;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public j()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->h:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->g:Ljava/util/ArrayList;

    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_2c

    iget-object v3, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/k;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Landroid/support/v7/view/menu/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2c
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->k:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method k()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->c:Z

    return v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->d:Z

    return v0
.end method

.method m()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->k:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-void
.end method

.method n()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->h:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-void
.end method

.method public o()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->q:Z

    iget-boolean v1, p0, Landroid/support/v7/view/menu/h;->r:Z

    if-eqz v1, :cond_e

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->r:Z

    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->s:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    :cond_e
    return-void
.end method

.method public p()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->q:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->r:Z

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->s:Z

    :cond_c
    return-void
.end method

.method public performIdentifierAction(II)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/h;->a(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/k;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/p;I)Z

    move-result p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_15

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/h;->a(Z)V

    :cond_15
    return p1
.end method

.method public removeGroup(I)V
    .registers 7

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1a

    iget-object v3, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/k;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_17

    goto :goto_1b

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    const/4 v2, -0x1

    :goto_1b
    if-ltz v2, :cond_40

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_25
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v0, :cond_3c

    iget-object v3, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/k;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_3c

    invoke-direct {p0, v2, v1}, Landroid/support/v7/view/menu/h;->a(IZ)V

    move v3, v4

    goto :goto_25

    :cond_3c
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->b(Z)V

    :cond_40
    return-void
.end method

.method public removeItem(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/k;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/k;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_16

    goto :goto_1a

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 v1, -0x1

    :goto_1a
    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Landroid/support/v7/view/menu/h;->a(IZ)V

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 8

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/k;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1d

    invoke-virtual {v2, p3}, Landroid/support/v7/view/menu/k;->c(Z)V

    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/k;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 7

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/k;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/k;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 9

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x1

    if-ge v1, v0, :cond_23

    iget-object v4, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/k;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_20

    invoke-virtual {v4, p2}, Landroid/support/v7/view/menu/k;->e(Z)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v2, 0x1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    if-eqz v2, :cond_28

    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/h;->b(Z)V

    :cond_28
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/view/menu/h;->c:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
