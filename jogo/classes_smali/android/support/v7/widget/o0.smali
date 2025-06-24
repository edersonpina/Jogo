.class public Landroid/support/v7/widget/o0;
.super Landroid/support/v7/widget/l0;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroid/support/v7/widget/n0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/o0$a;
    }
.end annotation


# static fields
.field private static K:Ljava/lang/reflect/Method;


# instance fields
.field private J:Landroid/support/v7/widget/n0;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_13

    const-string v2, "setTouchModal"

    :try_start_c
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/o0;->K:Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_1a

    :catch_13
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/l0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroid/support/v7/widget/f0;
    .registers 4

    new-instance v0, Landroid/support/v7/widget/o0$a;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/o0$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/o0$a;->setHoverListener(Landroid/support/v7/widget/n0;)V

    return-object v0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/o0;->J:Landroid/support/v7/widget/n0;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/n0;->a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V

    :cond_7
    return-void
.end method

.method public a(Landroid/support/v7/widget/n0;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/o0;->J:Landroid/support/v7/widget/n0;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    :cond_d
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/o0;->J:Landroid/support/v7/widget/n0;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/n0;->b(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V

    :cond_7
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    :cond_d
    return-void
.end method

.method public c(Z)V
    .registers 6

    sget-object v0, Landroid/support/v7/widget/o0;->K:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    :try_start_4
    iget-object v1, p0, Landroid/support/v7/widget/l0;->F:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_1b

    :catch_14
    const-string p1, "MenuPopupWindow"

    const-string v0, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    return-void
.end method
