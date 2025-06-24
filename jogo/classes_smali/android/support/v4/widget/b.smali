.class public interface abstract Landroid/support/v4/widget/b;
.super Ljava/lang/Object;
.source "AutoSizeableTextView.java"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Landroid/support/v4/widget/b;->a:Z

    return-void
.end method
