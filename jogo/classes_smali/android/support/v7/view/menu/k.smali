.class public final Landroid/support/v7/view/menu/k;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lb/b/c/b/a/b;


# static fields
.field private static F:Ljava/lang/String;

.field private static G:Ljava/lang/String;

.field private static H:Ljava/lang/String;

.field private static I:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/support/v4/view/b;

.field private C:Landroid/view/MenuItem$OnActionExpandListener;

.field private D:Z

.field private E:Landroid/view/ContextMenu$ContextMenuInfo;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:I

.field private j:C

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field n:Landroid/support/v7/view/menu/h;

.field private o:Landroid/support/v7/view/menu/v;

.field private p:Ljava/lang/Runnable;

.field private q:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private r:Ljava/lang/CharSequence;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/graphics/PorterDuff$Mode;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/h;IIIILjava/lang/CharSequence;I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Landroid/support/v7/view/menu/k;->i:I

    iput v0, p0, Landroid/support/v7/view/menu/k;->k:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/k;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/view/menu/k;->t:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/support/v7/view/menu/k;->u:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroid/support/v7/view/menu/k;->v:Z

    iput-boolean v0, p0, Landroid/support/v7/view/menu/k;->w:Z

    iput-boolean v0, p0, Landroid/support/v7/view/menu/k;->x:Z

    const/16 v1, 0x10

    iput v1, p0, Landroid/support/v7/view/menu/k;->y:I

    iput v0, p0, Landroid/support/v7/view/menu/k;->z:I

    iput-boolean v0, p0, Landroid/support/v7/view/menu/k;->D:Z

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    iput p3, p0, Landroid/support/v7/view/menu/k;->a:I

    iput p2, p0, Landroid/support/v7/view/menu/k;->b:I

    iput p4, p0, Landroid/support/v7/view/menu/k;->c:I

    iput p5, p0, Landroid/support/v7/view/menu/k;->d:I

    iput-object p6, p0, Landroid/support/v7/view/menu/k;->e:Ljava/lang/CharSequence;

    iput p7, p0, Landroid/support/v7/view/menu/k;->z:I

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-eqz p1, :cond_2b

    iget-boolean v0, p0, Landroid/support/v7/view/menu/k;->x:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Landroid/support/v7/view/menu/k;->v:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/v7/view/menu/k;->w:Z

    if-eqz v0, :cond_2b

    :cond_e
    invoke-static {p1}, Lb/b/c/a/h/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-boolean v0, p0, Landroid/support/v7/view/menu/k;->v:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->t:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lb/b/c/a/h/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1f
    iget-boolean v0, p0, Landroid/support/v7/view/menu/k;->w:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->u:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Lb/b/c/a/h/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/k;->x:Z

    :cond_2b
    return-object p1
.end method


# virtual methods
.method public a()Landroid/support/v4/view/b;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->B:Landroid/support/v4/view/b;

    return-object v0
.end method

.method public a(Landroid/support/v4/view/b;)Lb/b/c/b/a/b;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->B:Landroid/support/v4/view/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/view/b;->e()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->A:Landroid/view/View;

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->B:Landroid/support/v4/view/b;

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->B:Landroid/support/v4/view/b;

    if-eqz p1, :cond_1e

    new-instance v0, Landroid/support/v7/view/menu/k$a;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/k$a;-><init>(Landroid/support/v7/view/menu/k;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/b;->a(Landroid/support/v4/view/b$b;)V

    :cond_1e
    return-object p0
.end method

.method a(Landroid/support/v7/view/menu/q$a;)Ljava/lang/CharSequence;
    .registers 2

    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/support/v7/view/menu/q$a;->a()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_f

    :cond_d
    iget-object p1, p0, Landroid/support/v7/view/menu/k;->e:Ljava/lang/CharSequence;

    :goto_f
    return-object p1
.end method

.method public a(Landroid/support/v7/view/menu/v;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->o:Landroid/support/v7/view/menu/v;

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/v;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public a(Z)V
    .registers 3

    iput-boolean p1, p0, Landroid/support/v7/view/menu/k;->D:Z

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Landroid/support/v7/view/menu/k;->d:I

    return v0
.end method

.method b(Z)V
    .registers 5

    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    or-int/2addr p1, v1

    iput p1, p0, Landroid/support/v7/view/menu/k;->y:I

    iget p1, p0, Landroid/support/v7/view/menu/k;->y:I

    if-eq v0, p1, :cond_16

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1, v2}, Landroid/support/v7/view/menu/h;->b(Z)V

    :cond_16
    return-void
.end method

.method c()C
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-char v0, p0, Landroid/support/v7/view/menu/k;->j:C

    goto :goto_d

    :cond_b
    iget-char v0, p0, Landroid/support/v7/view/menu/k;->h:C

    :goto_d
    return v0
.end method

.method public c(Z)V
    .registers 3

    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/view/menu/k;->y:I

    return-void
.end method

.method public collapseActionView()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/view/menu/k;->z:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->A:Landroid/view/View;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->C:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_1a

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/k;)Z

    move-result v0

    return v0
