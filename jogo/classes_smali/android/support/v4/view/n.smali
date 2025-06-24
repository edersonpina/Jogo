.class public Landroid/support/v4/view/n;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/n$i;,
        Landroid/support/v4/view/n$h;,
        Landroid/support/v4/view/n$g;,
        Landroid/support/v4/view/n$f;,
        Landroid/support/v4/view/n$e;,
        Landroid/support/v4/view/n$d;,
        Landroid/support/v4/view/n$c;,
        Landroid/support/v4/view/n$b;,
        Landroid/support/v4/view/n$a;,
        Landroid/support/v4/view/n$j;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/n$j;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/n$i;

    invoke-direct {v0}, Landroid/support/v4/view/n$i;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    goto :goto_5d

    :cond_e
    const/16 v1, 0x18

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/view/n$h;

    invoke-direct {v0}, Landroid/support/v4/view/n$h;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    goto :goto_5d

    :cond_1a
    const/16 v1, 0x17

    if-lt v0, v1, :cond_26

    new-instance v0, Landroid/support/v4/view/n$g;

    invoke-direct {v0}, Landroid/support/v4/view/n$g;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    goto :goto_5d

    :cond_26
    const/16 v1, 0x15

    if-lt v0, v1, :cond_32

    new-instance v0, Landroid/support/v4/view/n$f;

    invoke-direct {v0}, Landroid/support/v4/view/n$f;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    goto :goto_5d

    :cond_32
    const/16 v1, 0x13

    if-lt v0, v1, :cond_3e

    new-instance v0, Landroid/support/v4/view/n$e;

    invoke-direct {v0}, Landroid/support/v4/view/n$e;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    goto :goto_5d

    :cond_3e
    const/16 v1, 0x12

    if-lt v0, v1, :cond_4a

    new-instance v0, Landroid/support/v4/view/n$d;

    invoke-direct {v0}, Landroid/support/v4/view/n$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    goto :goto_5d

    :cond_4a
    const/16 v1, 0x11

    if-lt v0, v1, :cond_56

    new-instance v0, Landroid/support/v4/view/n$c;

    invoke-direct {v0}, Landroid/support/v4/view/n$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    goto :goto_5d

    :cond_56
    new-instance v0, Landroid/support/v4/view/n$b;

    invoke-direct {v0}, Landroid/support/v4/view/n$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    :goto_5d
    return-void
.end method

.method public static a(Landroid/view/View;)Landroid/support/v4/view/q;
    .registers 3

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    iget-object v1, v0, Landroid/support/v4/view/n$j;->a:Ljava/util/WeakHashMap;

    if-nez v1, :cond_d

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, v0, Landroid/support/v4/view/n$j;->a:Ljava/util/WeakHashMap;

    :cond_d
    iget-object v1, v0, Landroid/support/v4/view/n$j;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/q;

    if-nez v1, :cond_21

    new-instance v1, Landroid/support/v4/view/q;

    invoke-direct {v1, p0}, Landroid/support/v4/view/q;-><init>(Landroid/view/View;)V

    iget-object v0, v0, Landroid/support/v4/view/n$j;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v1
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/u;)Landroid/support/v4/view/u;
    .registers 3

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;Landroid/support/v4/view/u;)Landroid/support/v4/view/u;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;F)V

    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .registers 4

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;II)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/k;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;Landroid/support/v4/view/k;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 5

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->a(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->c(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->d(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->f(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->g(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static i(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->h(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static j(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->i(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static k(Landroid/view/View;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->j(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static l(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->k(Landroid/view/View;)V

    return-void
.end method

.method public static m(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroid/support/v4/view/n;->a:Landroid/support/v4/view/n$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/n$j;->l(Landroid/view/View;)V

    return-void
.end method
