.class Landroid/support/v4/view/n$g;
.super Landroid/support/v4/view/n$f;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/n$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setScrollIndicators(II)V

    return-void
.end method
