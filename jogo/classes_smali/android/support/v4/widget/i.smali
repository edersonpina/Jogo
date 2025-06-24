.class public final Landroid/support/v4/widget/i;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/i$c;,
        Landroid/support/v4/widget/i$b;,
        Landroid/support/v4/widget/i$a;,
        Landroid/support/v4/widget/i$d;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/i$d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/widget/i$c;

    invoke-direct {v0}, Landroid/support/v4/widget/i$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/i$d;

    goto :goto_2d

    :cond_e
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/widget/i$b;

    invoke-direct {v0}, Landroid/support/v4/widget/i$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/i$d;

    goto :goto_2d

    :cond_1a
    const/16 v1, 0x13

    if-lt v0, v1, :cond_26

    new-instance v0, Landroid/support/v4/widget/i$a;

    invoke-direct {v0}, Landroid/support/v4/widget/i$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/i$d;

    goto :goto_2d

    :cond_26
    new-instance v0, Landroid/support/v4/widget/i$d;

    invoke-direct {v0}, Landroid/support/v4/widget/i$d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/i$d;

    :goto_2d
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;I)V
    .registers 3

    sget-object v0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/i$d;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/i$d;->a(Landroid/widget/PopupWindow;I)V

    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 11

    sget-object v0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/i$d;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/i$d;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .registers 3

    sget-object v0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/i$d;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/i$d;->a(Landroid/widget/PopupWindow;Z)V

    return-void
.end method
