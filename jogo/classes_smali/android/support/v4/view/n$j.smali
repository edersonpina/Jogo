.class Landroid/support/v4/view/n$j;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# static fields
.field private static b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/n$j;->a:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/m;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/m;

    invoke-interface {p1}, Landroid/support/v4/view/m;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/u;)Landroid/support/v4/view/u;
    .registers 3

    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public a(Landroid/view/View;II)V
    .registers 4

    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 4

    instance-of v0, p1, Landroid/support/v4/view/m;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/v4/view/m;

    invoke-interface {p1, p2}, Landroid/support/v4/view/m;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    instance-of v0, p1, Landroid/support/v4/view/m;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/v4/view/m;

    invoke-interface {p1, p2}, Landroid/support/v4/view/m;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const p0, 0x0

    throw p0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .registers 3

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_6

    :cond_4
    iget-object p2, p2, Landroid/support/v4/view/a;->a:Landroid/view/View$AccessibilityDelegate;

    :goto_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/k;)V
    .registers 3

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    const p0, 0x0

    throw p0
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 5

    const p0, 0x0

    throw p0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Landroid/support/v4/view/n$j;->b:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/view/n$j;->b:Ljava/util/WeakHashMap;

    :cond_b
    sget-object v0, Landroid/support/v4/view/n$j;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/m;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/m;

    invoke-interface {p1}, Landroid/support/v4/view/m;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public c(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/view/View;)I
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public e(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/support/v4/view/n$j;->b:Ljava/util/WeakHashMap;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public f(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public g(Landroid/view/View;)Z
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public h(Landroid/view/View;)Z
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public i(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public j(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public k(Landroid/view/View;)V
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public l(Landroid/view/View;)V
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public m(Landroid/view/View;)V
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/f;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/v4/view/f;

    invoke-interface {p1}, Landroid/support/v4/view/f;->stopNestedScroll()V

    :cond_9
    return-void
.end method
