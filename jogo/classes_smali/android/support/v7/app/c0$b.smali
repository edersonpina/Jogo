.class Landroid/support/v7/app/c0$b;
.super Landroid/support/v4/view/s;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/c0;


# direct methods
.method constructor <init>(Landroid/support/v7/app/c0;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/c0$b;->a:Landroid/support/v7/app/c0;

    invoke-direct {p0}, Landroid/support/v4/view/s;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v7/app/c0$b;->a:Landroid/support/v7/app/c0;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/app/c0;->v:Lb/b/d/d/h;

    iget-object p1, p1, Landroid/support/v7/app/c0;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