.end method

.method d()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->c()C

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v7/view/menu/k;->F:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2c

    const/16 v2, 0xa

    if-eq v0, v2, :cond_26

    const/16 v2, 0x20

    if-eq v0, v2, :cond_20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_20
    sget-object v0, Landroid/support/v7/view/menu/k;->I:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_26
    sget-object v0, Landroid/support/v7/view/menu/k;->G:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_2c
    sget-object v0, Landroid/support/v7/view/menu/k;->H:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)V
    .registers 2

    if-eqz p1, :cond_9

    iget p1, p0, Landroid/support/v7/view/menu/k;->y:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/support/v7/view/menu/k;->y:I

    goto :goto_f

    :cond_9
    iget p1, p0, Landroid/support/v7/view/menu/k;->y:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/support/v7/view/menu/k;->y:I

    :goto_f
    return-void
.end method

.method public e()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/view/menu/k;->z:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->A:Landroid/view/View;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->B:Landroid/support/v4/view/b;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p0}, Landroid/support/v4/view/b;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->A:Landroid/view/View;

    :cond_15
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->A:Landroid/view/View;

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method e(Z)Z
    .registers 5

    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_b

    :cond_9
    const/16 p1, 0x8

    :goto_b
    or-int/2addr p1, v1

    iput p1, p0, Landroid/support/v7/view/menu/k;->y:I

    iget p1, p0, Landroid/support/v7/view/menu/k;->y:I

    if-eq v0, p1, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2
.end method

.method public expandActionView()Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->C:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_14

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/k;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 5

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v0, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->p:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_1d
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->g:Landroid/content/Intent;

    if-eqz v0, :cond_35

    :try_start_21
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/view/menu/k;->g:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_2c} :catch_2d

    return v1

    :catch_2d
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->B:Landroid/support/v4/view/b;

    if-eqz v0, :cond_44

    check-cast v0, Landroid/support/v7/view/menu/l$a;

    iget-object v0, v0, Landroid/support/v7/view/menu/l$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    if-eqz v0, :cond_44

    return v1

    :cond_44
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->A:Landroid/view/View;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->B:Landroid/support/v4/view/b;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p0}, Landroid/support/v4/view/b;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->A:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->A:Landroid/view/View;

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .registers 2

    iget v0, p0, Landroid/support/v7/view/menu/k;->k:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    iget-char v0, p0, Landroid/support/v7/view/menu/k;->j:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->r:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    iget v0, p0, Landroid/support/v7/view/menu/k;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/k;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_9
    iget v0, p0, Landroid/support/v7/view/menu/k;->m:I

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->e()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/view/menu/k;->m:I

    invoke-static {v0, v1}, Lb/b/d/b/a/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/view/menu/k;->m:I

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/k;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->t:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->u:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroid/support/v7/view/menu/k;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .registers 2

    iget v0, p0, Landroid/support/v7/view/menu/k;->i:I

    return v0
.end method

