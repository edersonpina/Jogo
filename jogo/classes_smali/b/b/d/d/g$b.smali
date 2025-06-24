.class Lb/b/d/d/g$b;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/d/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field A:Landroid/support/v4/view/b;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Landroid/content/res/ColorStateList;

.field private E:Landroid/graphics/PorterDuff$Mode;

.field final synthetic F:Lb/b/d/d/g;

.field private a:Landroid/view/Menu;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:I

.field private n:C

.field private o:I

.field private p:C

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/b/d/d/g;Landroid/view/Menu;)V
    .registers 3

    iput-object p1, p0, Lb/b/d/d/g$b;->F:Lb/b/d/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/d/d/g$b;->D:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lb/b/d/d/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lb/b/d/d/g$b;->a:Landroid/view/Menu;

    invoke-virtual {p0}, Lb/b/d/d/g$b;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lb/b/d/d/g$b;->F:Lb/b/d/d/g;

    iget-object v0, v0, Lb/b/d/d/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/view/MenuItem;)V
    .registers 7

    iget-boolean v0, p0, Lb/b/d/d/g$b;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lb/b/d/d/g$b;->t:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lb/b/d/d/g$b;->u:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lb/b/d/d/g$b;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lb/b/d/d/g$b;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lb/b/d/d/g$b;->m:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, Lb/b/d/d/g$b;->v:I

    if-ltz v0, :cond_31

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_31
    iget-object v0, p0, Lb/b/d/d/g$b;->z:Ljava/lang/String;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lb/b/d/d/g$b;->F:Lb/b/d/d/g;

    iget-object v0, v0, Lb/b/d/d/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Lb/b/d/d/g$a;

    iget-object v1, p0, Lb/b/d/d/g$b;->F:Lb/b/d/d/g;

    invoke-virtual {v1}, Lb/b/d/d/g;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lb/b/d/d/g$b;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lb/b/d/d/g$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_58

    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    :goto_58
    instance-of v0, p1, Landroid/support/v7/view/menu/k;

    if-eqz v0, :cond_5f

    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/k;

    :cond_5f
    iget v1, p0, Lb/b/d/d/g$b;->r:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_77

    if-eqz v0, :cond_6d

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/k;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/k;->c(Z)V

    goto :goto_77

    :cond_6d
    instance-of v0, p1, Landroid/support/v7/view/menu/l;

    if-eqz v0, :cond_77

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/l;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/l;->a(Z)V

    :cond_77
    :goto_77
    iget-object v0, p0, Lb/b/d/d/g$b;->x:Ljava/lang/String;

    if-eqz v0, :cond_8b

    sget-object v1, Lb/b/d/d/g;->e:[Ljava/lang/Class;

    iget-object v2, p0, Lb/b/d/d/g$b;->F:Lb/b/d/d/g;

    iget-object v2, v2, Lb/b/d/d/g;->a:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lb/b/d/d/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    :cond_8b
    iget v0, p0, Lb/b/d/d/g$b;->w:I

    if-lez v0, :cond_9c

    if-nez v2, :cond_95

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_9c

    :cond_95
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    :goto_9c
    iget-object v0, p0, Lb/b/d/d/g$b;->A:Landroid/support/v4/view/b;

    if-eqz v0, :cond_a3

    invoke-static {p1, v0}, Landroid/support/v4/view/d;->a(Landroid/view/MenuItem;Landroid/support/v4/view/b;)Landroid/view/MenuItem;

    :cond_a3
    iget-object v0, p0, Lb/b/d/d/g$b;->B:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/support/v4/view/d;->a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lb/b/d/d/g$b;->C:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/support/v4/view/d;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-char v0, p0, Lb/b/d/d/g$b;->n:C

    iget v1, p0, Lb/b/d/d/g$b;->o:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/d;->a(Landroid/view/MenuItem;CI)V

    iget-char v0, p0, Lb/b/d/d/g$b;->p:C

    iget v1, p0, Lb/b/d/d/g$b;->q:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/d;->b(Landroid/view/MenuItem;CI)V

    iget-object v0, p0, Lb/b/d/d/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_c2

    invoke-static {p1, v0}, Landroid/support/v4/view/d;->a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :cond_c2
    iget-object v0, p0, Lb/b/d/d/g$b;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c9

    invoke-static {p1, v0}, Landroid/support/v4/view/d;->a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_c9
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/d/d/g$b;->h:Z

    iget-object v0, p0, Lb/b/d/d/g$b;->a:Landroid/view/Menu;

    iget v1, p0, Lb/b/d/d/g$b;->b:I

    iget v2, p0, Lb/b/d/d/g$b;->i:I

    iget v3, p0, Lb/b/d/d/g$b;->j:I

    iget-object v4, p0, Lb/b/d/d/g$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/b/d/d/g$b;->a(Landroid/view/MenuItem;)V

    return-void
.end method

.method public a(Landroid/util/AttributeSet;)V
    .registers 4

    iget-object v0, p0, Lb/b/d/d/g$b;->F:Lb/b/d/d/g;

    iget-object v0, v0, Lb/b/d/d/g;->c:Landroid/content/Context;

    sget-object v1, Lb/b/d/a/j;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lb/b/d/a/j;->MenuGroup_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lb/b/d/d/g$b;->b:I

    sget v0, Lb/b/d/a/j;->MenuGroup_android_menuCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/b/d/d/g$b;->c:I

    sget v0, Lb/b/d/a/j;->MenuGroup_android_orderInCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/b/d/d/g$b;->d:I

    sget v0, Lb/b/d/a/j;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/b/d/d/g$b;->e:I

    sget v0, Lb/b/d/a/j;->MenuGroup_android_visible:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lb/b/d/d/g$b;->f:Z

    sget v0, Lb/b/d/a/j;->MenuGroup_android_enabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lb/b/d/d/g$b;->g:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public b()Landroid/view/SubMenu;
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/d/d/g$b;->h:Z

    iget-object v0, p0, Lb/b/d/d/g$b;->a:Landroid/view/Menu;

    iget v1, p0, Lb/b/d/d/g$b;->b:I

    iget v2, p0, Lb/b/d/d/g$b;->i:I

    iget v3, p0, Lb/b/d/d/g$b;->j:I

    iget-object v4, p0, Lb/b/d/d/g$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/b/d/d/g$b;->a(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public b(Landroid/util/AttributeSet;)V
    .registers 8

    iget-object v0, p0, Lb/b/d/d/g$b;->F:Lb/b/d/d/g;

    iget-object v0, v0, Lb/b/d/d/g;->c:Landroid/content/Context;

    sget-object v1, Lb/b/d/a/j;->MenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lb/b/d/a/j;->MenuItem_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lb/b/d/d/g$b;->i:I

    sget v0, Lb/b/d/a/j;->MenuItem_android_menuCategory:I

    iget v2, p0, Lb/b/d/d/g$b;->c:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v2, Lb/b/d/a/j;->MenuItem_android_orderInCategory:I

    iget v3, p0, Lb/b/d/d/g$b;->d:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    iput v0, p0, Lb/b/d/d/g$b;->j:I

    sget v0, Lb/b/d/a/j;->MenuItem_android_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lb/b/d/d/g$b;->k:Ljava/lang/CharSequence;

    sget v0, Lb/b/d/a/j;->MenuItem_android_titleCondensed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lb/b/d/d/g$b;->l:Ljava/lang/CharSequence;

    sget v0, Lb/b/d/a/j;->MenuItem_android_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lb/b/d/d/g$b;->m:I

    sget v0, Lb/b/d/a/j;->MenuItem_android_alphabeticShortcut:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4f

    const/4 v0, 0x0

    goto :goto_53

    :cond_4f
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_53
    iput-char v0, p0, Lb/b/d/d/g$b;->n:C

    sget v0, Lb/b/d/a/j;->MenuItem_alphabeticModifiers:I

    const/16 v2, 0x1000

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/b/d/d/g$b;->o:I

    sget v0, Lb/b/d/a/j;->MenuItem_android_numericShortcut:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_69

    const/4 v0, 0x0

    goto :goto_6d

    :cond_69
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_6d
    iput-char v0, p0, Lb/b/d/d/g$b;->p:C

    sget v0, Lb/b/d/a/j;->MenuItem_numericModifiers:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/b/d/d/g$b;->q:I

    sget v0, Lb/b/d/a/j;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_88

    sget v0, Lb/b/d/a/j;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput v0, p0, Lb/b/d/d/g$b;->r:I

    goto :goto_8c

    :cond_88
    iget v0, p0, Lb/b/d/d/g$b;->e:I

    iput v0, p0, Lb/b/d/d/g$b;->r:I

    :goto_8c
    sget v0, Lb/b/d/a/j;->MenuItem_android_checked:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lb/b/d/d/g$b;->s:Z

    sget v0, Lb/b/d/a/j;->MenuItem_android_visible:I

    iget-boolean v2, p0, Lb/b/d/d/g$b;->f:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lb/b/d/d/g$b;->t:Z

    sget v0, Lb/b/d/a/j;->MenuItem_android_enabled:I

    iget-boolean v2, p0, Lb/b/d/d/g$b;->g:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lb/b/d/d/g$b;->u:Z

    sget v0, Lb/b/d/a/j;->MenuItem_showAsAction:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/b/d/d/g$b;->v:I

    sget v0, Lb/b/d/a/j;->MenuItem_android_onClick:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/b/d/d/g$b;->z:Ljava/lang/String;

    sget v0, Lb/b/d/a/j;->MenuItem_actionLayout:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lb/b/d/d/g$b;->w:I

    sget v0, Lb/b/d/a/j;->MenuItem_actionViewClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/b/d/d/g$b;->x:Ljava/lang/String;

    sget v0, Lb/b/d/a/j;->MenuItem_actionProviderClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/b/d/d/g$b;->y:Ljava/lang/String;

    iget-object v0, p0, Lb/b/d/d/g$b;->y:Ljava/lang/String;

    if-eqz v0, :cond_d7

    const/4 v0, 0x1

    goto :goto_d8

    :cond_d7
    const/4 v0, 0x0

    :goto_d8
    const/4 v3, 0x0

    if-eqz v0, :cond_f4

    iget v4, p0, Lb/b/d/d/g$b;->w:I

    if-nez v4, :cond_f4

    iget-object v4, p0, Lb/b/d/d/g$b;->x:Ljava/lang/String;

    if-nez v4, :cond_f4

    iget-object v0, p0, Lb/b/d/d/g$b;->y:Ljava/lang/String;

    sget-object v4, Lb/b/d/d/g;->f:[Ljava/lang/Class;

    iget-object v5, p0, Lb/b/d/d/g$b;->F:Lb/b/d/d/g;

    iget-object v5, v5, Lb/b/d/d/g;->b:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4, v5}, Lb/b/d/d/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/b;

    iput-object v0, p0, Lb/b/d/d/g$b;->A:Landroid/support/v4/view/b;

    goto :goto_ff

    :cond_f4
    if-eqz v0, :cond_fd

    const-string v0, "SupportMenuInflater"

    const-string v4, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    iput-object v3, p0, Lb/b/d/d/g$b;->A:Landroid/support/v4/view/b;

    :goto_ff
    sget v0, Lb/b/d/a/j;->MenuItem_contentDescription:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lb/b/d/d/g$b;->B:Ljava/lang/CharSequence;

    sget v0, Lb/b/d/a/j;->MenuItem_tooltipText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lb/b/d/d/g$b;->C:Ljava/lang/CharSequence;

    sget v0, Lb/b/d/a/j;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_126

    sget v0, Lb/b/d/a/j;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Lb/b/d/d/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroid/support/v7/widget/e0;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lb/b/d/d/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    goto :goto_128

    :cond_126
    iput-object v3, p0, Lb/b/d/d/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    :goto_128
    sget v0, Lb/b/d/a/j;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_139

    sget v0, Lb/b/d/a/j;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lb/b/d/d/g$b;->D:Landroid/content/res/ColorStateList;

    goto :goto_13b

    :cond_139
    iput-object v3, p0, Lb/b/d/d/g$b;->D:Landroid/content/res/ColorStateList;

    :goto_13b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v1, p0, Lb/b/d/d/g$b;->h:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/d/d/g$b;->h:Z

    return v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lb/b/d/d/g$b;->b:I

    iput v0, p0, Lb/b/d/d/g$b;->c:I

    iput v0, p0, Lb/b/d/d/g$b;->d:I

    iput v0, p0, Lb/b/d/d/g$b;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/d/d/g$b;->f:Z

    iput-boolean v0, p0, Lb/b/d/d/g$b;->g:Z

    return-void
.end method
