.class public final Landroid/support/v4/view/o;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/o$b;,
        Landroid/support/v4/view/o$a;,
        Landroid/support/v4/view/o$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/o$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/o$b;

    invoke-direct {v0}, Landroid/support/v4/view/o$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$c;

    goto :goto_21

    :cond_e
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/view/o$a;

    invoke-direct {v0}, Landroid/support/v4/view/o$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$c;

    goto :goto_21

    :cond_1a
    new-instance v0, Landroid/support/v4/view/o$c;

    invoke-direct {v0}, Landroid/support/v4/view/o$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$c;

    :goto_21
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/o$c;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/o$c;->a(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method