.method public getNumericShortcut()C
    .registers 2

    iget-char v0, p0, Landroid/support/v7/view/menu/k;->h:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    iget v0, p0, Landroid/support/v7/view/menu/k;->c:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->o:Landroid/support/v7/view/menu/v;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/support/v7/view/menu/k;->e:Ljava/lang/CharSequence;

    :goto_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_17

    if-eqz v0, :cond_17

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_17

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->s:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSubMenu()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->o:Landroid/support/v7/view/menu/v;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public i()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/view/menu/k;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isActionViewExpanded()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/view/menu/k;->D:Z

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isChecked()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isVisible()Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->B:Landroid/support/v4/view/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/support/v4/view/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->B:Landroid/support/v4/view/b;

    invoke-virtual {v0}, Landroid/support/v4/view/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1

    :cond_1d
    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1
.end method

.method public j()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/view/menu/k;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method k()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->c()C

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public l()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/view/menu/k;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 5

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->setActionView(Landroid/view/View;)Lb/b/c/b/a/b;

    return-object p0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->setActionView(Landroid/view/View;)Lb/b/c/b/a/b;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Lb/b/c/b/a/b;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->A:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->B:Landroid/support/v4/view/b;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget v0, p0, Landroid/support/v7/view/menu/k;->a:I

    if-lez v0, :cond_15

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_15
    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->m()V

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    iget-char v0, p0, Landroid/support/v7/view/menu/k;->j:C

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroid/support/v7/view/menu/k;->j:C

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    iget-char v0, p0, Landroid/support/v7/view/menu/k;->j:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Landroid/support/v7/view/menu/k;->k:I

    if-ne v0, p2, :cond_9

    return-object p0

    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroid/support/v7/view/menu/k;->j:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/k;->k:I

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Landroid/support/v7/view/menu/k;->y:I

    iget p1, p0, Landroid/support/v7/view/menu/k;->y:I

    if-eq v0, p1, :cond_11

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    :cond_11
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    iget v0, p0, Landroid/support/v7/view/menu/k;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;)V

    goto :goto_f

    :cond_c
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->b(Z)V

    :goto_f
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->r:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lb/b/c/b/a/b;
    .registers 3

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->r:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    if-eqz p1, :cond_9

    iget p1, p0, Landroid/support/v7/view/menu/k;->y:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/support/v7/view/menu/k;->y:I

    goto :goto_f

    :cond_9
    iget p1, p0, Landroid/support/v7/view/menu/k;->y:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/support/v7/view/menu/k;->y:I

    :goto_f
    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/k;->l:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroid/support/v7/view/menu/k;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/view/menu/k;->x:Z

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/k;->m:I

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/view/menu/k;->x:Z

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->t:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/view/menu/k;->v:Z

    iput-boolean p1, p0, Landroid/support/v7/view/menu/k;->x:Z

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->u:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/view/menu/k;->w:Z

    iput-boolean p1, p0, Landroid/support/v7/view/menu/k;->x:Z

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    iget-char v0, p0, Landroid/support/v7/view/menu/k;->h:C

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    iput-char p1, p0, Landroid/support/v7/view/menu/k;->h:C

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    iget-char v0, p0, Landroid/support/v7/view/menu/k;->h:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Landroid/support/v7/view/menu/k;->i:I

    if-ne v0, p2, :cond_9

    return-object p0

    :cond_9
    iput-char p1, p0, Landroid/support/v7/view/menu/k;->h:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/k;->i:I

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->C:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->q:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    iput-char p1, p0, Landroid/support/v7/view/menu/k;->h:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroid/support/v7/view/menu/k;->j:C

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 5

    iput-char p1, p0, Landroid/support/v7/view/menu/k;->h:C

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/k;->i:I

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroid/support/v7/view/menu/k;->j:C

    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/k;->k:I

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 4

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_13

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_13
    iput p1, p0, Landroid/support/v7/view/menu/k;->z:I

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->m()V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->setShowAsAction(I)V

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->e:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->b(Z)V

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->o:Landroid/support/v7/view/menu/v;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/v;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_f
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->s:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Lb/b/c/b/a/b;
    .registers 3

    iput-object p1, p0, Landroid/support/v7/view/menu/k;->s:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/k;->e(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroid/support/v7/view/menu/k;->n:Landroid/support/v7/view/menu/h;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->n()V

    :cond_b
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/k;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method
